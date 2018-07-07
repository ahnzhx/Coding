<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/style.css"/>
<script src="WebContent/js/jquery-1.11.0.min.js"></script>
<script src="update.js"></script>

<%request.setCharacterEncoding("utf-8");%>

<%
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
BoardDBBean dbPro=BoardDBBean.getInstance();
BoardDataBean article=dbPro.updateGetArticle(num);
%>

<%--수정할 글의 원래 저장 내용을 글수정폼에 표시--%>
<div id="editForm" class="box">
	<ul>
		<li><p class="center">글수정
		<li><label for="subject">제목</label>
			<input name="subject" type="text" size="50" 
			maxlength="50" value="<%=article.getSubject() %>">
			<input type="hidden" id="num" value="<%=num%>">
		<li><label for="content">내용</label>
			<textarea id="content" rows="13" cols="50">
			<%=article.getContent() %></textarea>
		<li><label for="passwd">비밀번호</label>
			<input id="passwd" name="passwd" type="password"
			size="20" placeholder="6~16자 숫자/문자" maxlength="16">
		<li class="label2">
			<button id="update" value="<%=pageNum %>">수정</button>
			<button id="cancle" value="<%=pageNum %>">취소</button>

	</ul>
	</div>