<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/web.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>


<body>

	<div class="Header">
		<h1 class="Header-logo">
			<a href="/"><span class="screen-reader-only">다방</span></a>
		</h1>
		<ul class="Header-family-logo">
			<li class="pro"><a href="#" target="_blank"><span
					class="screen-reader-only">다방프로</span></a></li>
			<li class="pay"><a href="#" target="_blank"><span
					class="screen-reader-only">다방페이</span></a></li>
		</ul>

		<div class="Gnb">
			<ul class="Gnb-main">
				<li><div class="Header-profile">
						<a class="HeaderProfile profile clearfix small"> 
							
							<c:if test="${sessionScope.email != null }">

								<div class="Profile Profile--default">
									<div class="Profile-img"></div>
									<div class="Profile-img"
										style="background-image: url('https://dabang-prod-profile-image.s3.amazonaws.com/be1e9a1709011328afcad7522d95f3e6')"></div>
								</div>
								<span class="HeaderProfile-name">
									${sessionScope.name}님 <a href="/logout.do"
									style="cursor: pointer; position: relative; top: -60px; left: 90px;"
									class="Gnb-item login small">로그아웃</a></span>
							</c:if>

						</a>

						<div class="HeaderProfile-menu dropdown" id="profile-dropdown">
							<ul class="HeaderProfile-dropdown">

								<li><a class="HeaderProfile-dropdown__item" href="/account">내
										계정</a></li>

								<li><a id="logout" class="HeaderProfile-dropdown__item"
									href="/logout?uri=%2F">로그아웃</a></li>
							</ul>
						</div>
					</div></li>
				<li><a class="Gnb-item room-search " href="search_room.do">방
						검색</a></li>
				
				<li><a class="Gnb-item add-room" style="cursor: pointer"
					href="room_register.do">방 등록</a></li>
				<li><a class="Gnb-item board" style="cursor: pointer"
					href="board.do">게시판</a></li>
				<li><a class="Gnb-item login small" id="aa"
					style="cursor: pointer">회원가입 및 로그인</a></li>
			</ul>
		</div>


	</div>



	<div id="bb" class="dabang-modal" style="display: none;">
		<div class="dabang-modal-bg"></div>

		<div class="dabang-modal-dialog"
			style="width: 400px; height: 400px; padding-right: 25px; padding-left: 15px;">

			<div class="dabang-modal-frame">
				<div class="dabang-modal-content">
					<div class="dabang-modal-header">

						<!-- 닫기버튼 -->
						<i id="cc" class="dabang-icon dabang-icon-remove icon-size-2xl"
							style="cursor: pointer;" aria-label="팝업 닫기"></i>

					</div>

					<div class="dabang-modal-body">
						<div id="account" class="Account">
							<h1 class="Account-title">로그인</h1>
							<div class="Account-body">
								<div class="Login" style="margin-right: 30px;">

									<!-- 로그인 폼 -->
									<form class="Account-form" name="form1" method="post">
										<div class="Account-form__row">
											<div class="Account-form__cell">
												<label for="account_email" class="Account-form__label">이메일</label>
											</div>
											<div class="Account-form__cell">
												<input name="email" type="text" id="account_email"
													class="Account-form__input">
											</div>
										</div>
										<div class="Account-form__row">
											<div class="Account-form__cell">
												<label for="account_password" class="Account-form__label">비밀번호</label>
											</div>
											<div class="Account-form__cell">
												<input name="passwd" type="password" id="account_password"
													class="Account-form__input" autocomplete="off">
											</div>
										</div>

									</form>
									<button
										class="Account-form__submit btn btn-blue btn-lg border-radius-large btn-full gologin ">
										로그인</button>

									<c:if test="${message == 'error'} ">
										<div style="color: red;">아이디 또는 비밀번호가 일치 하지 않습니다.</div>
									</c:if>
									<c:if test="${message == 'logout'} ">
										<div style="color: blue;">로그아웃 되었습니다.</div>
									</c:if>

									<div class="Login-auth">

										<button
											class="Account-form__submit btn btn-blue btn-lg border-radius-large btn-full"
											onclick="location.href='register.do'">일반 회원가입</button>
									</div>



								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script>
		$(document).ready(function() {
			$("#aa").click(function() {
				$(".dabang-modal").css("display", "block");
				$("body").css("position", "fixed");
			});
			$("#cc").click(function() {
				$(".dabang-modal").css("display", "none");
				$("body").css("position", "static");
			});
			$(".dabang-modal-bg").click(function() {
				$(".dabang-modal").css("display", "none");
				$("body").css("position", "static");
			});
			
				$(".gologin").click(function() {
					var userid = $("#account_email").val();
					var passwd = $("#account_password").val();
					if (userid == "") {
						alert("이메일를 입력하세요");

						return;
						$("#account_email").focus();
					}
					if (passwd == "") {
						alert("비밀번호를 입력하세요");
						$("#account_password").focus();
						return;

					}
					document.form1.action = "/login_check.do";
					document.form1.submit();
			        
					
				});
				
			
			if(${message == 'error'}){
				alert('아이디나 비밀번호를 확인하세요');
			}
			$(".add-room").click(function() {
			if(${sessionScope.name==null}){
				alert('로그인을 먼저 해주세요');
			}
			});
			
		});
	</script>
</body>
</html>
