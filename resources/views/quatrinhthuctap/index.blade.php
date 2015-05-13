@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí quá trình thực tập</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>Mã Sinh Viên</th>
							<th>Mã Thực Tập</th>
							<th>Ngày Thực Tập</th>
							<th>Thời Gian Sáng</th>
							<th>Ghi Chú Sáng</th>
							<th>Thời Gian Chiều</th>
							<th>Ghi Chú Chiều</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->MaSinhVien}}</td>
							<td>{{$item->MaThucTap}}</td>
							<td>{{$item->NgayThucTap}}</td>
							<td>{{$item->ThoiGianSang}}</td>
							<td>{{$item->GhiChuSang}}</td>
							<td>{{$item->ThoiGianChieu}}</td>
							<td>{{$item->GhiChuChieu}}</td>
							<th>
								<a href="{{URL::route("quatrinhthuctap.update", $item->idQTTT)}}">Sửa</a> | 
								<a href="{{URL::route("quatrinhthuctap.delete", $item->idQTTT)}}">Xóa</a>
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