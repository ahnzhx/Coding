<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/resources/web.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
		<div id="home-component">
			<div class="container">
				<div class="MainSearch">
					<div class="MainSearch-img"></div>
					<p class="MainSearch-slogan">
						<span>원룸부터 아파트까지 다 있다, 다방</span><br> <span>1,500만
							명이 선택한 대표 부동산 앱! 고객만족도 1위, 신뢰도 1위, 매물수 1위</span>
					</p>
					<div class="MainSearch-bottom">
						<div class="SearchForm-wrap search-form-wrap">
							<div class="SearchForm search-form SearchForm--wide">
								<form>
									<div class="SearchForm-field search-input clearfix">
										<fieldset>
											<legend>방 검색</legend>
											<input type="text" class="SearchForm-input form-control"
												placeholder="관심지역 또는 매물번호를 검색해보세요" autocomplete="off">
											<button class="SearchForm-btn btn btn-blue btn-search">
												<i class="dabang-icon dabang-icon-search icon-size-xl"></i><span
													class="SearchForm-btn__text">방 검색</span>
											</button>
											<ul class="hidden" tabindex="-1"></ul>
										</fieldset>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="ThemeSearch">
					<div class="ThemeSearch-header">
						<h2 class="ThemeSearch-title">테마 검색</h2>
						<p class="ThemeSearch-subtitle">다방의 다양한 검색조건으로 방을 찾아보세요.</p>
					</div>
					<div class="ThemeSearch-contents">
						<div class="ThemeSearch-contents__wrap">
							<button class="ThemeSearch-item btn-no-border btn-no-bg"
								style="padding: 0px;">
								<div class="ThemeSearch-item__image is-pet"></div>
								<div class="ThemeSearch-item__mask"></div>
								<div class="ThemeSearch-item__typo">
									<h3 class="ThemeSearch-item__title">반려동물</h3>
									<div class="ThemeSearch-item__line"></div>
									<p class="ThemeSearch-item__desc">
										<span>반려동물과 함께 살 수 있는 방</span><br> <span>찾아보기</span>
									</p>
								</div>
							</button>
							<button class="ThemeSearch-item btn-no-border btn-no-bg"
								style="padding: 0px;">
								<div class="ThemeSearch-item__image is-guarantee"></div>
								<div class="ThemeSearch-item__mask"></div>
								<div class="ThemeSearch-item__typo">
									<h3 class="ThemeSearch-item__title">저보증금</h3>
									<div class="ThemeSearch-item__line"></div>
									<p class="ThemeSearch-item__desc">
										<span>보증금 300만원 이하인 방</span><br> <span>찾아보기</span>
									</p>
								</div>
							</button>
							<button class="ThemeSearch-item btn-no-border btn-no-bg"
								style="padding: 0px;">
								<div class="ThemeSearch-item__image is-pano"></div>
								<div class="ThemeSearch-item__mask"></div>
								<div class="ThemeSearch-item__typo">
									<h3 class="ThemeSearch-item__title">360도 매물</h3>
									<div class="ThemeSearch-item__line"></div>
									<p class="ThemeSearch-item__desc">
										<span>3D 이미지로 더 자세히 볼 수 있는 방</span><br> <span>찾아보기</span>
									</p>
								</div>
							</button>
							<button class="ThemeSearch-item btn-no-border btn-no-bg"
								style="padding: 0px;">
								<div class="ThemeSearch-item__image is-parking"></div>
								<div class="ThemeSearch-item__mask"></div>
								<div class="ThemeSearch-item__typo">
									<h3 class="ThemeSearch-item__title">주차가능</h3>
									<div class="ThemeSearch-item__line"></div>
									<p class="ThemeSearch-item__desc">
										<span>주차공간이 확보된 방</span><br> <span>찾아보기</span>
									</p>
								</div>
							</button>
							<button class="ThemeSearch-item btn-no-border btn-no-bg"
								style="padding: 0px;">
								<div class="ThemeSearch-item__image is-direct"></div>
								<div class="ThemeSearch-item__mask"></div>
								<div class="ThemeSearch-item__typo">
									<h3 class="ThemeSearch-item__title">직거래매물</h3>
									<div class="ThemeSearch-item__line"></div>
									<p class="ThemeSearch-item__desc">
										<span>중개수수료 없는 직거래 매물</span><br> <span>찾아보기</span>
									</p>
								</div>
							</button>
							<button class="ThemeSearch-item btn-no-border btn-no-bg"
								style="padding: 0px;">
								<div class="ThemeSearch-item__image is-officetel"></div>
								<div class="ThemeSearch-item__mask"></div>
								<div class="ThemeSearch-item__typo">
									<h3 class="ThemeSearch-item__title">오피스텔</h3>
									<div class="ThemeSearch-item__line"></div>
									<p class="ThemeSearch-item__desc">
										<span>깨끗하고 편리한 주거용 오피스텔</span><br> <span>찾아보기</span>
									</p>
								</div>
							</button>
						</div>
					</div>
				</div>
				<div class="visual-wrap">
					<ul class="banners"></ul>
					<ol class="positions"></ol>
				</div>
				<div class="Sitemap">
					<h2 class="sr-only">사이트맵</h2>
					<div class="Sitemap-grid">
						<div class="SitemapMenu">
							<h3 class="SitemapMenu-title">형태별 검색</h3>
							<ul class="SitemapMenu-list">
								<li><button class="btn-no-border btn-no-bg">원룸</button></li>
								<li><button class="btn-no-border btn-no-bg">투룸</button></li>
								<li><button class="btn-no-border btn-no-bg">쓰리룸</button></li>
								<li><button class="btn-no-border btn-no-bg">오피스텔</button></li>
								<li><button class="btn-no-border btn-no-bg">아파트</button></li>
							</ul>
						</div>
					</div>
					<div class="Sitemap-grid">
						<div class="SitemapMenu">
							<h3 class="SitemapMenu-title">테마별 검색</h3>
							<ul class="SitemapMenu-list">
								<li><button class="btn-no-border btn-no-bg">저보증금</button></li>
								<li><button class="btn-no-border btn-no-bg">오피스텔</button></li>
								<li><button class="btn-no-border btn-no-bg">직거래
										매물</button></li>
								<li><button class="btn-no-border btn-no-bg">주차 가능</button></li>
								<li><button class="btn-no-border btn-no-bg">반려동물
										가능</button></li>
								<li><button class="btn-no-border btn-no-bg".0.3.2.0.1.$5.0">360도
										매물</button></li>
							</ul>
						</div>
					</div>
					<div class="Sitemap-grid">
						<div class="SitemapMenu">
							<h3 class="SitemapMenu-title">공인중개사 회원가입</h3>
							<ul class="SitemapMenu-list">
								<li><a
									href="http://static.dabangapp.com/pdf/%EB%8B%A4%EB%B0%A9%EC%9D%B4%EC%9A%A9%EC%84%A4%EB%AA%85%EC%84%9C_201603.pdf"
									target="_blank">다방 이용 설명서</a></li>
								<li><a href="//pro.dabangapp.com/#/terms" target="_blank">가입신청</a></li>
							</ul>
						</div>
						<div class="SitemapMenu">
							<h3 class="SitemapMenu-title">상품소개</h3>
							<ul class="SitemapMenu-list">
								<li><a href="//pro.dabangapp.com/#/intro/product/region"
									target="_blank">동 상품</a></li>
								<li><a href="//pro.dabangapp.com/#/intro/product/subway"
									target="_blank">지하철 상품</a></li>
								<li><a href="//pro.dabangapp.com/#/intro/product/univ"
									target="_blank">캠퍼스 상품</a></li>
								<li><a href="//pro.dabangapp.com/#/intro/product/general"
									target="_blank">일반 상품</a></li>
							</ul>
						</div>
					</div>
					<div class="Sitemap-grid" style="width: 200px; padding-left: 30px;">
						<div class="SitemapMenu">
							<h3 class="SitemapMenu-title">다방 뉴스</h3>
							<ul class="SitemapMenu-list">
								<li><a
									href="https://dabangappsite.wordpress.com/category/%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD"
									target="_blank">공지사항</a></li>
								<li><a
									href="https://dabangappsite.wordpress.com/category/%EC%9D%B4%EB%B2%A4%ED%8A%B8"
									target="_blank">이벤트</a></li>
								<li><a
									href="https://dabangappsite.wordpress.com/category/%EC%96%B8%EB%A1%A0%EB%B3%B4%EB%8F%84"
									target="_blank">기사보기</a></li>
							</ul>
						</div>
						<div class="SitemapMenu">
							<h3 class="SitemapMenu-title">고객지원</h3>
							<ul class="SitemapMenu-list">
								<li><a
									href="https://dabangappsite.wordpress.com/category/%EC%9E%90%EC%A3%BC%EB%AC%BB%EB%8A%94%EC%A7%88%EB%AC%B8/"
									target="_blank">자주 묻는 질문</a></li>
								<li><a
									href="https://play.google.com/store/apps/details?id=kr.co.station3.dabang&amp;hl=ko"
									target="_blank">Android</a><span> / </span><a
									href="https://itunes.apple.com/kr/app/dabang-wonlum-opiseutel-guhalttae/id814840066?mt=8"
									target="_blank">IOS</a></li>
								<li><a
									href="https://dabangappsite.wordpress.com/2017/02/02/2017%EB%85%84-%EC%BA%A0%ED%8E%98%EC%9D%B8-%EB%82%98%EC%81%9C%EC%A0%95%EB%B3%B4%EC%9D%98-%ED%98%9C%EB%A6%AC-%EB%B0%B0%EA%B2%BD%ED%99%94%EB%A9%B4-%EB%8C%80%EB%B0%A9%EC%B6%9C/"
									target="_blank">월페이퍼</a></li>
								<li><a href="http://post.naver.com/station3inc"
									target="_blank">다방 공식 포스트</a></li>
							</ul>
						</div>
					</div>
					<div class="Sitemap-grid" style="padding-left: 20px;">
						<div class="SitemapMenu">
							<h3 class="SitemapMenu-title">About 다방</h3>
							<ul class="SitemapMenu-list">
								<li><a href="http://www.station3.co.kr/" target="_blank">회사소개</a></li>
								<li><a href="http://goo.gl/EcbKi8" target="_blank">오시는
										길</a></li>
								<li><a href="mailto:biz@station3.co.kr">제휴문의</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="Terms">
					<div class="Terms-info">
						<h3 class="sr-only">정책 및 약관</h3>
						<ul class="Terms-list">
							<li><a class="Terms-item" href="http://www.station3.co.kr"
								target="_blank">회사소개</a></li>
							<li><a class="Terms-item"
								href="//pro.dabangapp.com/#/terms" target="_blank">공인중개사
									회원가입</a></li>
							<li><a class="Terms-item"
								href="//pro.dabangapp.com/#/agree-view?seq=1" target="_blank">이용약관</a></li>
							<li><a class="Terms-item Terms-item--policy"
								href="//pro.dabangapp.com/#/agree-view?seq=4" target="_blank">개인정보처리방침</a></li>
							<li><a class="Terms-item"
								href="//pro.dabangapp.com/#/agree-view?seq=6" target="_blank">위치기반약관</a></li>
							<li><a class="Terms-item"
								href="//pro.dabangapp.com/#/agree-view?seq=7" target="_blank">매물관리규정</a></li>
							<li><a class="Terms-item"
								href="//pro.dabangapp.com/#/agree-view?seq=5" target="_blank">자동저장
									서비스</a></li>
						</ul>
					</div>
				</div>
				<noscript></noscript>
			</div>
		</div>
	</div>

</body>
</html>