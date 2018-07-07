
<%@page import="ch12.board.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<%
String email=request.getParameter("email");
LogonDBBean dao=LogonDBBean.getInstance();
int check=dao.confirmId(email);
out.println(check);
%>