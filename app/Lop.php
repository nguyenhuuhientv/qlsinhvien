<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Lop extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'lop';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['TenLop', 'MaNganh', 'MaGVCN', 'LoaiHinhDaoTao'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
