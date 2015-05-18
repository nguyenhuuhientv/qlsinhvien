@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí loại hình đào tạo</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID Loại Hình Đào Tao</th>
							<th>Tên Loại Hình Đào Tạo</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->idLoaiHinhDaoTao}}</td>
							<td>{{$item->TenLoaiHinhDaoTao}}</td>
							<th>
								<a href="$item->idLoaiHinhDaoTao">Sửa</a> | 
								<a href="$item->idLoaiHinhDaoTao">Xóa</a>
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