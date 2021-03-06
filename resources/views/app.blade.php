<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Quản Lí Quá Trình Thực Tập Sinh Viên</title>

	<link href="{{ asset('/css/app.css') }}" rel="stylesheet">
	{!!HTML::style("template/adminlte/datatables/dataTables.bootstrap.css")!!}
	<!-- Fonts -->
	<link href='//fonts.googleapis.com/css?family=Roboto:400,300' rel='stylesheet' type='text/css'>

	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/ui/1.11.1/jquery-ui.min.js" type="text/javascript"></script>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle Navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>				
			</div>

			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="{{URL::route("giaovien.index")}}">Giáo Viên</a></li>
					<li><a href="{{URL::route("khoa.index")}}">Khoa</a></li>
					<li><a href="{{URL::route("loaihinhdaotao.index")}}">Loại Hình Đạo Tạo</a></li>
					<li><a href="{{URL::route("nganh.index")}}">Ngành</a></li>	
					<li><a href="{{URL::route("lop.index")}}">Lớp</a></li>								
					<li><a href="{{URL::route("sinhvien.index")}}">Sinh Viên</a></li>
					<li><a href="{{URL::route("quatrinhthuctap.index")}}">Quá Trình Thực Tập</a></li>
					<li><a href="{{URL::route("thoigianthuctap.index")}}">Thời Gian Thực Tập</a></li>
						<li><a href="{{URL::route("thuctap.index")}}">Thực Tập</a></li>
					<li><a href="{{URL::route("thongbao.index")}}">Thông Báo</a></li>				
					<li><a href="{{URL::route("user.index")}}">User</a></li>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					@if (Auth::guest())
						<li><a href="{{ url('/auth/login') }}">Login</a></li>
						<li><a href="{{ url('/auth/register') }}">Register</a></li>
					@else
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">{{ Auth::user()->name }} <span class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="{{ url('/auth/logout') }}">Logout</a></li>
							</ul>
						</li>
					@endif
				</ul>
			</div>
		</div>
	</nav>

	@yield('content')

	<!-- Scripts -->
	
</body>
</html>
