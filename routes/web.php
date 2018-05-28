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


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('/', 'PagesController@home');
Route::get('{slug}', 'ProductsController@show');

Route::get('/барилгын-материал-зарна/халаалт', 'CategoriesController@floorheat');
Route::get('/барилгын-материал-зарна/сауна', 'CategoriesController@sauna');
Route::get('/барилгын-материал-зарна/бассейн', 'CategoriesController@bassein');
Route::get('/барилгын-материал-зарна/фантан', 'CategoriesController@fountain');
Route::get('/барилгын-материал-зарна/бусад', 'CategoriesController@other');
Route::get('/барилгын-материал-зарна/бойлер', 'CategoriesController@boiler');
Route::get('/барилгын-материал-зарна/бүгд', 'CategoriesController@all');

Route::get('/Дээврийн-бороо-усны-хаялага/contactus', 'PagesController@contactus');
Route::get('/бойлер/howto/', 'PagesController@howto');
Route::get('/posts/{id}', 'PagesController@show');
Route::get('/агшин-зуур-ус-халаагч/about', 'PagesController@about');

