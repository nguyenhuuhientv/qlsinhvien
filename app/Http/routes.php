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
////
Route::group(array('prefix'=>'giaovien'), function () {
	Route::get('/', array('as'=>'giaovien.index', 'uses'=>'GiaoVienController@index'));

	Route::any('/create', array('as'=>'giaovien.create', 'uses'=>'GiaoVienController@create'));
	Route::any('/update/{id}', array('as'=>'giaovien.update', 'uses'=>'GiaoVienController@update'));
	Route::any('/delete/{id}', array('as'=>'giaovien.delete', 'uses'=>'GiaoVienController@delete'));
});
//
Route::group(array('prefix'=>'loaihinhdaotao'), function () {
	Route::get('/', array('as'=>'loaihinhdaotao.index', 'uses'=>'LoaiHinhDaoTaoController@index'));

	Route::any('/create', array('as'=>'loaihinhdaotao.create', 'uses'=>'LoaiHinhDaoTaoController@create'));
	Route::any('/update/{id}', array('as'=>'loaihinhdaotao.update', 'uses'=>'LoaiHinhDaoTaoController@update'));
	Route::any('/delete/{id}', array('as'=>'loaihinhdaotao.delete', 'uses'=>'LoaiHinhDaoTaoController@delete'));
});
//
Route::group(array('prefix'=>'lop'), function () {
	Route::get('/', array('as'=>'lop.index', 'uses'=>'LopController@index'));

	Route::any('/create', array('as'=>'lop.create', 'uses'=>'LopController@create'));
	Route::any('/update/{id}', array('as'=>'lop.update', 'uses'=>'LopController@update'));
	Route::any('/delete/{id}', array('as'=>'lop.delete', 'uses'=>'LopController@delete'));
});
//
Route::group(array('prefix'=>'nganh'), function () {
	Route::get('/', array('as'=>'nganh.index', 'uses'=>'NganhController@index'));

	Route::any('/create', array('as'=>'nganh.create', 'uses'=>'NganhController@create'));
	Route::any('/update/{id}', array('as'=>'nganh.update', 'uses'=>'NganhController@update'));
	Route::any('/delete/{id}', array('as'=>'nganh.delete', 'uses'=>'NganhController@delete'));
});
//
Route::group(array('prefix'=>'quatrinhthuctap'), function () {
	Route::get('/', array('as'=>'quatrinhthuctap.index', 'uses'=>'QuaTrinhThucTapController@index'));

	Route::any('/create', array('as'=>'quatrinhthuctap.create', 'uses'=>'QuaTrinhThucTapController@create'));
	Route::any('/update/{id}', array('as'=>'quatrinhthuctap.update', 'uses'=>'QuaTrinhThucTapController@update'));
	Route::any('/delete/{id}', array('as'=>'quatrinhthuctap.delete', 'uses'=>'QuaTrinhThucTapController@delete'));
});
//
Route::group(array('prefix'=>'sinhvien'), function () {
	Route::get('/', array('as'=>'sinhvien.index', 'uses'=>'SinhVienController@index'));

	Route::any('/create', array('as'=>'sinhvien.create', 'uses'=>'SinhVienController@create'));
	Route::any('/update/{id}', array('as'=>'sinhvien.update', 'uses'=>'SinhVienController@update'));
	Route::any('/delete/{id}', array('as'=>'sinhvien.delete', 'uses'=>'SinhVienController@delete'));
});
//
Route::group(array('prefix'=>'thoigianthuctap'), function () {
	Route::get('/', array('as'=>'thoigianthuctap.index', 'uses'=>'ThoiGianThucTapController@index'));

	Route::any('/create', array('as'=>'thoigianthuctap.create', 'uses'=>'ThoiGianThucTapController@create'));
	Route::any('/update/{id}', array('as'=>'thoigianthuctap.update', 'uses'=>'ThoiGianThucTapController@update'));
	Route::any('/delete/{id}', array('as'=>'thoigianthuctap.delete', 'uses'=>'ThoiGianThucTapController@delete'));
});
//
Route::group(array('prefix'=>'thongbao'), function () {
	Route::get('/', array('as'=>'thongbao.index', 'uses'=>'ThongBaoController@index'));

	Route::any('/create', array('as'=>'thongbao.create', 'uses'=>'ThongBaoController@create'));
	Route::any('/update/{id}', array('as'=>'thongbao.update', 'uses'=>'ThongBaoController@update'));
	Route::any('/delete/{id}', array('as'=>'thongbao.delete', 'uses'=>'ThongBaoController@delete'));
});
//
Route::group(array('prefix'=>'thuctap'), function () {
	Route::get('/', array('as'=>'thuctap.index', 'uses'=>'ThucTapController@index'));

	Route::any('/create', array('as'=>'thuctap.create', 'uses'=>'ThucTapController@create'));
	Route::any('/update/{id}', array('as'=>'thuctap.update', 'uses'=>'ThucTapController@update'));
	Route::any('/delete/{id}', array('as'=>'thuctap.delete', 'uses'=>'ThucTapController@delete'));
});
//
Route::group(array('prefix'=>'user'), function () {
	Route::get('/', array('as'=>'user.index', 'uses'=>'UserController@index'));

	Route::any('/create', array('as'=>'user.create', 'uses'=>'UserController@create'));
	Route::any('/update/{id}', array('as'=>'user.update', 'uses'=>'UserController@update'));
	Route::any('/delete/{id}', array('as'=>'user.delete', 'uses'=>'UserController@delete'));
});
