<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class GiaoVien extends Model {

	protected $table = 'giaovien';

	protected $fillable = ['TaiKhoan', 'MatKhau', 'HoTen', 'DiaChi', 'Email', 'DienThoai', 'GioiTinh', 'ChucVu', 'MaKhoa'];

}
