<%@page import="ch12.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
int selCheck=Integer.parseInt(request.getParameter("selCheck"));
int questionNum=Integer.parseInt(request.getParameter("questionNum"));

BoardDBBean dbPro=BoardDBBean.getInstance();
int check = dbPro.selectAnswer(selCheck,questionNum);
out.println(check);
%>
