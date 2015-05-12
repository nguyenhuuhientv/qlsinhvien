<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ThongBao extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'ThongBao';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['TieuDe', 'NoiDung', 'NgayDang', 'Khoa'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
