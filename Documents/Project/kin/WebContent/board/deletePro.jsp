<%@page import="ch12.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>


<%
	int num=Integer.parseInt(request.getParameter("num"));
	BoardDBBean dbPro=BoardDBBean.getInstance();
	int check=dbPro.deleteArticle(num);
	 out.println(check); 
%>
