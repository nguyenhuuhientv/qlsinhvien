<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Nganh extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'Nganh';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['TenNganh', 'MaKhoa'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
