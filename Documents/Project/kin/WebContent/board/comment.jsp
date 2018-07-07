<%@page import="ch12.board.CommentDBBean"%>
<%@page import="ch12.board.CommentDataBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="ch12.board.timeString"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//댓글보여지는 화면
	CommentDBBean dbPro=CommentDBBean.getInstance();

	String boardNum = request.getParameter("num");
	
	
	int SendBoardNum = Integer.parseInt(boardNum);
	
	//댓글보기 설정
	List<CommentDataBean> articleList=null;
	articleList=dbPro.getCmtView(SendBoardNum);
	
	SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd:HH");
	timeString tfs = new timeString();
	
	int count=0;
	count=dbPro.getComentCounting(SendBoardNum);
	
	try{
		if(articleList.isEmpty())
			count=0;
	}catch(Exception e){}
%>

<div id="commentBox">
	<div class="cmtBoxReal">
		<% 
			//로그인안하면 추천버튼 누를떄 로그인하라함
			if(session == null || session.getAttribute("email") == null){
		%>
		<%} else {%>
			<div class="cmtInputBox">
				<textarea id="txCmtArea" class="<%=boardNum%>"></textarea>
				<button onclick="regComment(<%=boardNum%>)">등록</button>
				
			</div>
			<div style="clear:both"></div>
		<%}%>
	
	<%
		if(count==0){
	%>
		<div style="text-align: center; padding: 15px 0 19px 0;">아직 댓글이 없습니다! 첫 댓글을 남겨주세요!</div>
	<%
		}else{
			
	%>
		<div class="commetnList">
			
	<%

			for(int i=0;i<articleList.size();i++){
				CommentDataBean article=articleList.get(i);		
	%>
			<ul>	
				<li class="name"><i></i><span><%=article.getWriter() %></span></li>
				<% String timeView = tfs.formatTimeString(article.getReg_date()); %>
				<li class="time"><%=timeView %></li>
				<li class="content"><%=article.getContent() %></li>
				
			</ul>
	
			<%} %>
		<div style="clear:both"></div>
		</div>
		<%} %>
		
		<input type="hidden" id="cmtBoardNum" value="<%=boardNum%>">
	</div>
</div>

