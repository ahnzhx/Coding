<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="/shoppingmall/css/style.css"/>
<script src="../js/jquery-1.11.0.min.js"></script>
<script src="/shoppingmall/mngr/qnaProcess/qnalist.js"></script>

<c:if test="${empty sessionScope.email}">
	<meta http-equiv="Refresh" content="0;url=/shoppingmall/mg/managerMain.do">
</c:if>

<div id="qnaHeader">
	<button id="bookMain">관리자 메인으로</button>
</div>

<c:if test="${count==0 }">
	<p>등록된 QnA가 없습니다.
</c:if>
	