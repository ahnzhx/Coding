<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/style.css"/>
<script src="WebContent/js/jquery-1.11.0.min.js"></script>
<%
	String email="";
	try{
		email=(String) session.getAttribute("email");
%>

	<div id="display_board" class="box2">
		<jsp:include page="list.jsp"/>
	</div>
	
<%}catch(Exception e){e.printStackTrace();}%>