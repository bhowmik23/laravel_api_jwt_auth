<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'auth'], function ($router) {
    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('payload', 'AuthController@payload');
    Route::post('register', 'AuthController@register');

});
Route::group(['middleware' => ['jwt.verify']], function() {
    Route::get('notice', 'User\NoticeController@index');
    Route::get('schedule', 'User\ScheduleController@index');
    Route::get('course', 'User\CourseController@index');
    Route::get('class', 'User\ClassController@index');
    Route::get('class/{id}', 'User\ClassController@getClass');
    Route::get('class/{id}/comments', 'User\ClassCommentController@index');
    Route::post('class/{id}/comment', 'User\ClassCommentController@store');
    Route::get('class-resources', 'User\ClassResourceController@index');
    Route::get('exams', 'User\ExamController@index');
    Route::get('exam/{id}/questions', 'User\ExamController@getExamQuestions');
});
