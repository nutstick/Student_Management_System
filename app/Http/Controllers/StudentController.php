<?php

namespace App\Http\Controllers;

use App\Student;
use App\BehaviorRecord;
use App\Enrollment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBreadController;

class StudentController extends VoyagerBreadController
{
    //***************************************
    //               ____
    //              |  _ \
    //              | |_) |
    //              |  _ <
    //              | |_) |
    //              |____/
    //
    //      Browse our Data Type (B)READ
    //
    //****************************************

    public function index(Request $request)
    {
        // GET THE SLUG, ex. 'posts', 'pages', etc.
        $slug = $this->getSlug($request);

        // GET THE DataType based on the slug
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        Voyager::canOrFail('browse_'.$dataType->name);

        $getter = $dataType->server_side ? 'paginate' : 'get';

        // Next Get or Paginate the actual content from the MODEL that corresponds to the slug DataType
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);

            $relationships = $this->getRelationships($dataType);

            Log::info('Showing user profile for user: '.$model->timestamps);
            if ($model->timestamps) {
                $dataTypeContent = call_user_func([$model->with($relationships)->latest(), $getter]);
            } else {
                $query = $model->with($relationships);
                if (Auth::user()->role_id == 3) {
                    $query = $query
                        ->join('teachers', 'teachers.id', '=', 'students.TID')
                        ->where('teachers.user', '=', Auth::id());
                } else if (Auth::user()->role_id == 4) {
                    $query = $query
                        ->join('managers', 'managers.Dname', '=', 'students.Dname')
                        ->where('managers.user', '=', Auth::id());
                }
                $dataTypeContent = call_user_func([$query->orderBy('SID', 'DESC'), $getter]);
            }

            //Replace relationships' keys for labels and create READ links if a slug is provided.
            $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType);
        } else {
            // If Model doesn't exist, get data from table name
            $dataTypeContent = call_user_func([DB::table($dataType->name), $getter]);
        }

        // Check if BREAD is Translatable
        $isModelTranslatable = isBreadTranslatable($model);

        $view = 'students.browse';

        return view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
    }

    //***************************************
    //                _____
    //               |  __ \
    //               | |__) |
    //               |  _  /
    //               | | \ \
    //               |_|  \_\
    //
    //  Read an item of our Data Type B(R)EAD
    //
    //****************************************

    public function show(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        Voyager::canOrFail('read_'.$dataType->name);

        $relationships = $this->getRelationships($dataType);
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);
            $dataTypeContent = call_user_func([$model->with($relationships), 'findOrFail'], $id);
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('SID', $id)->first();
        }

        //Replace relationships' keys for labels and create READ links if a slug is provided.
        $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType, true);

        $gpa = DB::select("SELECT
                SUM(CGPX) AS GPX,
                SUM(CGPX) / SUM(s.Ccredit) AS GPAX, SUM(s.Ccredit) AS CAX
            FROM (
                SELECT ( AVG(student_enroll_in_section.grade) * courses.Ccredit ) AS CGPX,
                    students.*, courses.Ccredit, courses.CID
                FROM `student_enroll_in_section`
                JOIN students ON student_enroll_in_section.SID = students.SID
                JOIN sections ON student_enroll_in_section.section_id = sections.id
                JOIN courses ON sections.CID = courses.CID
                WHERE student_enroll_in_section.SID = $id
                GROUP BY courses.CID, students.SID
            ) AS s
            GROUP BY s.SID
        ")[0];

        // Check if BREAD is Translatable
        $isModelTranslatable = isBreadTranslatable($dataTypeContent);

        // Grade
        $gradeType = array('CID' => 'Course ID', 'Cname' => 'Course Name', 'SeNum' => '#',
            'SeTerm' => 'term', 'SeYear' => 'year', 'SeNote' => 'Note',
            'grade' => 'Grade');

        $gradeTermList = DB::table('student_enroll_in_section')
            ->where('SID', $id)
            ->join('sections', 'student_enroll_in_section.section_id', '=', 'sections.id')
            ->distinct('sections.SeTerm', 'sections.SeYear')
            ->select('sections.SeTerm', 'sections.SeYear')
            ->orderBy('sections.SeYear', 'desc')
            ->orderBy('sections.SeTerm', 'desc')
            ->get();
        $gradePerTerms = array();
        foreach ($gradeTermList as $term) {
            $gradePerTerm = array(
                'term' => $term->SeTerm,
                'year' => $term->SeYear,
                'courses' => DB::table('student_enroll_in_section')
                            ->join('sections', 'student_enroll_in_section.section_id', '=', 'sections.id')
                            ->where('SID', $id)
                            ->join('courses', 'sections.CID', '=', 'courses.CID')
                            ->select('student_enroll_in_section.id', 'sections.SeNum', 'sections.SeTerm', 'sections.SeYear', 'sections.SeNote',
                                'courses.CID', 'courses.Cname', 'student_enroll_in_section.grade')
                            ->get()
            );
            array_push($gradePerTerms, $gradePerTerm);
        }

        // Enrollment
        $enrollType = array('CID' => 'Course ID', 'Cname' => 'Name', 'SeNum' => 'Section',
            'SeTerm' => 'Term', 'SeYear' => 'Year', 'SeNote' => 'Note');

        $enrollments = DB::table('student_enroll_in_section')
            ->where('SID', $id)
            ->join('sections', 'student_enroll_in_section.section_id', '=', 'sections.id')
            ->join('courses', 'sections.CID', '=', 'courses.CID')
            ->select('student_enroll_in_section.id', 'sections.SeNum', 'sections.SeTerm', 'sections.SeYear', 'sections.SeNote',
                'courses.CID', 'courses.Cname')
            ->get();
            
        // Behavior
        $behaviorType = array('Btime' => 'Time', 'Bpunisher' => 'Punisher',
            'Bdeduct_score' => 'Score', 'Bdetail' => 'Detail');

        $behaviors = DB::table('behavior_records')
            ->where('SID', $id)
            ->select('behavior_records.Btime AS id', 'behavior_records.Btime', 'behavior_records.Bpunisher', 'behavior_records.Bdeduct_score', 'behavior_records.Bdetail')
            ->get();
            
        // Competition
        $competitionType = array('Coname' => 'Competition', 'Coyear' => 'Year', 'Coaward' => 'Award',
            'SFullname' => 'Student name', 'name' => 'Instructor Name');
        /*
        SELECT competitions.Coname, competitions.Coyear, competitions.Coaward,
            CONCAT(students.SFname, ' ', students.SLname) AS SFullname,
            CONCAT(users.fname, " ", users.lname) AS SFullname,
            users.id
        FROM (select competition from student_compete_in_competition WHERE SID = $id) AS c
        INNER JOIN student_compete_in_competition ON c.competition = student_compete_in_competition.competition
        INNER JOIN competitions on c.competition = competitions.id
        INNER JOIN teachers on competitions.Cadvisor = teachers.id
        INNER JOIN users on teachers.user = users.id
        INNER JOIN students on student_compete_in_competition.SID = students.SID
        */
        $competitionQuery = DB::table('student_compete_in_competition')
            ->where('SID', $id);
        $competitions = DB::table(DB::raw("({$competitionQuery->toSql()}) AS c"))
            ->mergeBindings($competitionQuery)
            ->join('student_compete_in_competition', 'c.competition', '=', 'student_compete_in_competition.competition')
            ->join('competitions', 'c.competition', '=', 'competitions.id')
            ->join('teachers', 'competitions.Cadvisor', '=', 'teachers.id')
            ->join('users', 'teachers.user', '=', 'users.id')
            ->join('students', 'student_compete_in_competition.SID', '=', 'students.SID')
            ->select('student_compete_in_competition.id', 'competitions.Coname', 'competitions.Coyear', 'competitions.Coaward',
                DB::raw('CONCAT(students.SFname, " ", students.SLname) AS SFullname'),
                DB::raw('CONCAT(users.fname, " ", users.lname) AS SFullname'),
                'users.id AS uid')
            ->get();

        // Activity
        $activityType = array('Aname' => 'Activity', 'Ayear' => 'Year', 'Adetail' => 'Detail',
            'SFullname' => 'Student name', 'name' => 'Instructor Name');
        /*
        SELECT activities.Aname, activities.Ayear, activities.Adetail,
            CONCAT(students.SFname, ' ', students.SLname) AS SFullname,
            CONCAT(users.fname, " ", users.lname) AS SFullname,
            users.id
        FROM (select activity from student_particippate_in_activity WHERE SID = $id) AS c
        INNER JOIN student_particippate_in_activity ON c.competition = student_compete_in_competition.competition
        INNER JOIN competitions on c.competition = competitions.id
        INNER JOIN teachers on competitions.Cadvisor = teachers.id
        INNER JOIN users on teachers.user = users.id
        INNER JOIN students on student_compete_in_competition.SID = students.SID
        */
        $activityQuery = DB::table('student_particippate_in_activity')
            ->where('SID', $id)
            ->select('*');
        $activities = DB::table(DB::raw("({$activityQuery->toSql()}) AS c"))
            ->mergeBindings($activityQuery)
            ->join('student_particippate_in_activity', 'c.activity', '=', 'student_particippate_in_activity.activity')
            ->join('activities', 'c.activity', '=', 'activities.id')
            ->join('teachers', 'activities.Aadvisor', '=', 'teachers.id')
            ->join('users', 'teachers.user', '=', 'users.id')
            ->join('students', 'student_particippate_in_activity.SID', '=', 'students.SID')
            ->select('student_particippate_in_activity.id', 'activities.Aname', 'activities.Ayear', 'activities.Adetail',
                DB::raw('CONCAT(students.SFname, " ", students.SLname) AS SFullname'),
                DB::raw('CONCAT(users.fname, " ", users.lname) AS name'),
                'users.id AS uid')
            ->get();

        return view('students.read', compact('dataType', 'dataTypeContent', 'gpa',
            'gradeType', 'gradePerTerms',
            'enrollType', 'enrollments',
            'behaviorType', 'behaviors', 
            'competitionType', 'competitions',
            'activityType', 'activities', 'isModelTranslatable'));
    }

    //***************************************
    //                _____
    //               |  __ \
    //               | |  | |
    //               | |  | |
    //               | |__| |
    //               |_____/
    //
    //         Delete an item BREA(D)
    //
    //****************************************

    public function destroy(Request $request, $id)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        Voyager::canOrFail('delete_'.$dataType->name);

        $data = call_user_func([$dataType->model_name, 'findOrFail'], $id);

        // Delete Translations, if present
        if (isBreadTranslatable($data)) {
            $data->deleteAttributeTranslations($data->getTranslatableAttributes());
        }

        foreach ($dataType->deleteRows as $row) {
            if ($row->type == 'image') {
                $this->deleteFileIfExists('/uploads/'.$data->{$row->field});

                $options = json_decode($row->details);

                if (isset($options->thumbnails)) {
                    foreach ($options->thumbnails as $thumbnail) {
                        $ext = explode('.', $data->{$row->field});
                        $extension = '.'.$ext[count($ext) - 1];

                        $path = str_replace($extension, '', $data->{$row->field});

                        $thumb_name = $thumbnail->name;

                        $this->deleteFileIfExists('/uploads/'.$path.'-'.$thumb_name.$extension);
                    }
                }
            }
        }

        $data = $data->destroy($id)
            ? [
                'message'    => "Successfully Deleted {$dataType->display_name_singular}",
                'alert-type' => 'success',
            ]
            : [
                'message'    => "Sorry it appears there was a problem deleting this {$dataType->display_name_singular}",
                'alert-type' => 'error',
            ];

        return redirect()->route("voyager.{$dataType->slug}.index")->with($data);
    }

    public function addEnroll(Request $request, $id)
    {
        // Check permission
        Voyager::canOrFail('browse_students');

                // $dataTypeContent = call_user_func([$model->with($relationships)->latest(), $getter]);
        $dataType = Voyager::model('DataType')->where('slug', '=', 'enroll')->first();
        $dataTypeContent = call_user_func([BehaviorRecord::where('SID', '=', $id), 'get']);
        $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType);
        Log::info($dataTypeContent);

        return view("students.enroll", compact('dataType', 'dataTypeContent'));
    }

    public function behavior(Request $request, $id)
    {
        // Check permission
        Voyager::canOrFail('browse_students');

                // $dataTypeContent = call_user_func([$model->with($relationships)->latest(), $getter]);
        $dataType = Voyager::model('DataType')->where('slug', '=', 'behavior-records')->first();
        $dataTypeContent = call_user_func([BehaviorRecord::where('SID', '=', $id), 'get']);
        $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType);

        return view("students.enroll", compact('dataType', 'dataTypeContent'));
    }
}


?>