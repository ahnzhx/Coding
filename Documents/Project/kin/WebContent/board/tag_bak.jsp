<%@page import="java.util.List"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.TagDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>

<%@include file="../header.jsp" %>



<%
TagDBBean tagDBBean=TagDBBean.getInstance();

List <BoardDataBean> tagList=null;
tagList=tagDBBean.bringTag();
BoardDataBean dbd=null;
String comeTag;
int count=0;
%>

<div style="width:100%; height:300px"></div>
태그종류:

<div id="ComeOnTag">
<%for( int i=0; i<tagList.size();i++){
	dbd=tagList.get(i);
	comeTag=dbd.getTag();
	String []tagSplit=comeTag.split(",");
	
	for(int ts=1;ts<tagSplit.length;ts++){
	
	%>
	<p><%=tagSplit[ts]%></p>
	<% }
	
	count+=tagSplit.length;
	%>
	
        <%} %><br>

 </div>
 
    총 태그 갯수: <%=count%>
 
<script src="<%=Addr %>/js/tag.js"></script>
 <%@include file="../footer.jsp" %>
 