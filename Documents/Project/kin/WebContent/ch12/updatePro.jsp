<%@page import="ch12.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="article" class="ch12.board.BoardDataBean">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%BoardDBBean dbPro=BoardDBBean.getInstance();
int check=dbPro.updateArticle(article);

out.println(check);
%>