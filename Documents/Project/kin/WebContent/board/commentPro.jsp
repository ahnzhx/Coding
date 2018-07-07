<%@page import="ch12.board.CommentDBBean"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>


<jsp:useBean id="article" scope="page" class="ch12.board.CommentDataBean">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
	//댓글등록 시스템
	String email="";
	String name="";
	try{
		email=(String)session.getAttribute("email");
		name=(String)session.getAttribute("name");
	}catch(Exception e){}
	
	article.setWriter(name);
	article.setWriter_email(email);
	article.setReg_date(new Timestamp(System.currentTimeMillis()));
	
	CommentDBBean dbPro=CommentDBBean.getInstance();
	
	int check=dbPro.insertComment(article);
	out.println(check);
%>

