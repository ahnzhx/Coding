<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%String Addr = "http://localhost:9090/kin";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coading Overflow</title>
        <meta name="description" content="개발자가 프로그래밍 지식을 공유하고 경력을 쌓을 수있는 가장 크고 신뢰할 수있는 온라인 커뮤니티입니다..">
        <meta property="og:type" content="website">
        <link rel="stylesheet" type="text/css" href="<%=Addr %>/css/font.css">
        <link rel="stylesheet" type="text/css" href="<%=Addr %>/css/stacks.css">
        <link rel="stylesheet" type="text/css" href="<%=Addr %>/css/primary.css">
        <link rel="stylesheet" href="<%=Addr %>/css/clc.min.css" type="text/css">
        <link rel="stylesheet" href="<%=Addr %>/css/new.css" type="text/css">
        <script type="text/javascript" src="<%=Addr %>/js/jquery.min.js"></script>
        <script type="text/javascript" src="<%=Addr %>/js/full-anon.en.js"></script>
        <script type="text/javascript" src="<%=Addr %>/js/clc.min.js"></script>
        <script type="text/javascript" src="<%=Addr %>/js/markup.js"></script>
        <script type="text/javascript" src="<%=Addr %>/js/stub.en.js"></script>
        <script type="text/javascript" src="<%=Addr %>/js/swipe.js"></script>
        <script type="text/javascript" src="<%=Addr %>/js/login.js"></script>
		<script type="text/javascript" src="<%=Addr %>/js/loginForm.js"></script>
       
    </head>


    <body class="home-page new-topbar">



    <header class="top-bar js-top-bar _fixed">
    <div class="-container">

        
        <div class="-main">
                <a href="<%=Addr %>/index.jsp" class="-logo js-gps-track">
                    <span class="-img">Stack Overflow</span>
                </a>
                <nav class="navigation" role="navigation" aria-label="site navigation">
                    <ol class="-list">
                        <li class="-item">
                            <a id="nav-questions" href="<%=Addr %>/board/questionList.jsp" class="-link js-gps-track">질문하기</a>
                        </li>
                        <li class="-item">
                            <a id="nav-jobs" href="#" class="-link js-gps-track">개발자 일자리</a>
                        </li>
                        <li class="-item">
                            <a id="nav-jobs" href="<%=Addr %>/board/tag.jsp" class="-link js-gps-track">태그</a>
                        </li>
                        <li class="-item">
                            <a id="nav-users" href="<%=Addr %>/member2/mypage.jsp" class="-link js-gps-track">마이페이지</a>
                        </li>
                    </ol>
                </nav>
        </div>

        <form id="search" action="" method="get" class="searchbar" autocomplete="off" role="search">
            <input name="q" type="text" placeholder="Search…" value="" tabindex="1" autocomplete="off" maxlength="240" class="f-input js-search-field">
            <button type="submit" aria-label="Search..." class="btn-topbar-primary js-search-submit">
                <svg aria-hidden="true" class="svg-icon iconSearch" width="18" height="18" ></svg>
            </button>
        </form>

        <div class="-actions">
            <nav class="secondary-nav">

                <ol class="-list">
                    <li class="-item">
                        <a href="#" class="-link js-inbox-button" title="최근받은 메시지">
                            <svg aria-hidden="true" class="svg-icon iconInbox" width="20" height="18" viewBox="0 0 20 18">
                                <path d="M15.19 1H4.63c-.85 0-1.6.54-1.85 1.35L0 10.79V15c0 1.1.9 2 2 2h16a2 2 0 0 0 2-2v-4.21l-2.87-8.44A2 2 0 0 0 15.19 1zm-.28 10l-2 2h-6l-2-2H1.96L4.4 3.68A1 1 0 0 1 5.35 3h9.12a1 1 0 0 1 .95.68L17.86 11h-2.95z"></path>
                            </svg>
                            <span class="indicator-badge js-unread-count _important" style="display: none;"></span>
                        </a>
                    </li>
                    <li class="-item">
                        <a href="#" class="-link js-achievements-button" title="최근 업적 : 평판, 배지 및 획득 한 특권" data-unread-class="_highlighted-positive">
                            <svg aria-hidden="true" class="svg-icon iconAchievements" width="18" height="18" viewBox="0 0 18 18">
                                <path d="M15 2V1H3v1H0v4c0 1.6 1.4 3 3 3v1c.4 1.5 3 2.6 5 3v2H5s-1 1.5-1 2h10c0-.4-1-2-1-2h-3v-2c2-.4 4.6-1.5 5-3V9c1.6-.2 3-1.4 3-3V2h-3zM3 7c-.5 0-1-.5-1-1V4h1v3zm8.4 2.5L9 8 6.6 9.4l1-2.7L5 5h3l1-2.7L10 5h2.8l-2.3 1.8 1 2.7h-.1zM16 6c0 .5-.5 1-1 1V4h1v2z"></path>
                            </svg>
                            <span class="indicator-badge js-unread-count _positive" style="display: none;"></span>
                        </a>
                    </li>

                    <li class="-item">
                        <a href="#" class="-link js-help-button" title="도움말 센터 및 기타 리소스">
                            <svg aria-hidden="true" class="svg-icon iconHelp" width="18" height="18" viewBox="0 0 18 18">
                                <path d="M9 1a8 8 0 1 0 0 16A8 8 0 0 0 9 1zm.81 12.13c-.02.71-.55 1.15-1.24 1.13-.66-.02-1.17-.49-1.15-1.2.02-.72.56-1.18 1.22-1.16.7.03 1.2.51 1.17 1.23zM11.77 8a5.8 5.8 0 0 1-1.02.91l-.53.37c-.26.2-.42.43-.5.69a4 4 0 0 0-.09.75c0 .05-.03.16-.18.16H7.88c-.16 0-.18-.1-.18-.15.03-.66.12-1.21.4-1.66a5.29 5.29 0 0 1 1.43-1.22c.16-.12.28-.25.38-.39a1.34 1.34 0 0 0 .02-1.71c-.24-.31-.51-.46-1.03-.46-.51 0-.8.26-1.02.6-.21.33-.18.73-.18 1.1H5.75c0-1.38.35-2.25 1.1-2.76.52-.35 1.17-.5 1.93-.5 1 0 1.79.18 2.49.71.64.5.98 1.18.98 2.12 0 .57-.2 1.05-.48 1.44z"></path>
                            </svg>
                        </a>
                    </li>

                </ol>
            </nav>
        
        
      <div class="-ctas">
        <c:choose>
        	<c:when test="${empty sessionScope.email}">
        		<a class="login-link btn-clear" rel="nofollow" onclick="loginshow()">로그인</a>
                <a href="<%=Addr %>/member2/registerForm.jsp" class="login-link btn-topbar-primary" rel="nofollow">회원가입</a>
        	</c:when>
        <c:otherwise>
       		<a class="login-link btn-clear">${sessionScope.name}님</a>
        	<a class="login-link btn-topbar-primary" rel="nofollow" id="logout">로그아웃</a>
        </c:otherwise>
        </c:choose>
     </div>
   </div>

    </div>
</header>