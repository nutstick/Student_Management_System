<?php

namespace App\Http\Controllers;

use App\Student;
use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use Illuminate\Support\Facades\Log;
use TCG\Voyager\Http\Controllers\VoyagerBreadController;

class StudentController extends VoyagerBreadController
{

    public function show(Request $request, $id)
    {
        Log::info('My Request '.$request->route()->getName());
        $slug = 'students';
        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();
        // Check permission
        Voyager::canOrFail('read_'.$dataType->name);
        $relationships = $this->getRelationships($dataType);
        if (strlen($dataType->model_name) != 0) {
            $model = app($dataType->model_name);
            $dataTypeContent = call_user_func([$model->with($relationships), 'findOrFail'], $id);
        } else {
            // If Model doest exist, get data from table name
            $dataTypeContent = DB::table($dataType->name)->where('id', $id)->first();
        }
        //Replace relationships' keys for labels and create READ links if a slug is provided.
        $dataTypeContent = $this->resolveRelations($dataTypeContent, $dataType, true);
        // Check if BREAD is Translatable
        $isModelTranslatable = isBreadTranslatable($dataTypeContent);
        $view = 'student';
        return view($view, compact('dataType', 'dataTypeContent', 'isModelTranslatable'));
    }
}

?>