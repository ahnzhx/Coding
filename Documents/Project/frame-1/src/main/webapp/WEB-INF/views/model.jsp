<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="web.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>


<body>
	<div class="filter clearfix">
		<div class="filter-dash"></div>
		<div class="filter-dropdown">
			<div class="title">
				<h2 class="name">매물종류</h2>
				<i class="dabang-icon icon-size-sm dabang-icon-sort-desc"></i>
			</div>
			<div class="content hidden" style="width: 146px;">
				<div class="filter-item deal-type detail-content">
					<div class="popup-title">
						<span>매물종류</span>
					</div>
					<div>
						 <label class="checkbox-wrap clearfix"> -<input
							class="checkbox" type="checkbox" checked="" value="월세 + 전세"><span
							class="name">월세 + 전세</span></label><label
							class="checkbox-wrap clearfix"><input class="checkbox"
							type="checkbox" value="월세"><span class="name">월세</span></label><label
							class="checkbox-wrap clearfix"><input class="checkbox"
							type="checkbox" value="전세"><span class="name">전세</span><!-- </label> -->
					</div>
				</div>
			</div>
		</div>
		<div class="filter-dash"></div>
		<div class="filter-dropdown">
			<div class="title">
				<h2 class="name">거래종류</h2>
				<i class="dabang-icon icon-size-sm dabang-icon-sort-desc"></i>
			</div>
			<div class="content hidden" style="width: 146px;">
				<div class="filter-item deal-type detail-content">
					<div class="popup-title">
						<span>거래종류</span>
					</div>
					<div>
						<label class="checkbox-wrap clearfix"><input
							class="checkbox" type="checkbox" checked="" value="전체"><span
							class="name">전체</span></label><label
							class="checkbox-wrap clearfix"><input class="checkbox"
							type="checkbox" value="중개"><span class="name">중개</span></label><label
							class="checkbox-wrap clearfix"><input class="checkbox"
							type="checkbox" value="직거래"><span class="name">직거래</span></label>
					</div>
				</div>
			</div>
		</div>
		<div class="filter-dash"></div>
		<div class="filter-dropdown">
			<div class="title">
				<h2 class="name">
					<span><span>방 종류</span><span class="hidden">6</span></span>
				</h2>
				<i class="dabang-icon icon-size-sm dabang-icon-sort-desc"></i>
			</div>
			<div class="content hidden" style="width: 146px;">
				<div class="filter-item filter-small-view">
					<div class="popup-title">
						<span>방 종류</span>
					</div>
					<div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" checked="" value="전체"><span
								class="name">전체</span></label>
						</div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="원룸"><span
								class="name">원룸</span></label>
						</div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="1.5룸"><span
								class="name">1.5룸</span></label>
						</div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="투룸"><span
								class="name">투룸</span></label>
						</div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="쓰리룸"><span
								class="name">쓰리룸</span></label>
						</div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="오피스텔"><span
								class="name">오피스텔</span></label>
						</div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="아파트"><span
								class="name">아파트</span></label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="filter-dash"></div>
		<div class="filter-dropdown">
			<div class="title">
				<h2 class="name">
					<span><span><i class="filter-icon deposit"></i></span><span>4,000
							만원</span><span class="swing" style="display: inline; margin: 0 5px;">~</span><span>4,000
							만원</span></span>
				</h2>
				<i class="dabang-icon icon-size-sm dabang-icon-sort-desc"></i>
			</div>
			<div class="content hidden" style="width: 241px;">
				<div class="filter-item filter-small-view price-filter">
					<div class="popup-title">
						<span>보증금 가격</span>
					</div>
					<p class="placeholder">보증금 (ex. 10,000만원 = 1억원)</p>
					<input class="input1" type="number" value="0">
					<div class="swing">~</div>
					<input class="input2" type="number" value="0">
					<div class="price-line"></div>
					<div class="clearfix">
						<div class="price-select-list from">
							<ul class="price-list">
								<li class="price-item"><span>0 만원</span></li>
								<li class="price-item"><span>100 만원</span></li>
								<li class="price-item"><span>500 만원</span></li>
								<li class="price-item"><span>1,000 만원</span></li>
								<li class="price-item"><span>2,000 만원</span></li>
								<li class="price-item"><span>3,000 만원</span></li>
								<li class="price-item active"><span>4,000
										만원</span></li>
								<li class="price-item"><span>5,000 만원</span></li>
								<li class="price-item"><span>6,000 만원</span></li>
								<li class="price-item"><span>7,000 만원</span></li>
								<li class="price-item"><span>8,000 만원</span></li>
								<li class="price-item"><span>9,000 만원</span></li>
								<li class="price-item"><span>10,000 만원</span></li>
								<li class="price-item"><span>무제한</span></li>
							</ul>
						</div>
						<div class="price-select-list to">
							<ul class="price-list">
								<li class="price-item"><span>0 만원</span></li>
								<li class="price-item"><span>100 만원</span></li>
								<li class="price-item"><span>500 만원</span></li>
								<li class="price-item"><span>1,000 만원</span></li>
								<li class="price-item"><span>2,000 만원</span></li>
								<li class="price-item"><span>3,000 만원</span></li>
								<li class="price-item active"><span>4,000
										만원</span></li>
								<li class="price-item"><span>5,000 만원</span></li>
								<li class="price-item"><span>6,000 만원</span></li>
								<li class="price-item"><span>7,000 만원</span></li>
								<li class="price-item"><span>8,000 만원</span></li>
								<li class="price-item"><span>9,000 만원</span></li>
								<li class="price-item"><span>10,000 만원</span></li>
								<li class="price-item"><span>무제한</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="filter-dash"></div>
		<div class="filter-dropdown">
			<div class="title">
				<h2 class="name">
					<span><span><i class="filter-icon price"></i></span><span>0
							만원</span><span class="swing" style="display: inline; margin: 0 5px;">~</span><span>무제한</span></span>
				</h2>
				<i class="dabang-icon icon-size-sm dabang-icon-sort-desc"></i>
			</div>
			<div class="content hidden" style="width: 241px;">
				<div class="filter-item filter-small-view price-filter">
					<div class="popup-title">
						<span>월세 가격</span>
					</div>
					<p class="hidden">보증금 (ex. 10,000만원 = 1억원)</p>
					<input class="input1" type="number" value="0">
					<div class="swing">~</div>
					<input class="input2" type="number" value="0">
					<div class="price-line"></div>
					<div class="clearfix">
						<div class="price-select-list from">
							<ul class="price-list">
								<li class="price-item active"><span>0
										만원</span></li>
								<li class="price-item"><span>10 만원</span></li>
								<li class="price-item"><span>20 만원</span></li>
								<li class="price-item"><span>30 만원</span></li>
								<li class="price-item"><span>40 만원</span></li>
								<li class="price-item"><span>50 만원</span></li>
								<li class="price-item"><span>60 만원</span></li>
								<li class="price-item"><span>70 만원</span></li>
								<li class="price-item"><span>80 만원</span></li>
								<li class="price-item"><span>90 만원</span></li>
								<li class="price-item"><span>100 만원</span></li>
								<li class="price-item"><span>무제한</span></li>
							</ul>
						</div>
						<div class="price-select-list to">
							<ul class="price-list">
								<li class="price-item"><span>0 만원</span></li>
								<li class="price-item"><span>10 만원</span></li>
								<li class="price-item"><span>20 만원</span></li>
								<li class="price-item"><span>30 만원</span></li>
								<li class="price-item"><span>40 만원</span></li>
								<li class="price-item"><span>50 만원</span></li>
								<li class="price-item"><span>60 만원</span></li>
								<li class="price-item"><span>70 만원</span></li>
								<li class="price-item"><span>80 만원</span></li>
								<li class="price-item"><span>90 만원</span></li>
								<li class="price-item"><span>100 만원</span></li>
								<li class="price-item active"><span>무제한</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="filter-dash"></div>
		<div class="filter-dropdown">
			<div class="title">
				<h2 class="name">
					<span><span>추가옵션</span><span class="hidden"></span></span>
				</h2>
				<i class="dabang-icon icon-size-sm dabang-icon-sort-desc"></i>
			</div>
			<div class="content hidden" style="width: 149px;">
				<div class="filter-item deal-type detail-content">
					<div class="popup-title">
						<span>추가옵션</span>
					</div>
					<div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="주차가능"><span
								class="name">주차가능</span></label><label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="반려동물"><span
								class="name">반려동물</span></label><label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="단기임대"><span
								class="name">단기임대</span></label><label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="360도매물"><span
								class="name">360도매물</span></label>
						</div>
						<div class="line"></div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="5평 이하"><span
								class="name">5평 이하</span></label><label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="5평 ~ 10평 이하"><span
								class="name">5평 ~ 10평 이하</span></label><label
								class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="10평 이상"><span
								class="name">10평 이상</span></label>
						</div>
						<div class="line"></div>
						<div>
							<label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="반지층"><span
								class="name">반지층</span></label><label class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="저층 1층~3층"><span
								class="name">저층 1층~3층</span></label><label
								class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="중층 4층~6층"><span
								class="name">중층 4층~6층</span></label><label
								class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="고층 7층이상"><span
								class="name">고층 7층이상</span></label><label
								class="checkbox-wrap clearfix"><input
								class="checkbox" type="checkbox" value="옥탑"><span
								class="name">옥탑</span></label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="filter-dash"></div>
	</div>