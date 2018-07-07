
<%@page import="sun.security.pkcs11.Secmod.DbMode"%>
<%@page import="java.util.List"%>
<%@page import="ch12.board.MypageDataBean"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.BoardDBBean"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%request.setCharacterEncoding("utf-8"); %>
<% 
	if ( session == null || session.getAttribute("email") == null ){
		//로그인안했음 출력
%>
		<script>
		alert("로그인하세요");
		history.back();
		</script>
		
<%} else {%>
	
<%

BoardDBBean manager=BoardDBBean.getInstance();

String email=(String)session.getAttribute("email");
List<MypageDataBean> infoList=manager.getInfo(email);
MypageDataBean info=infoList.get(0);


String name=info.getName();
List<BoardDataBean> infoList2=manager.getInfo2(name);
List<BoardDataBean> infoList_answer=manager.getInfoAnswer(name);
int count=0;
count=manager.getArticleCount2(name);

int countAnswer=0;
countAnswer=manager.getArticleCountAnswer(name);

SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");

int questionCount = manager.getMyAnswerCount(email, "qustion");
int AnswerCount = manager.getMyAnswerCount(email, "answer");

try{
%>

<%@ include file="../header.jsp"%>

<script src="../js/modify.js"></script>
<link rel="stylesheet" href="../css/secondary.css">
<%}catch(Exception e){}%>

<script>
$(function(){
	$('.prifileETCInfo>ul>li').click(function(){
		var showS = $(this).attr('showInfo');
		$('.prifileETCInfo>ul>li').removeClass('activeMode');
		$(this).addClass('activeMode');
		$('#writerList.questionView').hide();
		$('#writerList.answerView').hide();
		$('#writerList.moneyView').hide();
		$('#writerList.'+showS).slideDown('fast');
	});
})
</script>

<div class="container _leftOption ">
    <div id="content" class="snippet-hidden">
		
		
        <div class="inner-content">
			<div class="fullWhitePage mypageDesign">
				
				<div class="myInfoBox">
					<ul>
						<li class="photoBox">
							<p><img src="../img/humenCon.png"></p>
							<a href="http://localhost:9090/kin/member2/modify.jsp">회원정보수정</a>
							</li>
						<li class="infoGrahic"><img src="../img/myhomeRight.jpg"></li>
						<li class="infoBox">
							<span class="infoTitle">내 정보</span>
							<h1><%=info.getName() %></h1>
							<p class="emaiicon"><i></i><%=info.getEmail() %></p>
							<p class="mobicon"><i></i><%=info.getTel() %></p>
						</li>

					</ul>
				</div>
		
			
				<div class="prifileETCInfo">
					<ul>
						<!-- 질문수 -->
						<li showInfo="questionView" class="activeMode">
							<i class="questionAreaBtn"></i>
							<h1><%=questionCount %></h1>
						</li>
						<!-- 답변수 -->
						<li showInfo="answerView">
							<i class="AnswerAreaBtn"></i>
							<h1><%=AnswerCount %></h1>
						</li>
						<!-- 자금 -->
						<li showInfo="moneyView">
							<i class="MoneyAreaBtn"></i>
							<h1><%=info.getMoney() %></h1>
						</li>
					</ul>
				</div> 
				<div style="clear:both"></div>
				<div id="writerList" class="questionView">
					<h2>작성한 질문</h2>	
					<%if(count==0){%>
						작성된 질문이 없습니다.
					<%
					} else {
					%>
						<div class="MytitBar" id="tit">
							<ul>
								<li class="mytSub">제목</li>
								<li class="mytDate">작성일</li>
							</ul>
						</div>
						
						<div class="MytitBar" id="contentList">
					<%
						for(int j=0;j<infoList2.size();j++){
							BoardDataBean info2=infoList2.get(j); 
					%>
								<ul>
									<li class="mytSub"><a href="http://localhost:9090/kin/board/view.jsp?num=<%=info2.getRef()%>"><%=info2.getSubject() %></a></li>
									<li class="mytDate"><%=sdf.format(info2.getReg_date()) %></li>
								</ul>
						<%} %> 
						</div>
					<%} //질문에 대한 else문 종료 %>
				</div>
				<div style="clear:both"></div>
				<div id="writerList" class="answerView" style="display:none;">
					<h2>작성한 답변</h2>
					<%if(countAnswer==0) {%>
						작성한 답변이 없습니다.
					<%
					}else{
					%>
						<div class="MytitBar" id="tit">
							<ul>
v								<li class="mytSub">제목</li>
								<li class="mytDate">작성일</li>
							</ul>
						</div>
						
						<div class="MytitBar" id="contentList">
					<%
						for(int k=0;k<infoList_answer.size();k++){
							BoardDataBean infoA=infoList_answer.get(k); 
						
					%>
							<ul>
								<li class="mytSub"><a href="http://localhost:9090/kin/board/view.jsp?num=<%=infoA.getRef()%>"><%=infoA.getSubject() %></a></li>
								<li class="mytDate"><%=sdf.format(infoA.getReg_date()) %></li>
							</ul>
						<%} %>
						</div>
					<%} // 답변에대한 else문 종료 %>
				</div>
				
				<div style="clear:both"></div>
				<div id="writerList" class="moneyView" style="display:none;">
					<h2>포인트 적립내역</h2>
						적립내역이 없습니다.
				</div>
				<div style="clear:both"></div>
	
			</div>
		</div>
        
    </div>
</div>
<%} // 로그인시에만 출력하는 if문 종료%> 

   <%@ include file="../footer.jsp"%>
   