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

 

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
Route::get('/', 'PagesController@home');
Route::get('{slug}', 'ProductsController@show');

Route::get('/барилгын-материал-зарна/халаалт', 'CategoriesController@floorheat'); 
Route::get('/гермес/{slug}','CategoriesController@index');
Route::get('/Дээврийн-бороо-усны-хаялага/contactus', 'PagesController@contactus');
Route::get('/бойлер/howto/', 'PagesController@howto');
Route::get('/posts/{id}', 'PagesController@show');
Route::get('/агшин-зуур-ус-халаагч/about', 'PagesController@about');

