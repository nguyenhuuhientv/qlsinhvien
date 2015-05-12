<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class QuaTrinhThucTap extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'QuaTrinhThucTap';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['MaSinhVien', 'MaThucTap', 'NgayThucTap', 'KinhDoSang', 'ViDoSang', 'ThoiGianSang', 'GhiChuSang', 'KinhDoChieu', 'ViDoChieu', 'ThoiGianChieu','GhiChuChieu'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
