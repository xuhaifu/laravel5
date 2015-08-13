<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'WelcomeController@index');

Route::get('auth/login', 'AuthController@getLogin');
Route::post('auth/login', 'AuthController@postLogin');
Route::get('auth/logout', 'AuthController@getlogout');

Route::group(['prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'auth'],  function()
{
    Route::get('/',  'AdminController@index');
    Route::resource('user','UserController');
    
    
});




