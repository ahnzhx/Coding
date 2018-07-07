<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="top.jsp" flush="false" />

<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 350px;
}

#category {
	position: absolute;
	top: 10px;
	left: 10px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #fff;
	overflow: hidden;
	z-index: 2;
}

#category li {
	float: left;
	list-style: none;
	width: 50px; px;
	border-right: 1px solid #acacac;
	padding: 6px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .category_bg {
	background:
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png)
		no-repeat;
}

#category li .bank {
	background-position: -10px 0;
}

#category li .mart {
	background-position: -10px -36px;
}

#category li .pharmacy {
	background-position: -10px -72px;
}

#category li .oil {
	background-position: -10px -108px;
}

#category li .cafe {
	background-position: -10px -144px;
}

#category li .store {
	background-position: -10px -180px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	cursor: default;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
}
.detail-wrap .details .details-inner .detail-content-left .detail-content table td {
    font-weight: bold;
    text-align: left;
    color: #000;
}
</style>
<div class="detail-page">
	<div class="container">
		<div id="detail-component">
			<div class="detail-wrap" data-reactid=".0">
				<div class="photos" data-reactid=".0.0">
					<div class="photos-header" data-reactid=".0.0.0">
						<div class="seq" data-reactid=".0.0.0.0">
							<span data-reactid=".0.0.0.0.0"> </span>
						</div>
						<form role="form" method="post">
							<input type='hidden' name='rno' value="${info.rno }">
						</form>

						<div class="index" data-reactid=".0.0.0.1"></div>
					</div>
					<div
						style="overflow: hidden; visibility: visible; position: relative; width: 100%;"
						data-reactid=".0.0.1">
						<div style="overflow: hidden; position: relative; width: 7040px;"
							data-reactid=".0.0.1.0">
							<div
								style="float: left; width: 640px; position: relative; left: 0px; transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);"
								class="photo"
								data-reactid=".0.0.1.0.$=1$c7b9bdd5-7f73-4d3e-8a0e-7b0669b623bb:0"
								data-index="0">
								<div class="photo-bg" style="background-image:url(${info.img});"
									data-reactid=".0.0.1.0.$=1$c7b9bdd5-7f73-4d3e-8a0e-7b0669b623bb:0.0"></div>
								<div class="watermark"
									data-reactid=".0.0.1.0.$=1$c7b9bdd5-7f73-4d3e-8a0e-7b0669b623bb:0.1">
								</div>
							</div>
							<%-- <div style="float: left; width: 640px; position: relative; left: -640px; transition-duration: 0ms;
		transform: translate(640px, 0px) translateZ(0px);" class="photo" 
		data-reactid=".0.0.1.0.$=1$84dd28de-2f86-4024-a753-b87e2469a18d:0" data-index="1">
		<div class="photo-bg" style="background-image:url(https://d1774jszgerdmk.cloudfront.net/1024/84dd28de-2f86-4024-a753-b87e2469a18d);"
		 data-reactid=".0.0.1.0.$=1$84dd28de-2f86-4024-a753-b87e2469a18d:0.0">
		</div>
		<div class="watermark" data-reactid=".0.0.1.0.$=1$84dd28de-2f86-4024-a753-b87e2469a18d:0.1">
		</div>
		</div>
		<div style="float: left; width: 640px; position: relative; left: -1280px; 
		transition-duration: 0ms; transform: translate(640px, 0px) translateZ(0px);" 
		class="photo" data-reactid=".0.0.1.0.$=1$a4cc93fa-7762-4355-9efa-2a9489206bdc:0" data-index="2">
		<div class="photo-bg" style="background-image:url(https://d1774jszgerdmk.cloudfront.net/1024/a4cc93fa-7762-4355-9efa-2a9489206bdc);"
		 data-reactid=".0.0.1.0.$=1$a4cc93fa-7762-4355-9efa-2a9489206bdc:0.0">
		 </div>
		 <div class="watermark" data-reactid=".0.0.1.0.$=1$a4cc93fa-7762-4355-9efa-2a9489206bdc:0.1">
		 </div>
		 </div>
		 <div style="float: left; width: 640px; position: relative; left: -1920px; 
		 transition-duration: 0ms; transform: translate(640px, 0px) translateZ(0px);" 
		 class="photo" data-reactid=".0.0.1.0.$=1$2a55859e-1b02-40b5-a262-5070f5394b4e:0" data-index="3">
		 <div class="photo-bg" style="background-image:url(https://d1774jszgerdmk.cloudfront.net/1024/2a55859e-1b02-40b5-a262-5070f5394b4e);"
		  data-reactid=".0.0.1.0.$=1$2a55859e-1b02-40b5-a262-5070f5394b4e:0.0">
		  </div>
		  <div class="watermark" data-reactid=".0.0.1.0.$=1$2a55859e-1b02-40b5-a262-5070f5394b4e:0.1">
		  </div>
		  </div>
		  <div style="float: left; width: 640px; position: relative; left: -2560px;
		   transition-duration: 0ms; transform: translate(640px, 0px) translateZ(0px);" 
		   class="photo" data-reactid=".0.0.1.0.$=1$b604f484-8dde-4091-ae82-69239e72987b:0" data-index="4">
		   <div class="photo-bg" style="background-image:url(${roomVO.img});" data-reactid=".0.0.1.0.$=1$b604f484-8dde-4091-ae82-69239e72987b:0.0"></div><div class="watermark" data-reactid=".0.0.1.0.$=1$b604f484-8dde-4091-ae82-69239e72987b:0.1"></div></div><div style="float: left; width: 640px; position: relative; left: -3200px; transition-duration: 0ms; transform: translate(640px, 0px) translateZ(0px);" class="photo" data-reactid=".0.0.1.0.$=1$5316338b-f172-4d09-a1a3-cbd92b645dd1:0" data-index="5"><div class="photo-bg" 
		   style="background-image:url(${roomVO.img});" 
		   data-reactid=".0.0.1.0.$=1$5316338b-f172-4d09-a1a3-cbd92b645dd1:0.0">
		   </div>
		   <div class="watermark" data-reactid=".0.0.1.0.$=1$5316338b-f172-4d09-a1a3-cbd92b645dd1:0.1">
		   </div>
		   </div>
		   <div style="float: left; width: 640px; position: relative; left: -3840px; 
		   transition-duration: 0ms; transform: translate(640px, 0px) translateZ(0px);" 
		   class="photo" data-reactid=".0.0.1.0.$=1$7dfacfae-c49f-4f7a-b515-ffa355dedca1:0" data-index="6">
		   <div class="photo-bg" style="background-image:url(${roomVO.img});"
		    data-reactid=".0.0.1.0.$=1$7dfacfae-c49f-4f7a-b515-ffa355dedca1:0.0">
		    </div>
		    <div class="watermark" data-reactid=".0.0.1.0.$=1$7dfacfae-c49f-4f7a-b515-ffa355dedca1:0.1">
		    </div>
		    </div>
		    <div style="float: left; width: 640px; position: relative; left: -4480px; transition-duration: 0ms; 
		    transform: translate(640px, 0px) translateZ(0px);" class="photo" 
		    data-reactid=".0.0.1.0.$=1$17cc3326-e18a-49b8-b9af-ebbcc83e0767:0" data-index="7">
		    <div class="photo-bg" style="background-image:url(${roomVO.img});"
			data-reactid=".0.0.1.0.$=1$17cc3326-e18a-49b8-b9af-ebbcc83e0767:0.0">
			</div>
			<div class="watermark" data-reactid=".0.0.1.0.$=1$17cc3326-e18a-49b8-b9af-ebbcc83e0767:0.1">
			</div>
			</div>
			<div style="float: left; width: 640px; position: relative; left: -5120px; transition-duration: 0ms; 
			transform: translate(640px, 0px) translateZ(0px);" class="photo" data-reactid=".0.0.1.0.$=1$c8685599-73cd-43e4-8ffd-37fceb3e78c6:0" data-index="8">
			<div class="photo-bg" style="background-image:url(${roomVO.img});"
			 data-reactid=".0.0.1.0.$=1$c8685599-73cd-43e4-8ffd-37fceb3e78c6:0.0">
			 </div>
			 <div class="watermark" data-reactid=".0.0.1.0.$=1$c8685599-73cd-43e4-8ffd-37fceb3e78c6:0.1">
			 </div>
			 </div>
			 <div style="float: left; width: 640px; position: relative; left: -5760px; transition-duration: 0ms; 
			 transform: translate(640px, 0px) translateZ(0px);" class="photo" data-reactid=".0.0.1.0.$=1$826a1f47-29f6-491d-8638-8f70b892ec53:0" data-index="9">
			 <div class="photo-bg" style="background-image:url(${roomVO.img});"
			  data-reactid=".0.0.1.0.$=1$826a1f47-29f6-491d-8638-8f70b892ec53:0.0">
			  </div>
			  <div class="watermark" data-reactid=".0.0.1.0.$=1$826a1f47-29f6-491d-8638-8f70b892ec53:0.1">
			  </div>
			  </div>
			  <div style="float: left; width: 640px; position: relative; left: -6400px; transition-duration: 0ms; 
			  transform: translate(-640px, 0px) translateZ(0px);" class="photo" data-reactid=".0.0.1.0.$=1$67da2a20-4956-4384-8b82-657e73c93768:0" data-index="10">
			  <div class="photo-bg" style="background-image:url(https://d1774jszgerdmk.cloudfront.net/1024/67da2a20-4956-4384-8b82-657e73c93768);" 
			  data-reactid=".0.0.1.0.$=1$67da2a20-4956-4384-8b82-657e73c93768:0.0">
			  </div>
			  <div class="watermark" data-reactid=".0.0.1.0.$=1$67da2a20-4956-4384-8b82-657e73c93768:0.1">
			  </div>
			  </div>
			  </div>
			  </div>
		 --%>
							<div class="prev" data-reactid=".0.0.2">
								<button class="arrow btn-no-border btn-no-bg"
									data-reactid=".0.0.2.0"></button>
							</div>
							<div class="next" data-reactid=".0.0.3">
								<button class="arrow btn-no-border btn-no-bg"
									data-reactid=".0.0.3.0"></button>
							</div>
						</div>
						<div class="infos" data-reactid=".0.1">


							<div data-reactid=".0.1.0">
								<div class="room-info-wrap clearfix" style="text-align:left;"data-reactid=".0.1.0.0">
									<div class="room-info-inner" data-reactid=".0.1.0.0.0">
										<div class="room-info" data-reactid=".0.1.0.0.0.0">
											<div class="room-type-wrap" data-reactid=".0.1.0.0.0.0.0">

												<h2 data-reactid=".0.1.0.0.0.0.0.0">
													<span class="room-title" data-reactid=".0.1.0.0.0.0.0.0.0">
														<span class="room-types"
														data-reactid=".0.1.0.0.0.0.0.0.0.0">${info.room_type }룸</span>
														<span class="room-price is-0"
														data-reactid=".0.1.0.0.0.0.0.0.0.1"> <span
															data-reactid=".0.1.0.0.0.0.0.0.0.1.0">
																${info.cost1 }/${info.cost2 }</span> <span class="won"
															style="margin-left: 3px;"
															data-reactid=".0.1.0.0.0.0.0.0.0.1.1">만원</span>
													</span>
													</span>
												</h2>
											</div>
											<div class="room-description-wrap"
												data-reactid=".0.1.0.0.0.0.1">
												<div class="title" data-reactid=".0.1.0.0.0.0.1.0">
													<p data-reactid=".0.1.0.0.0.0.1.0.0">※★♥${info.title }♥★※</p>
												</div>
												<div class="address" data-reactid=".0.1.0.0.0.0.1.1">
													<p data-reactid=".0.1.0.0.0.0.1.1.0">${info.addr1 },
														${info.addr2}</p>
												</div>
											</div>
										</div>
										<div class="room-tag-list-wrap" data-reactid=".0.1.0.0.0.1">
											<ul data-reactid=".0.1.0.0.0.1.0">
												<li class="tag" style="cursor: default;"
													data-reactid=".0.1.0.0.0.1.0.$0"><span
													data-reactid=".0.1.0.0.0.1.0.$0.0">#단기가능</span></li>
												<li class="tag" style="cursor: default;"
													data-reactid=".0.1.0.0.0.1.0.$1"><span
													data-reactid=".0.1.0.0.0.1.0.$1.0">#주차</span></li>
											</ul>
										</div>
										<div class="room-info-button-wrap clearfix"
											data-reactid=".0.1.0.0.0.2">
											<div class="room-favorite" data-reactid=".0.1.0.0.0.2.0">
												<h2 data-reactid=".0.1.0.0.0.2.0.0">
													<button class="btn btn-xs border-radius-xsmall btn-default"
														data-reactid=".0.1.0.0.0.2.0.0.0">
														<i class="dabang-icon dabang-icon-heart icon-size-xl"
															data-reactid=".0.1.0.0.0.2.0.0.0.0"></i> <span
															class="icon-text" data-reactid=".0.1.0.0.0.2.0.0.0.1">찜</span>
													</button>
												</h2>
											</div>
											<div class="room-report" data-reactid=".0.1.0.0.0.2.1">
												<div class="report" data-reactid=".0.1.0.0.0.2.1.0">
													<h2 data-reactid=".0.1.0.0.0.2.1.0.0">
														<button
															class="btn btn-xs btn-default border-radius-xsmall"
															data-reactid=".0.1.0.0.0.2.1.0.0.0">
															<i class="dabang-icon dabang-icon-siren icon-size-2xl"
																data-reactid=".0.1.0.0.0.2.1.0.0.0.0"></i> <span
																class="icon-text" data-reactid=".0.1.0.0.0.2.1.0.0.0.1">신고</span>
														</button>
													</h2>
												</div>
											</div>
										</div>
									</div>
								</div>



								<div class="agent-info" data-reactid=".0.1.0.1">
									<div class="user-info-wrap" data-reactid=".0.1.0.1.0">
										<div class="info" data-reactid=".0.1.0.1.0.0">
											<div class="name-wrap" data-reactid=".0.1.0.1.0.0.0">
												<h2 data-reactid=".0.1.0.1.0.0.0.0">
													<div class="name-agent font-10"
														data-reactid=".0.1.0.1.0.0.0.0.0">OK공인중개사사무소</div>
													<div class="name-agent representative font-10"
														data-reactid=".0.1.0.1.0.0.0.0.1">
														<span data-reactid=".0.1.0.1.0.0.0.0.1.0">대표: </span> <span
															data-reactid=".0.1.0.1.0.0.0.0.1.1">윤소연</span>
													</div>
													<div class="name" data-reactid=".0.1.0.1.0.0.0.0.2">
														<div class="responsibility"
															data-reactid=".0.1.0.1.0.0.0.0.2.0">[담당자]</div>
														<span data-reactid=".0.1.0.1.0.0.0.0.2.1"> <span
															class="name-staff" data-reactid=".0.1.0.1.0.0.0.0.2.1.0">
																<span data-reactid=".0.1.0.1.0.0.0.0.2.1.0.0">서태원</span>
																<span data-reactid=".0.1.0.1.0.0.0.0.2.1.0.1"> </span> <span
																data-reactid=".0.1.0.1.0.0.0.0.2.1.0.2">과장</span> <span
																data-reactid=".0.1.0.1.0.0.0.0.2.1.0.3">(</span> <span
																data-reactid=".0.1.0.1.0.0.0.0.2.1.0.4">중개보조원</span> <span
																data-reactid=".0.1.0.1.0.0.0.0.2.1.0.5">)</span>
														</span>
														</span>
													</div>
												</h2>
											</div>
											<div class="address-wrap" data-reactid=".0.1.0.1.0.0.1">
												<span data-reactid=".0.1.0.1.0.0.1.0">인천광역시 남동구
													석촌로46번길 46, 103호(간석동 렉스타원)</span>
											</div>
											<div class="number" data-reactid=".0.1.0.1.0.0.2">
												<span data-reactid=".0.1.0.1.0.0.2.0"> <span
													data-reactid=".0.1.0.1.0.0.2.0.0">중개등록번호 </span> <span
													data-reactid=".0.1.0.1.0.0.2.0.1">28200-2015-07374</span>
												</span>
											</div>
										</div>
									</div>
									<p class="agent-notice" data-reactid=".0.1.0.1.1">
										<i class="icon dabang-icon-exclamation-circle"
											data-reactid=".0.1.0.1.1.0"></i> <span
											data-reactid=".0.1.0.1.1.1">중개사와의 거래 시 수수료가 발생하니
											참고하세요.</span>
									</p>
									<div class="contact-view-button-wrap" data-reactid=".0.1.0.1.2">
										<h2 data-reactid=".0.1.0.1.2.0">
											<button class="btn btn-blue btn-md border-radius-xsmall"
												data-reactid=".0.1.0.1.2.0.0">
												<i class="dabang-icon dabang-icon-user icon-size-xl"
													data-reactid=".0.1.0.1.2.0.0.0"></i> <span
													class="icon-text" data-reactid=".0.1.0.1.2.0.0.1">연락처
													보기</span>
											</button>
										</h2>
									</div>
								</div>
							</div>
						</div>
						<div class="details clearfix" data-reactid=".0.2">
							<div class="details-inner clearfix" data-reactid=".0.2.0">
								<div class="detail-content-left" data-reactid=".0.2.0.0">
									<div class="details-room-info" data-reactid=".0.2.0.0.0">
										<div class="title-wrap clearfix" data-reactid=".0.2.0.0.0.0">
											<div class="title" data-reactid=".0.2.0.0.0.0.0">
												<h2 data-reactid=".0.2.0.0.0.0.0.0">매물정보</h2>
											</div>
										</div>

										<!-- 매물정보 -->


										<div class="detail-content"  data-reactid=".0.2.0.0.0.1">
											<div data-reactid=".0.2.0.0.0.1.0.2.0.0"></div>
											<table data-reactid=".0.2.0.0.0.1.0">
												<caption class="caption" data-reactid=".0.2.0.0.0.1.0.0">매물
													정보</caption>
												<colgroup data-reactid=".0.2.0.0.0.1.0.1">
													<col style="width: 150px;"
														data-reactid=".0.2.0.0.0.1.0.1.0">
													<col style="width: 170px;"
														data-reactid=".0.2.0.0.0.1.0.1.1">
													<col style="width: 113px;"
														data-reactid=".0.2.0.0.0.1.0.1.2">
													<col style="width: 207px;"
														data-reactid=".0.2.0.0.0.1.0.1.3">
												</colgroup>
												<tbody data-reactid=".0.2.0.0.0.1.0.2">
													<tr data-reactid=".0.2.0.0.0.1.0.2.0">
														<th data-reactid=".0.2.0.0.0.1.0.2.0.0.0">보증금 / 월세</th>
														<td class="padding" data-reactid=".0.2.0.0.0.1.0.2.0.0.1">${info.cost1 }/${info.cost2 }</td>
														<th data-reactid=".0.2.0.0.0.1.0.2.0.1">방 종류</th>
														<td data-reactid=".0.2.0.0.0.1.0.2.0.2">${info.room_type }개</td>
													</tr>
													<tr data-reactid=".0.2.0.0.0.1.0.2.1">
														<th data-reactid=".0.2.0.0.0.1.0.2.1.0">해당 층 / 건물 층</th>
														<td class="padding" data-reactid=".0.2.0.0.0.1.0.2.1.1">${info.floor2}층
															/ ${info.floor1 }층</td>
														<th data-reactid=".0.2.0.0.0.1.0.2.1.2"><span
															data-reactid=".0.2.0.0.0.1.0.2.1.2.0">전용 </span> <span
															data-reactid=".0.2.0.0.0.1.0.2.1.2.1"></span> <span
															data-reactid=".0.2.0.0.0.1.0.2.1.2.2">면적</span></th>
														<td data-reactid=".0.2.0.0.0.1.0.2.1.3"><span
															data-reactid=".0.2.0.0.0.1.0.2.1.3.0"> <span
																data-reactid=".0.2.0.0.0.1.0.2.1.3.0.0">${info.roomsize }평</span>
																<span data-reactid=".0.2.0.0.0.1.0.2.1.3.0.1"></span> <sup
																data-reactid=".0.2.0.0.0.1.0.2.1.3.0.2"></sup>
														</span> </span>
															<p class="pyeong-wrap"
																data-reactid=".0.2.0.0.0.1.0.2.1.3.3">
																<button
																	class="dabang-icon dabang-icon-refresh-square-1 icon-size-4xl btn-pyeong btn-no-border btn-no-bg"
																	data-reactid=".0.2.0.0.0.1.0.2.1.3.3.0"></button>
															</p></td>
													</tr>
													<tr data-reactid=".0.2.0.0.0.1.0.2.2">
														<th data-reactid=".0.2.0.0.0.1.0.2.2.0">관리비</th>
														<td class="padding" data-reactid=".0.2.0.0.0.1.0.2.2.1">4.5
															만원</td>
														<th data-reactid=".0.2.0.0.0.1.0.2.2.2">관리비포함항목</th>
														<td data-reactid=".0.2.0.0.0.1.0.2.2.3">인터넷, 유선 TV,
															청소비</td>
													</tr>
													<tr data-reactid=".0.2.0.0.0.1.0.2.3">
														<th data-reactid=".0.2.0.0.0.1.0.2.3.0">난방종류</th>
														<td class="padding" data-reactid=".0.2.0.0.0.1.0.2.3.1">개별난방</td>
														<th data-reactid=".0.2.0.0.0.1.0.2.3.2" style="text-align:left;">입주가능일</th>
														
														<td data-reactid=".0.2.0.0.0.1.0.2.3.3">즉시 입주</td>
													</tr>
													<tr data-reactid=".0.2.0.0.0.1.0.2.4">
														<th data-reactid=".0.2.0.0.0.1.0.2.4.0">주차</th>
														<td class="padding" data-reactid=".0.2.0.0.0.1.0.2.4.1">
															<span data-reactid=".0.2.0.0.0.1.0.2.4.1.0">가능</span> <span
															data-reactid=".0.2.0.0.0.1.0.2.4.1.1"> </span> <span
															data-reactid=".0.2.0.0.0.1.0.2.4.1.2"></span>
														</td>
														<th data-reactid=".0.2.0.0.0.1.0.2.4.2">반려동물</th>
														<td data-reactid=".0.2.0.0.0.1.0.2.4.3">불가능</td>
													</tr>
													<tr data-reactid=".0.2.0.0.0.1.0.2.5">
														<th data-reactid=".0.2.0.0.0.1.0.2.5.0">엘리베이터</th>
														<td class="padding" data-reactid=".0.2.0.0.0.1.0.2.5.1">있음</td>
														<th data-reactid=".0.2.0.0.0.1.0.2.5.2"></th>
														<td data-reactid=".0.2.0.0.0.1.0.2.5.3"></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="details-option" data-reactid=".0.2.0.0.1">
										<div class="title-wrap clearfix" data-reactid=".0.2.0.0.1.0">
											<div class="title" data-reactid=".0.2.0.0.1.0.0">




												<div class="details-description" data-reactid=".0.2.0.0.2">
													<div class="title-wrap clearfix"
														data-reactid=".0.2.0.0.2.0">
														<div class="title" data-reactid=".0.2.0.0.2.0.0">
															<h2 data-reactid=".0.2.0.0.2.0.0.0">상세설명</h2>
														</div>

													<pre
														style="font-family: Nanum Gothic, sans-serif; margin-bottom: 0;"
														data-reactid=".0.2.0.0.2.1">
${info.title }
</pre>
												</div>
											</div>
										</div>
									</div>
								</div>


								<div class="map_wrap">
									<div id="map"
										style="width: 100%; height: 100%; position: absolute; z-index =999; overflow: hidden;"></div>

								</div>
								<script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
								<script type="text/javascript"
									src="//dapi.kakao.com/v2/maps/sdk.js?appkey=02db24425fe46e881c402f1cb276caf1&libraries=services"></script>


								<div class="map_wrap">
									<div id="map"
										style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
									<ul id="category">
										<li id="BK9" data-order="0"><span
											class="category_bg bank"></span> 은행</li>
										<li id="MT1" data-order="1"><span
											class="category_bg mart"></span> 마트</li>
										<li id="PM9" data-order="2"><span
											class="category_bg pharmacy"></span> 약국</li>
										<li id="OL7" data-order="3"><span class="category_bg oil"></span>
											주유소</li>
										<li id="CE7" data-order="4"><span
											class="category_bg cafe"></span> 카페</li>
										<li id="CS2" data-order="5"><span
											class="category_bg store"></span> 편의점</li>
									</ul>
								</div>

								<script>
									// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
									var placeOverlay = new daum.maps.CustomOverlay(
											{
												zIndex : 1
											}), contentNode = document
											.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
									markers = [], // 마커를 담을 배열입니다
									currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다

									var mapContainer = document
											.getElementById('map'), // 지도를 표시할 div 
									mapOption = {
										center : new daum.maps.LatLng(36.33835,
												127.39276), // 지도의 중심좌표
										level : 5
									// 지도의 확대 레벨
									};
									////////////////////////////////////지도 센터정하기

									// 지도를 생성합니다    
									var map = new daum.maps.Map(mapContainer,
											mapOption);

									// 장소 검색 객체를 생성합니다
									var ps = new daum.maps.services.Places(map);

									// 지도에 idle 이벤트를 등록합니다
									daum.maps.event.addListener(map, 'idle',
											searchPlaces);

									// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
									contentNode.className = 'placeinfo_wrap';

									// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
									// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 daum.maps.event.preventMap 메소드를 등록합니다 
									addEventHandle(contentNode, 'mousedown',
											daum.maps.event.preventMap);
									addEventHandle(contentNode, 'touchstart',
											daum.maps.event.preventMap);

									// 커스텀 오버레이 컨텐츠를 설정합니다
									placeOverlay.setContent(contentNode);

									// 각 카테고리에 클릭 이벤트를 등록합니다
									addCategoryClickEvent();

									// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
									function addEventHandle(target, type,
											callback) {
										if (target.addEventListener) {
											target.addEventListener(type,
													callback);
										} else {
											target.attachEvent('on' + type,
													callback);
										}
									}

									// 카테고리 검색을 요청하는 함수입니다
									function searchPlaces() {
										if (!currCategory) {
											return;
										}

										// 커스텀 오버레이를 숨깁니다 
										placeOverlay.setMap(null);

										// 지도에 표시되고 있는 마커를 제거합니다
										removeMarker();

										ps.categorySearch(currCategory,
												placesSearchCB, {
													useMapBounds : true
												});
									}

									// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
									function placesSearchCB(data, status,
											pagination) {
										if (status === daum.maps.services.Status.OK) {

											// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
											displayPlaces(data);
										} else if (status === daum.maps.services.Status.ZERO_RESULT) {
											// 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

										} else if (status === daum.maps.services.Status.ERROR) {
											// 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

										}
									}

									// 지도에 마커를 표출하는 함수입니다
									function displayPlaces(places) {

										// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
										// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
										var order = document.getElementById(
												currCategory).getAttribute(
												'data-order');

										for (var i = 0; i < places.length; i++) {

											// 마커를 생성하고 지도에 표시합니다
											var marker = addMarker(
													new daum.maps.LatLng(
															places[i].y,
															places[i].x), order);

											// 마커와 검색결과 항목을 클릭 했을 때
											// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
											(function(marker, place) {
												daum.maps.event
														.addListener(
																marker,
																'click',
																function() {
																	displayPlaceInfo(place);
																});
											})(marker, places[i]);
										}
									}

									// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
									function addMarker(position, order) {
										var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
										imageSize = new daum.maps.Size(27, 28), // 마커 이미지의 크기
										imgOptions = {
											spriteSize : new daum.maps.Size(72,
													208), // 스프라이트 이미지의 크기
											spriteOrigin : new daum.maps.Point(
													46, (order * 36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
											offset : new daum.maps.Point(11, 28)
										// 마커 좌표에 일치시킬 이미지 내에서의 좌표
										}, markerImage = new daum.maps.MarkerImage(
												imageSrc, imageSize, imgOptions), marker = new daum.maps.Marker(
												{
													position : position, // 마커의 위치
													image : markerImage
												});

										marker.setMap(map); // 지도 위에 마커를 표출합니다
										markers.push(marker); // 배열에 생성된 마커를 추가합니다

										return marker;
									}

									// 지도 위에 표시되고 있는 마커를 모두 제거합니다
									function removeMarker() {
										for (var i = 0; i < markers.length; i++) {
											markers[i].setMap(null);
										}
										markers = [];
									}

									// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
									function displayPlaceInfo(place) {
										var content = '<div class="placeinfo">'
												+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
												+ place.place_name + '</a>';

										if (place.road_address_name) {
											content += '    <span title="' + place.road_address_name + '">'
													+ place.road_address_name
													+ '</span>'
													+ '  <span class="jibun" title="' + place.address_name + '">(지번 : '
													+ place.address_name
													+ ')</span>';
										} else {
											content += '    <span title="' + place.address_name + '">'
													+ place.address_name
													+ '</span>';
										}

										content += '    <span class="tel">'
												+ place.phone + '</span>'
												+ '</div>'
												+ '<div class="after"></div>';

										contentNode.innerHTML = content;
										placeOverlay
												.setPosition(new daum.maps.LatLng(
														place.y, place.x));
										placeOverlay.setMap(map);
									}

									// 각 카테고리에 클릭 이벤트를 등록합니다
									function addCategoryClickEvent() {
										var category = document
												.getElementById('category'), children = category.children;

										for (var i = 0; i < children.length; i++) {
											children[i].onclick = onClickCategory;
										}
									}

									// 카테고리를 클릭했을 때 호출되는 함수입니다
									function onClickCategory() {
										var id = this.id, className = this.className;

										placeOverlay.setMap(null);

										if (className === 'on') {
											currCategory = '';
											changeCategoryClass();
											removeMarker();
										} else {
											currCategory = id;
											changeCategoryClass(this);
											searchPlaces();
										}
									}

									// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
									function changeCategoryClass(el) {
										var category = document
												.getElementById('category'), children = category.children, i;

										for (i = 0; i < children.length; i++) {
											children[i].className = '';
										}

										if (el) {
											el.className = 'on';
										}
									}
								</script>