
<%@page import="ch12.board.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<%
String email=(String)session.getAttribute("email");
//String passwd=request.getParameter("passwd");

LogonDBBean manager=LogonDBBean.getInstance();
int check=manager.deleteMember2(email);

if(check==1) session.invalidate();

out.println(check);
%>