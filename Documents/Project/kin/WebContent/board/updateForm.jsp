<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("utf-8");%>
<%

	int num=Integer.parseInt(request.getParameter("num"));
	String pageNum=request.getParameter("pageNum");
	BoardDBBean dbPro=BoardDBBean.getInstance();
	BoardDataBean article=dbPro.updateGetArticle(num);
	int repCheck=0;
	String Addr="http://localhost:9090/kin";
%>

<script src="<%=Addr %>/js/update.js"></script>
<!-- EditStyle -->
  


	<% 
	if ( session == null || session.getAttribute("email") == null ){
		//로그인안했음 출력
	%>
		<script>
		alert("로그인한 사용자만 글을 작성할 수 있습니다");
		history.back();
		</script>
	<%
	} else {
	%>
	<input type="hidden" id="num" value="<%=article.getNum()%>">
	<input type="hidden" id="ref" value="<%=article.getRef()%>">
	<input type="hidden" id="re_step" value="<%=article.getRe_step()%>">
	<input type="hidden" id="re_level" value="<%=article.getRe_level()%>">
                <div id="mainbar">
                    <div id="writeForm" class="box">
                        <ul>
                            <li>
                                <label for="subject">제목</label>
                                <input id="subject" name="subject" type="text" size="50" placeholder="한번에 알아 볼 수 있게 제목을 입력하세요" maxlength="50"  value="<%=article.getSubject() %>">
                            </li>

                            <li class="contentWBox">
                                <textarea id="contentTextarea" rows="63" cols="50"><%=article.getContent()%></textarea>
                            </li>
                            
							<li>
								<%if(repCheck==0){ %>
	                                <label for="tag">태그</label>
	                                <input id="tag" name="tag" type="text" size="20" placeholder="답변을 쉽게 받기 위해 태그를 입력하세요" maxlength="36" value="<%=article.getTag()%>">
	                            <%} else{ %>
	                            	<input id="tag" name="tag" type="hidden" size="20" value="tagLiBAnswer">
								<%} %>
							</li>
							
                            <div class="lineDraw"></div>
                            <li class="label2">
                               <button id="update" value="<%=pageNum %>">질문 수정</button>
                            </li>
                        </ul>	
                    </div>
                </div>
                
                <div id="sidebar">
                	<div class="bgWhiteRight">
                		<h1>질문 팁</h1>
                		<h3>프로그래밍에 대한 질문인가요?</h3>
                		
                		<p>어떻게 하면 좋을지, 토론을 하기 보다는, 오류 내용과 같은 질문을 해주시면 더 좋습니다.</p>
                		<p>사이트 이용에 대한 질문은 <a href="#">고객문의</a>를 이용해주세요</p>
                	</div>
                	
                </div>

	<%}%>


<script type="text/javascript" src="<%=Addr %>/js/editJS/jquery.richtext.min.js"></script>
<link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.7.0/font-awesome.min.css">
<link rel="stylesheet" href="<%=Addr %>/css/editStyle/richtext.min.css">
<script>
	$(function(){
		$('#contentTextarea').richText();
	});
</script>