<?php namespace App\Http\Controllers;

class loaihinhdaotaoController extends Controller {

	/*
	|--------------------------------------------------------------------------
	| Home Controller
	|--------------------------------------------------------------------------
	|
	| This controller renders your application's "dashboard" for users that
	| are authenticated. Of course, you are free to change or remove the
	| controller as you wish. It is just here to get your app started!
	|
	*/

	/**
	 * Create a new controller instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		$this->middleware('auth');
	}

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		return view('loaihinhdaotao.index')->with("list", \App\loaihinhdaotao::get());
	}

	public function create()
	{
		return view('loaihinhdaotao.create');
	}

	public function update($id)
	{
		return view('loaihinhdaotao.update');
	}

	public function delete($id)
	{
	}

}
