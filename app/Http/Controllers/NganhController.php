<?php namespace App\Http\Controllers;

class nganhController extends Controller {

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
		return view('nganh.index')->with("list", \App\nganh::get());
	}

	public function create()
	{
		return view('nganh.create');
	}

	public function update($id)
	{
		return view('nganh.update');
	}

	public function delete($id)
	{
	}

}
