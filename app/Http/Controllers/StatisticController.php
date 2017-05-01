<?php

namespace App\Http\Controllers;

use App\Course;
use App\Student;
use App\Teacher;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Http\Controllers\VoyagerBreadController;
use Charts;

class StatisticController extends VoyagerBreadController
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
    $grade = DB::select("SELECT 
          COUNT(*) AS count,
          gpa.range
      FROM (
        SELECT
          (CASE 
              WHEN SUM(CGPX) / SUM(s.Ccredit) between  0 and  0.3 then '0.0 - 0.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 0.5 and 0.99 then '0.50 - 0.99'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 1 and 1.49 then '1.00 - 1.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 1.5 and 1.99 then '1.50 - 1.99'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 2 and 2.49 then '2.00 - 2.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 2.5 and 2.99 then '2.50 - 2.99'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 3 and 3.49 then '3.00 - 3.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 3.5 and 3.99 then '3.50 - 3.99'
              ELSE '4.00'
          END) AS `range`
        FROM (
          SELECT ( AVG(student_enroll_in_section.grade) * courses.Ccredit ) AS CGPX,
            students.*, courses.Ccredit, courses.CID
          FROM `student_enroll_in_section`

          JOIN students ON student_enroll_in_section.SID = students.SID
          JOIN sections ON student_enroll_in_section.section_id = sections.id
          JOIN courses ON sections.CID = courses.CID
          GROUP BY courses.CID, students.SID
          ) AS s
        GROUP BY s.SID
      ) as gpa
      GROUP BY gpa.range
    ");
    $label = [];
    $values = [];
    foreach($grade as $g) {
      array_push($label, $g->range);
      array_push($values, $g->count);
    }

    $chart1 = Charts::create('pie', 'fusioncharts')
      ->title("GPAX")
      ->dimensions(0, 400) // Width x Height
      ->template("material")
      ->labels($label)
      ->values($values);
    
    $studentsByYear = DB::select("SELECT CEIL(DATEDIFF(CURDATE(), students.Senroll_date) / 365.25) AS year,
      COUNT(*) AS count
    FROM students
    WHERE students.Sgrad_stat = 'STUDYING'
    GROUP BY year");
    $label = [];
    $values = [];
    foreach($studentsByYear as $s) {
      array_push($label, 'Year '.$s->year);
      array_push($values, $s->count);
    }

    $chart2 = Charts::create('pie', 'fusioncharts')
      // Setup the chart settings
      ->title("Student per year")
      ->dimensions(0, 400) // Width x Height
      ->template("material")
      ->labels($label)
      ->values($values);

    $gradePerYear = DB::select("SELECT 
          COUNT(*) AS count,
          gpa.range,
          gpa.year
      FROM (
        SELECT
          (CASE 
              WHEN SUM(CGPX) / SUM(s.Ccredit) between  0 and  0.3 then '0.0 - 0.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 0.5 and 0.99 then '0.50 - 0.99'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 1 and 1.49 then '1.00 - 1.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 1.5 and 1.99 then '1.50 - 1.99'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 2 and 2.49 then '2.00 - 2.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 2.5 and 2.99 then '2.50 - 2.99'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 3 and 3.49 then '3.00 - 3.49'
              WHEN SUM(CGPX) / SUM(s.Ccredit) between 3.5 and 3.99 then '3.50 - 3.99'
              ELSE '4.00'
          END) AS `range`,
          CEIL(DATEDIFF(CURDATE(), s.Senroll_date) / 365.25) AS year
        FROM (
          SELECT ( AVG(student_enroll_in_section.grade) * courses.Ccredit ) AS CGPX,
            students.*, courses.Ccredit, courses.CID
          FROM `student_enroll_in_section`

          JOIN students ON student_enroll_in_section.SID = students.SID
          JOIN sections ON student_enroll_in_section.section_id = sections.id
          JOIN courses ON sections.CID = courses.CID
          GROUP BY courses.CID, students.SID
          ) AS s
        GROUP BY s.SID
      ) as gpa
      GROUP BY year, gpa.range
      ORDER BY year, gpa.range
    ");

    $values = [];
    $labels = [];
    foreach($gradePerYear as $g) {
      if (!array_key_exists($g->range, $values)) {
        $values[$g->range] = [];
      }
      $values[$g->range]['Year '.$g->year] = $g->count;
      array_push($labels, 'Year '.$g->year);
    }
    $labels = array_unique($labels);

    $chart3 = Charts::multi('bar', 'material')
      ->title("Grade list per year")
      ->dimensions(0, 400)
      ->template("material");
    
    foreach($values as $key => $value) {
      $s = [];
      foreach($labels as $label) {
        if (array_key_exists($label, $value)) {
          array_push($s, $value[$label]);
        } else {
          array_push($s, 0);
        }
      }
      $chart3 = $chart3->dataset($key, $s);
    }
    $chart3 = $chart3->labels(array_values($labels));
      
    return view('statistics.read', ['chart1' => $chart1, 'chart2' => $chart2, 'chart3' => $chart3]);
  }
}

?>