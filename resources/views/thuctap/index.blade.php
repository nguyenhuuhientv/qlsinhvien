@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí thực tập</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID</th>
							<th>Mã Sinh Viên</th>
							<th>Công Ty Thực Tập</th>
							<th>Địa Chỉ</th>							
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->idThucTap}}</td>
							<td>{{$item->MaSinhVien}}</td>
							<td>{{$item->CongTyThucTap}}</td>
							<td>{{$item->DiaChiCongTyThucTap}}</td>
							<th>
								<a href="$item->idKhoa">Sửa</a> | 
								<a href="$item->idKhoa">Xóa</a>
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