<?php namespace App\Http\Controllers;

class lopController extends Controller {

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
		return view('lop.index')->with("list", \App\lop::get());
	}

	public function create()
	{
		return view('lop.create');
	}

	public function update($id)
	{
		return view('lop.update');
	}

	public function delete($id)
	{
	}

}
