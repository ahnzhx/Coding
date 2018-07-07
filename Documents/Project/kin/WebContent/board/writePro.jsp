<%@page import="ch12.board.BoardDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>


<jsp:useBean id="article" scope="page" class="ch12.board.BoardDataBean">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
	String email="";
	String name="";
	try{
		email=(String)session.getAttribute("email");
		name=(String)session.getAttribute("name");
	}catch(Exception e){}
	
	article.setWriter(name);
	article.setWriterEmail(email);
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
	article.setIp(request.getRemoteAddr());
	
	BoardDBBean dbPro=BoardDBBean.getInstance();
	
	int check=dbPro.insertArticle(article);
	out.println(check);
%>

