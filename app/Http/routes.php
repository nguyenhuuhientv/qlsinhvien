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

Route::get('home', 'HomeController@index');

Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);

Route::group(array('prefix'=>'khoa'), function () {
	Route::get('/', array('as'=>'khoa.index', 'uses'=>'KhoaController@index'));

	Route::any('/create', array('as'=>'khoa.create', 'uses'=>'KhoaController@create'));
	Route::any('/update/{id}', array('as'=>'khoa.update', 'uses'=>'KhoaController@update'));
	Route::any('/delete/{id}', array('as'=>'khoa.delete', 'uses'=>'KhoaController@delete'));
});
