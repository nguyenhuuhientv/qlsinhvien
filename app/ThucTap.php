<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Khoa extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'thuctap';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['TenKhoa'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
