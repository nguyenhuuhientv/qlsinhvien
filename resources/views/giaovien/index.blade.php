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
							<th>ID Khoa</th>
							<th>Tên Khoa</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->idKhoa}}</td>
							<td>{{$item->TenKhoa}}</td>
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