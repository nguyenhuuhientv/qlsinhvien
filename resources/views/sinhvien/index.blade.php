@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí sinh vien</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID</th>	
							<th>Tên Sinh Viên</th>
							<th>Địa Chỉ</th>
							<th>Quận/Huyện</th>
							<th>Tỉnh/Thành Phố</th>							
							<th>Email</th>
							<th>Giới Tính</th>
							<th>MSSV</th>
							<th>SĐT</th>
							<th>Dân Tộc</th>
							<th>Ngày Sinh</th>	
							<th>Nơi Sinh</th>							
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->id}}</td>
							<td>{{$item->HoTen}}</td>
							<td>{{$item->DiaChi}}</td>
							<td>{{$item->QuanHuyen}}</td>
							<td>{{$item->TinhTP}}</td>
							<td>{{$item->Email}}</td>
							<td>{{$item->GioiTinh}}</td>
							<td>{{$item->MSSV}}</td>
							<td>{{$item->SDT}}</td>
							<td>{{$item->DanToc}}</td>
							<td>{{$item->NgaySinh}}</td>
							<td>{{$item->NoiSinh}}</td>
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