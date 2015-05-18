@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí ngành</div>

				<div class="panel-body">
					<table class="table">
						<tr>
							<th>ID Ngành</th>
							<th>Tên Ngành</th>
							<th>Thao Tác</th>
						</tr>
						@foreach($list as $item)
						<tr>
							<td>{{$item->idNganh}}</td>
							<td>{{$item->TenNganh}}</td>
							<th>
								<a href="$item->idNganh">Sửa</a> | 
								<a href="$item->idNganh">Xóa</a>
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