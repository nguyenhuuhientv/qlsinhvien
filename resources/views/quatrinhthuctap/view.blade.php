@extends('app')

@section('content')
<script src="http://maps.google.com/maps/api/js?sensor=false">
        </script>
        <script>
            if (navigator.geolocation)
            {
                navigator.geolocation.getCurrentPosition(showCurrentLocation);
            }
            else
            {
               alert("Geolocation API not supported.");
            }

            function showCurrentLocation(position)
            {
                var latitude = {{$info->KinhDoSang}};
                var longitude = {{$info->ViDoSang}};
                var coords = new google.maps.LatLng(latitude, longitude);

                var mapOptions = {
                zoom: 15,
                center: coords,
                mapTypeControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            //create the map, and place it in the HTML map div
            map = new google.maps.Map(
            document.getElementById("mapPlaceholder"), mapOptions
            );

            //place the initial marker
            var marker = new google.maps.Marker({
            position: coords,
            map: map,
            title: "Current location!"
            });
            }
        </script>

        <script>
            if (navigator.geolocation)
            {
                navigator.geolocation.getCurrentPosition(showCurrentLocation2);
            }
            else
            {
               alert("Geolocation API not supported.");
            }

            function showCurrentLocation2(position)
            {
                var latitude = {{$info->KinhDoChieu}};
                var longitude = {{$info->ViDoChieu}};
                var coords = new google.maps.LatLng(latitude, longitude);

                var mapOptions = {
                zoom: 15,
                center: coords,
                mapTypeControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            //create the map, and place it in the HTML map div
            map = new google.maps.Map(
            document.getElementById("mapPlaceholder2"), mapOptions
            );

            //place the initial marker
            var marker = new google.maps.Marker({
            position: coords,
            map: map,
            title: "Current location!"
            });
            }
        </script>
    <style>
    #mapPlaceholder {
        height: 400px;
    }
    #mapPlaceholder2 {
        height: 400px;
    }
    </style>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chi tiết sáng #{{$info->NgayThucTap}}</div>

				<div class="panel-body">
					<div id="mapPlaceholder" class="col-md-12"></div>
					<div class="row">
						<label class="col-md-6">Ghi Chú Sáng: </label>
						<span class="col-md-6">{{$info->GhiChuSang}}</span>
					</div>
					<div class="row">
						<label class="col-md-6">Tên Sinh Viên: </label>
						<span class="col-md-6">{{$info->SinhVien->HoTen}}</span>
					</div>
					
					
				</div>
			</div>
        </div>

        <div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chi tiết chiều #{{$info->NgayThucTap}}</div>

				<div class="panel-body">
					<div id="mapPlaceholder2" class="col-md-12"></div>
					<div class="row">
						<label class="col-md-6">Ghi Chú Chiều: </label>
						<span class="col-md-6">{{$info->GhiChuChieu}}</span>
					</div>
					<div class="row">
						<label class="col-md-6">Tên Sinh Viên: </label>
						<span class="col-md-6">{{$info->SinhVien->HoTen}}</span>
					</div>
				</div>
        	</div>
    	</div>
    </div>
</div>
@endsection