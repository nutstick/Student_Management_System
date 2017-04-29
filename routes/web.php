<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('admin/students/{id}', function () {
    // return view('welcome');
// });


Route::group(['prefix' => 'admin'], function () {
    // Overwrite route
    Route::group([
        'as' => 'voyager.students.',
        'prefix' => 'students',
    ], function () {
        Route::get('/create', ['uses' => 'StudentController@create', 'as' => 'create']);
        Route::get('{id}', ['uses' => 'StudentController@show', 'as' => 'show']);
        Route::get('{id}/enroll', ['uses' => 'StudentController@enroll', 'as' => 'enroll']);
        Route::get('{id}/addEnroll', ['uses' => 'StudentController@addEnroll', 'as' => 'addEnroll']);
        Route::get('{id}/behavior', ['uses' => 'StudentController@behavior', 'as' => 'behavior']);
    });
    Voyager::routes();
});