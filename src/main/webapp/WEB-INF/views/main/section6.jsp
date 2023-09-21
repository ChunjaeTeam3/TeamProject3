<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- section5(오시는 길) 영역 시작 -->
<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/54/2/intl/ko_ALL/common.js"></script>
<script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/54/2/intl/ko_ALL/util.js"></script></head>

<section class="section-dark" id="location">
    <div class="container">
        <div class="has-text-centered">
            <br><br>
            <h2 class="section-title mb-20" style="font-weight: bold;">오시는 길</h2>
        </div>
        <div class="is-center">
            <div id="map" style="margin: 0px auto; width: 700px; height: 400px; background: white;"></div>
        </div>
        <hr>
        <div style="border: grey; margin-left: 350px;">
            <h4 class="mb-20"> <i class="fa-solid fa-location-dot"></i> 주소 </h4>
            <p class="mb-50"> 서울 금천구 디지털로9길 23 마리오아울렛2관 <p>
            <h4 class="mb-20"> <i class="fa-solid fa-mobile"></i> Tel</h4>
            <p class="mb-50"> 011-234-3515 </p>
            <h4 class="mb-20"> <i class="fa-solid fa-fax"></i> Fax </h4>
            <p class="mb-50"> 02-1111-111 </p>
        </div>
    </div>
</section>
<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
<script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
<script type="text/javascript">
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.4786713,126.8864968), // 지도의 중심좌표
            level: 2 // 지도의 확대 레벨
        };
    var map = new daum.maps.Map(mapContainer, mapOption);
    // 마커가 표시될 위치입니다
    var markerPosition  = new daum.maps.LatLng(37.4786713,126.8864968);
    // 마커를 생성합니다
    var marker = new daum.maps.Marker({
        position: markerPosition
    });
    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    var iwContent = '<div style="padding:5px;">마리오아울렛2관<br><a href="" style="color:blue;" target="_blank"></a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
        iwPosition = new daum.maps.LatLng(37.4786713,126.8864968); //인포윈도우 표시 위치입니다
    // 인포윈도우를 생성합니다
    var infowindow = new daum.maps.InfoWindow({
        position : iwPosition,
        content : iwContent
    });
    // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
    infowindow.open(map, marker);
</script>
<!-- section5(오시는 길) 영역 끝 -->