<%@page import="ch12.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="article" class="ch12.board.LikeItDataBean">
	<jsp:setProperty name="article" property="*"/>
</jsp:useBean>

<%
BoardDBBean dbPro=BoardDBBean.getInstance();

String email="";
String name="";
try{
	email=(String)session.getAttribute("email");
	name=(String)session.getAttribute("name");
}catch(Exception e){}


int refNum=Integer.parseInt(request.getParameter("refNum"));
int boardNum=Integer.parseInt(request.getParameter("boardNum"));

article.setRefNum(refNum);
article.setBoardNum(boardNum);
article.setLikeName(name);
article.setLikeEmail(email);


int check=dbPro.insertLikeIt(article);
out.println(check);
%>