<%@page import="ch12.board.BoardDBBean"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@page import="java.util.List"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<script src="<%=Addr %>/js/write.js"></script>
<!-- EditStyle -->

<script type="text/javascript" src="<%=Addr %>/js/msgBox/jquery.msgbox.js"></script>
<link rel="stylesheet" href="<%=Addr %>/css/msgBox/jquery.msgbox.css">

  
<%request.setCharacterEncoding("utf-8");%>
<%
	int num=0,ref=1,re_step=0,re_level=0;
	int pageNum=1;
	int repCheck=0;
	BoardDataBean article=null;
	try{
		if(request.getParameter("num")!=null){
			num=Integer.parseInt(request.getParameter("num"));
			ref=Integer.parseInt(request.getParameter("ref"));
			re_step=Integer.parseInt(request.getParameter("re_step"));
			re_level=Integer.parseInt(request.getParameter("re_level"));
			pageNum=Integer.parseInt(request.getParameter("pageNum"));
			repCheck=1;
		}
			if(repCheck!=0){
				//답변의 경우 질문 내용 불러오기
				BoardDBBean dbPro=BoardDBBean.getInstance();
				List<BoardDataBean> articleList=null;
				articleList=dbPro.getView(num);
				article=articleList.get(0);
			}
%>
	<input type="hidden" id="num" value="<%=num%>">
	<input type="hidden" id="ref" value="<%=ref%>">
	<input type="hidden" id="re_step" value="<%=re_step%>">
	<input type="hidden" id="re_level" value="<%=re_level%>">
	<input type="hidden" id="history" value="<%= request.getHeader("referer") %>">
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
    <div class="container _full ">
        <div id="content" class="snippet-hidden">
            <div class="inner-content">
                <div id="mainbar">

                    <div id="writeForm" class="box">
                        <ul>
                            <li>
                                <label for="subject">제목</label>
                                <input id="subject" name="subject" type="text" size="50" placeholder="한번에 알아 볼 수 있게 제목을 입력하세요" maxlength="50">
                            </li>

                            <li class="contentWBox">
                                <textarea id="contentTextarea" rows="63" cols="30"></textarea>
                            </li>
                            
							<li>
								<%if(repCheck==0){ %>
	                                <label for="tag">태그</label>
	                                <input id="tag" name="tag" type="text" size="20" placeholder="답변을 쉽게 받기 위해 태그를 입력하세요" maxlength="36">
	                            <%} else{ %>
	                            	<input id="tag" name="tag" type="hidden" size="20" value="tagLiBAnswer">
								<%} %>
							</li>
							
                            <div class="lineDraw"></div>
                            <li class="label2">
                                <button id="regist" value="<%=pageNum %>">등록</button>
                            </li>
                        </ul>	
                    </div>
                </div>
                
                <div id="sidebar" style="overflow:unset">
                	<%if(repCheck==0){ %>
	                	<div class="bgWhiteRight">
	                		<h1>질문 팁</h1>
	                		<h3>프로그래밍에 대한 질문인가요?</h3>
	                		
	                		<p>어떻게 하면 좋을지, 토론을 하기 보다는, 오류 내용과 같은 질문을 해주시면 더 좋습니다.</p>
	                		<p>사이트 이용에 대한 질문은 <a href="#">고객문의</a>를 이용해주세요</p>
	                	</div>
                	 <%} else{ %>
                	 	<div class="bgWhiteRight">
	                	 	<h1>답변 팁</h1>
		                		<h3>답변은 삭제될 수 있습니다.</h3>
		                		<p>무성의한 답변, 질문과 상관없는 내용을 작성하면
		                		삭제는 물론 사이트 이용에 제한을 받을 수 있습니다.</p>
	                	</div>
	                	
                	 	<div class="bgWhiteRight btn">
	                	 	<div class="questinView">질문팝업보기</div>
	                	 	<div id="layerPopQus">
            					<div class="Qus_lpBoxRealBox">
									<div id="qview-wrapper">
									<!--질문 본문 -->
									  <script>
									  $(".questinView").msgbox({
											type: 'html',
											title: '<%=article.getSubject()%>',
											content: '<%=article.getContent() %>',
											overlay: false,
											resize: true,
											width: 400,
											height: 300
										});
									  </script>
			      					</div>
		      					</div>
	      					</div>
	                	</div>	
	                	                	
                	 <%} %>
                </div>
            </div>
            
            
        </div> <!--/content-->
    </div>
	<%}
	}catch(Exception e){}%>

<script type="text/javascript" src="<%=Addr %>/js/editJS/jquery.richtext.min.js"></script>
<link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.7.0/font-awesome.min.css">
<link rel="stylesheet" href="<%=Addr %>/css/editStyle/richtext.min.css">
<script>
	$(function(){
		$('#contentTextarea').richText();
	});
</script>

<%@ include file="../footer.jsp"%>	