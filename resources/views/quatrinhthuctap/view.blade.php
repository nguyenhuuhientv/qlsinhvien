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
                var latitude = {{$info->SinhVien->ThucTap->KinhDoCongTyThucTap}};
                var longitude = {{$info->SinhVien->ThucTap->ViDoCongTyThucTap}};
                var coords = new google.maps.LatLng(latitude, longitude);

                var mapOptions = {
                zoom: 15,
                center: coords,
                mapTypeControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            //create the map, and place it in the HTML map div
            map = new google.maps.Map(
            document.getElementById("map"), mapOptions
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
        height: 250px;
    }
    #mapPlaceholder2 {
        height: 250px;
    }
	#map {
        height: 200px;
    }
    </style>
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Nơi thực tập của sinh viên: <strong>{{$info->SinhVien->HoTen}}</strong></div>

				<div class="panel-body">
					<div id="map" class="col-md-12"></div>
				</div>
			</div>
        </div>

        <div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chi tiết</div>

				<div class="panel-body" style="height: 230px">									
					<div class="row">
						<label class="col-md-6">Tên công ty, xý nghiệp: </label>
						<span class="col-md-6">{{$info->SinhVien->ThucTap->CongTyThucTap}}</span>
					</div>
					<div class="row">
						<label class="col-md-6">Địa chỉ: </label>
						<span class="col-md-6">{{$info->SinhVien->ThucTap->DiaChiCongTyThucTap}}</span>
					</div>
				</div>
        	</div>
    	</div>
    </div>
</div>
<div class="container" style="margin-top:-10px">
	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chi tiết sáng #{{$info->NgayThucTap}} - {{$info->ThoiGianSang}}</div>

				<div class="panel-body">
					<div id="mapPlaceholder" class="col-md-12"></div>
					<div class="row">
						<label class="col-md-6">Ghi Chú Sáng: </label>
						<span class="col-md-6">{{$info->GhiChuSang}}</span>
					</div>		
					
					
				</div>
			</div>
        </div>

        <div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Thông tin chi tiết chiều #{{$info->NgayThucTap}} - {{$info->ThoiGianChieu}}</div>

				<div class="panel-body">
					<div id="mapPlaceholder2" class="col-md-12"></div>
					<div class="row">
						<label class="col-md-6">Ghi Chú Chiều: </label>
						<span class="col-md-6">{{$info->GhiChuChieu}}</span>
					</div>				
				</div>
        	</div>
    	</div>
    </div>
</div>
@endsection