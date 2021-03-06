<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class SinhVien extends Model {

	/**
	 * The database table used by the model.
	 *
	 * @var string
	 */
	protected $table = 'sinhvien';

	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = ['HoTen', 'DiaChi', 'QuanHuyen', 'TinhTP', 'Email', 'GioiTinh', 'MSSV', 'Password', 'KeyID', 'SDT', 'DanToc', 'NgaySinh', 'NoiSinh', 'MaLop', 'Avatar'];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	public function QuaTrinhThucTap() {
		return $this->hasMany("QuaTrinhThucTap", "MaSinhVien");
	}

	public function ThucTap() {
		return $this->hasOne("\App\ThucTap", "MaSinhVien");
	}

	public function Lop() {
		return $this->hasOne("\App\Lop", "idLop");
	}
}
