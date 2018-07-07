<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="resources/web.css" rel="stylesheet">
<script type="text/javascript"
         src="//dapi.kakao.com/v2/maps/sdk.js?appkey=02db24425fe46e881c402f1cb276caf1&libraries=services"></script>
       <!-- jQuery와 Postcodify를 로딩한다 -->
	<script	src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
	<script src="resources/js/jquery.splendid.textchange.js"></script>
<meta charset="utf-8">
<title>좌표로 주소를 얻어내기</title>
<style>
.map_wrap {
   width: 76%;
   height: 100%;
}

.title {
   font-weight: bold;
   display: block;
}

.hAddr {
   top: 10px;
   border-radius: 2px;
   background: #fff;
   background: rgba(255, 255, 255, 0.8);
   z-index: 1;
   padding: 5px;
}

#centerAddr {
   display: block;
   margin-top: 2px;
   font-weight: normal;
}

.bAddr {
   padding: 5px;
   text-overflow: ellipsis;
   overflow: hidden;
   white-space: nowrap;
}

#11 input {
   display: inline;
   float: left;
}

.11 {
   height: 80px;
   display: block;
   float: left;
}

</style>
</head>
<body>
   <!--top_sub 부분  -->
 

      <!-- top_sub 끝 -->
      
   <jsp:include page="check_menu.jsp"></jsp:include> 
    
    <!-- top_sub2 시작-->
    	<div class="List list-component map-page">
		<div class="ListOutWrap">
			<div class="ListInfo room-info clearfix"
				data-reactid=".0.3.$=1$map:0.1.0.0">
				<i class="dabang-icon dabang-icon-angle-right icon-size-lg"></i><span
					class="icon-text"><span> </span><span></span><span>
						검색결과 </span>
						<strong>500+</strong>
						<span>개</span>
						</span><i class="hidden"
					style="cursor: pointer;"></i>
			</div>
			<div class="ListWrap list-wrap" style="opacity: 1;">
				<div class="FeatureList list-agent-area">
					<div class="Room-section">
						<div class="Room-header feature-title">
							<div class="Room-title feature-list-title">
		 <!-- /////////////////////////////////////////검색창 ////////////////////////////////////////////////////////////////////////// -->				
 								<div class="ad-area">
								<!--  검색 쿼리 창 -->
								<input type="text" name="" class="postcodify_address"  value="" style="width:200px;"/>			
								<button id="postcodify_search_button">주소찾기</button>
								<button id="search">검색</button>
								<!--  검색 쿼리창 끝 -->

								
									<span class="ad-bubble hide "><span>프리미엄 광고 중인 해당
											지역 매물입니다.</span><i class="icon dabang-icon-remove"></i></span>
								</div>
							</div>
						</div>

					</div>
				</div>
				<div class="AreaRoom new-rooms clearfix">
					<div class="Room-header new-rooms-title">
						
					</div>
					<!-- 방 리스트 보여주기 -->
					<ul class="Room-list items">
						<c:forEach var="roomVO" items="${list }">
						<li class="Room-item">
						<a href="/showDetail?rno=${roomVO.rno }" target="_blank">
							<div class="RoomItem-preview">
								<div class="RoomItem-preview__mask">
									<div class="RoomItem-preview__image"></div>
									<div class="RoomItem-preview__image"
										style="background-image: url(${roomVO.img});"></div>
									<div class="RoomItem-preview__cover"></div>
								</div>
							</div>
								<div class="RoomItem-detail">
								
									<div class="RoomItem-info">
										<div class="RoomItem-header">
											<div class="RoomItem-price">
												<p>
												
													<span class="RoomItem-price__type">${roomVO.lease_type }</span>
													<c:set var="compare" value="${roomVO.lease_type }"></c:set>
													<c:choose >
													<c:when test="${compare == '전세'}">
													 <span class="RoomsItem-price__title is-1">${roomVO.cost1 }</span>
													</c:when>
													<c:otherwise>
													<span class="RoomsItem-price__title is-1">${roomVO.cost1 }/${roomVO.cost2 }</span>
													</c:otherwise>
													</c:choose>
												</p>
											</div>
											
											
										<%-- 	<span class="room-visited">
											<i class="dabang-icon"></i></span>
										
										<c:set var="fav" value="false"></c:set>
										<span class="room-favorite">
							
									<c:choose>
									
									<c:when test="${fav == false}">
									<div class="RoomItem-icons" onclick="addlike(rno2, fav)">
									<span class="room-favorite">
										<c:set var="fav" value ="0"></c:set>
										<c:set var="rno2" value="${roomVO.rno }"></c:set>
										<i class="dabang-icon dabang-icon-heart-o icon-size-2xl"></i> 
									</span>
									</div>	
									</c:when>
									
									<c:otherwise>
										<i class="dabang-icon dabang-icon-heart icon-size-2xl"></i>
									</c:otherwise>		
							
									</c:choose> 
									</span> --%>
											<div class="RoomItem-icons">
												<span class="room-favorite"><i
													class="dabang-icon dabang-icon-heart-o icon-size-2xl"></i></span>
											</div> 
										</div>
										
										<span class="RoomItem-summary">
										<span>${roomVO.room_type }룸</span>
										<span> ${roomVO.floor2 }/${roomVO.floor1 }층</span>
										<span>${roomVO.roomsize }평 </span>
										<span> 관리비 ${roomVO.mg }만원</span>
										</span>
									
										<span class="RoomItem-title">▶▶
											${roomVO.title}</span><span class="RoomItem-date">3일전</span>
									</div>
									
									<div class="RoomItem-options">
										<span class="option-list clearfix"><span
											class="title">옵션</span><span class="ellipsis">신발장,
												가스레인지, 전자도어락</span></span>
									</div>
								</div></a></li>
								</c:forEach>
								
			
					</ul>
				</div>
			</div>
			
			<!-- 페이징 처리 -->
			<div class="ListPagination pagination-wrap">
				<ul class="Pagination" data-reactid=".0.3.$=1$map:0.1.0.2.0">
					
					<c:if test="${pageMaker.prev }">
		 				<li><a href="/search_room.do?page=${pageMaker.startPage-1 }"
		 				class="Pagination-item Pagination-item--prev disable">&lt;</a></li>
		 			</c:if>
		 			
		 			<c:forEach begin="${pageMaker.startPage }" end ="${pageMaker.endPage }" var="idx">
		 				<li <c:out value="${pageMaker.cri.page==idx? 'class=active':' ' }"/>>
		 				<a href="/search_room.do?page=${idx }" class="Pagination-item active">${idx }</a>
		 				</li>
		 			</c:forEach>
		 			
		 			<c:if test="${pageMaker.next&&pageMaker.endPage>0 }">
		 				<li><a href="/search_room.do?page=${pageMaker.endPage+1 }"
		 					class="Pagination-item Pagination-item--next">&gt;</a></li>
		 			</c:if> 
				
				
				</ul>
				
				
			</div>
			
	<!-- 
					<li><a class="Pagination-item Pagination-item--prev disable">&lt;
							PREV</a></li>
					<li><a class="Pagination-item active">1</a></li>
					<li><a class="Pagination-item ">2</a></li>
					<li><a class="Pagination-item ">3</a></li>
					<li><a class="Pagination-item ">4</a></li>
					<li><a class="Pagination-item ">5</a></li>
					<li><a class="Pagination-item ">6</a></li>
					<li><a class="Pagination-item ">7</a></li>
					<li><a class="Pagination-item ">8</a></li>
					<li><a class="Pagination-item ">9</a></li>
					<li><a class="Pagination-item ">10</a></li>
					<li><a class="Pagination-item ">11</a></li>
					<li><a class="Pagination-item Pagination-item--next">NEXT
							&gt;</a></li>
				</ul>
			</div>
			 -->
			
			
			<div class="ListLoading" style="opacity: 0; z-index: -1;">
				<div class="ListLoading-bg"></div>
				<div class="ListLoading-icon"></div>
			</div>
		</div>
	</div>
     
    <!-- top_sub2 끝-->

      <div class="map_wrap">
         <div id="map"
            style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
       
      </div>
 	
	
      

	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->  
      <script>
  	 	var Pos_addr ;
  		
  		var position =new Array();
      	
      		
      	<c:forEach var="roomVO" items="${list}"> //list배열 에서 roomVO객체의 정보를 담음  	
      			Pos_addr= "${roomVO.addr1}"; // VO객체의 주소를 변수에 담음
      			position.push(Pos_addr);  // 배열에 추가
      	</c:forEach>
    
     
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = { 
          center: new daum.maps.LatLng(36.33835,127.39276), // 지도의 중심좌표
          level: 7// 지도의 확대 레벨
      };

  var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
  var geocoder = new daum.maps.services.Geocoder();
 
  // 마커가 표시될 위치
   for(var i=0; i < position.length;i++){ //리스트만큼반복
	 
	 console.log(position[i]);
  	 geocoder.addressSearch(position[i], function(result, status) {
  		 
	    // 정상적으로 검색이 완료됐으면 
	     if (status === daum.maps.services.Status.OK) {
	    	 
	        var coords = new daum.maps.LatLng(result[0].y, result[0].x); //가져온 result결과값의 좌표를 저장
			
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new daum.maps.Marker({
	            map: map,
	            position: coords
	        });
			
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new daum.maps.InfoWindow({
	            content: '<div style="background:green; border-radius: 2px;width:150px;text-align:center;padding:6px 0;">'+ result[0].road_address.address_name +'</div>'
	        });
	        //infowindow.open(map, marker);
	        daum.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
	        daum.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});   
   } 
// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
   function makeOverListener(map, marker, infowindow) {
       return function() {
           infowindow.open(map, marker);
       };
   }

   // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
   function makeOutListener(infowindow) {
       return function() {
           infowindow.close();
       };
   }
 
  //검색 쿼리
  $(function() {
			$("#postcodify_search_button").postcodifyPopUp();
			
   });
  $("#search").click(function() {
	  	var test = $(".postcodify_address").val();
		console.log(test);
		var geocoder = new daum.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(test, function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === daum.maps.services.Status.OK) {

		       
		        // 지도를 1레벨 내립니다 (지도가 확대됩니다)
		        map.setLevel(4);
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
	});
	
</script>
</body>
</html>