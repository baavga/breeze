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
 
Route::get('/toys/{slug}','CategoriesController@index');
Route::get('/us/contactus', 'PagesController@contactus');
Route::get('/бойлер/howto/', 'PagesController@howto');
Route::get('/posts/{id}', 'PagesController@show'); 

