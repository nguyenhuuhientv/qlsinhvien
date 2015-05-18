@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí thời gian thực tập</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID</th>
							<th>Mã Khoa</th>
							<th>Năm</th>
							<th>Ngày Bắt Đầu</th>
							<th>Ngày Kết Thúc</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->idThoiGianThucTap}}</td>
							<td>{{$item->MaKhoa}}</td>
							<td>{{$item->NamThucTap}}</td>
							<td>{{$item->NgayBatDau}}</td>
							<td>{{$item->NgayKetThuc}}</td>
							<th>
								<a href="$item->idThoiGianThucTap">Sửa</a> | 
								<a href="$item->idThoiGianThucTap">Xóa</a>
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