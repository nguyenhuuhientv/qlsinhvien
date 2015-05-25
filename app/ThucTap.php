<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class ThucTap extends Model {

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
	protected $fillable = ['MaSinhVien', 'MaThoiGianThucTap', 'CongTyThucTap', 'DiaChiCongTyThucTap', 'KinhDoCongTyThucTap', 'ViDoCongTyThucTap'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */

}
