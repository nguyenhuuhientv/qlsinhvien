@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí giảng viên</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID Giảng Viên</th>
							<th>Tài Khoản</th>
							<th>Tên Giảng Viên</th>
							<th>Địa Chỉ</th>
							<th>Email</th>
							<th>Điện Thoại</th>
							<th>Giới Tính</th>
							<th>Chức Vụ</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->idGiaoVien}}</td>
							<td>{{$item->TaiKhoan}}</td>
							<td>{{$item->HoTen}}</td>
							<td>{{$item->DiaChi}}</td>
							<td>{{$item->Email}}</td>
							<td>{{$item->DienThoai}}</td>
							<td>{{$item->GioiTinh}}</td>
							<td>{{$item->ChucVu}}</td>
							<th>
								<a href="$item->idGiaoVien">Sửa</a> | 
								<a href="$item->idGiaoVien">Xóa</a>
							</th>
						</tr>
						@endforeach
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection