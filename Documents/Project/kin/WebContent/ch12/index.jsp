<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="css/style.css"/>

<div id="header">
	<div id="logo" class="box">
		<img class="noborder" id="logo" src="/shoppingmall/images/mollalogo3.png"/>
	</div>
	<div id="auth" class="box">
		<c:if test="${type==0 }">
			<jsp:include page="loginForm.jsp"/>
		</c:if>
		<c:if test="${type==1 }">
			<jsp:include page="loginForm.jsp"/>
		</c:if>
		</div>
	</div>
	
	<div id="content" class="box2">
		<jsp:include page="${cont }"/>
	</div>