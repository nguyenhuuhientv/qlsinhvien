@extends('app')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading">Quản lí quá trình thực tập</div>

				<div class="panel-body">
					<table class="table" id="example1">
						<thead>
                            <tr>
                                <th>Mã Sinh Viên</th>
                                <th>Tên Sinh Viên</th>
								<!-- <th>Mã Thực Tập</th> -->
								<th>Ngày Thực Tập</th>
								<th>Điểm Danh Sáng</th>
								<th>Điểm Danh Chiều</th>
								<th>Thao Tác</th>
                            </tr>
                        </thead>
                        <tbody>
						@foreach($list as $item)
						<tr>
							<td>{{$item->MaSinhVien}}</td>
							<td>{{$item->SinhVien->HoTen}}</td>
							<!-- <td>{{$item->MaThucTap}}</td> -->
							<td>{{$item->NgayThucTap}}</td>
							<td>
								@if ($item->ThoiGianSang)
									<span class="btn btn-info">Có - {{$item->ThoiGianSang}}</span>
								@else
									<span class="btn btn-danger">Không</span>
								@endif
							</td>
							<td>
								@if ($item->ThoiGianChieu)
									<span class="btn btn-info">Có - {{$item->ThoiGianChieu}}</span>
								@else
									<span class="btn btn-danger">Không</span>
								@endif
							</td>
							<th>
								<a href="{{URL::route("quatrinhthuctap.view", $item->idQTTT)}}">Xem Chi Tiết</a>
							</th>
						</tr>
						@endforeach
					</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

{!!HTML::script("template/adminlte/datatables/jquery.dataTables.js")!!}
{!!HTML::script("template/adminlte/datatables/dataTables.bootstrap.js")!!}
<!-- page script -->
<script type="text/javascript">
    $(function() {
        $("#example1").dataTable();
        $('#example2').dataTable({
            "bPaginate": true,
            "bLengthChange": false,
            "bFilter": false,
            "bSort": true,
            "bInfo": true,
            "bAutoWidth": false
        });
    });
</script>
@endsection