<%@page import="ch12.board.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="member" class="ch12.board.LogonDataBean">
	<jsp:setProperty name="member" property="*" /> 
</jsp:useBean>

<%
LogonDBBean manager = LogonDBBean.getInstance();
int res = manager.updateMember(member);
if(res==1) session.invalidate();
out.println(res);
%>