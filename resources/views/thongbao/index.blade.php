@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí thông báo</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID</th>
							<th>Tiêu Đề</th>
							<th>Nội Dung</th>
							<th>Ngày Đăng</th>
							<th>Mã Khoa</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->id}}</td>
							<td>{{$item->TieuDe}}</td>
							<td>{{$item->NoiDung}}</td>
							<td>{{$item->NgayDang}}</td>
							<td>{{$item->Khoa}}</td>
							<th>
								<a href="$item->id">Sửa</a> | 
								<a href="$item->id">Xóa</a>
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