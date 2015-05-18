@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí lớp</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID Lớp</th>
							<th>Tên Lớp</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->idLop}}</td>
							<td>{{$item->TenLop}}</td>
							<th>
								<a href="$item->idLop">Sửa</a> | 
								<a href="$item->idLop">Xóa</a>
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