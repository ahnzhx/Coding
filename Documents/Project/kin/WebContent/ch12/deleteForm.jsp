<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/style.css">
<script src="WebContent/js/jquery-1.11.0.min.js"></script>
<script src="delete.js"></script>

<%request.setCharacterEncoding("utf-8");%>
<%
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
%>
<div id="deleteForm">
	<ul>
		<li><p class="center">글삭제
		<li><label for="passwd">비밀번호</label>
			<input id="passwd" name="passwd" type="password"
			size="20" placeholder="6~16자 숫자/문자" maxlength="16">
			<input type="hidden" id="num" value="<%=num %>">
		<li class="label2">
			<button id="delete" value="<%=pageNum%>">삭제</button>
			<button id="cancle" value="<%=pageNum%>">취소</button>	
			
		</ul>
</div>