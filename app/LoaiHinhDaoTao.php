<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class LoaiHinhDaoTao extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'loaihinhdaotao';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['TenLoaiHinhDaoTao'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
