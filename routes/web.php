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

Route::get('/', function () {
    return view('welcome');
});

/*
 * Taị đây chứa các Route cơ bản
 * Route cho phía admin
 * CURD cho các thành phần của hệ thống
 * Create
 * Update
 * Delete
 * show
 * index
 * */
Route::group(['prefix'=>'admin'],function(){
    Route::get('DashBoard','adminController@DashBoard');
    Route::group(['prefix'=>'Category'],function(){
        Route::get('Categories','CategoryController@index');
    });
});
