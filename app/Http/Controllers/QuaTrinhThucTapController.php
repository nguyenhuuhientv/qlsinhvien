<?php namespace App\Http\Controllers;

class quatrinhthuctapController extends Controller {

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
		return view('quatrinhthuctap.index')->with("list", \App\QuaTrinhThucTap::get());
	}

	public function create()
	{
		return view('quatrinhthuctap.create');
	}

	public function update($id)
	{
		return view('quatrinhthuctap.update');
	}

	public function delete($id)
	{
	}
	public function view($id) {
		return view('quatrinhthuctap.view')->with("info", \App\QuaTrinhThucTap::where("idQTTT",$id)->first());
	}

}
