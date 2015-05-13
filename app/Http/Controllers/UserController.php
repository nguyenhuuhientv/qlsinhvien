<?php namespace App\Http\Controllers;

class userController extends Controller {

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
		return view('user.index')->with("list", \App\User::get());
	}

	public function create()
	{
		return view('user.create');
	}

	public function update($id)
	{
		return view('user.update');
	}

	public function delete($id)
	{
	}

}
