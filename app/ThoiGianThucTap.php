<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ThoiGianThucTap extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'thoigianthuctap';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['MaKhoa', 'NamThucTap', 'NgayBatDau', 'NgayKetThuc'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
