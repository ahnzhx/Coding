<%@page import="ch12.board.BoardDBBean"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.CommentDataBean"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<%@ include file="../header.jsp"%>
<script src="<%=Addr%>/js/list.js"></script>
<script src="<%=Addr %>/js/delete.js"></script>
<script src="<%=Addr %>/js/comment.js"></script>

<div class="container _full ">
	<div id="content" class="snippet-hidden">
		<div class="inner-content">
			<div id="mainbar" class="QnADesign">
				<%
					BoardDBBean dbPro=BoardDBBean.getInstance();
					
					int num=Integer.parseInt(request.getParameter("num"));
					String pageNum=request.getParameter("pageNum");
					
					int pageSize=7;
					SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
					
					/*본문 질문  */
					List<BoardDataBean> articleList=null;
					articleList=dbPro.getView(num);
					BoardDataBean article=articleList.get(0);
					
					int ref=article.getRef();
					int re_level=article.getRe_level();
					int re_step=article.getRe_step();
					
					/*답변  */
					List<BoardDataBean> articleList2=null;
					BoardDataBean article2=null;
					articleList2=dbPro.getView2(ref);
					
					String email="";
					String name="";
					String writer=article.getWriter();
					String writerEmail=article.getWriterEmail();
					
					//조회수 UP!
					dbPro.updateHit(num);
					
					//답변달았는지 안달았는지 체크
					String viewWriter = (String)session.getAttribute("name");
					int getAnswer = dbPro.getAnswerCheck(viewWriter,num);
					
					//채택체크
					int checkViewQuestion = dbPro.getSelCheck(num,"num");
					
					try{ 
						if ( session == null || session.getAttribute("email") == null ){ 
						}else{
							email=(String)session.getAttribute("email");
							name=(String)session.getAttribute("name");
						}
					} catch(Exception e){} 
				%>
				
				<%
					if(articleList2==null){ 
					// 답변이 없는 질문의 경우
				%>
					<div id="qview-wrapper">
                		<!--질문자 정보 -->
						<h1><b>Q</b><%=article.getSubject() %></h1>
						<div class="subjectInfo">
							<p><%=article.getWriter() %></p>
							<p><%=sdf.format(article.getReg_date()) %></p>
						</div>
					
						<div class="ldcsAttrBox">
							<div class="lineDrawCSS3Attr"></div>
						</div>
					
						<!--질문 본문 -->
						<article>
							<div class="textView">
								<%=article.getContent() %>
							</div>
						</article>
						
						<!-- 추천/댓글 -->
						<div class="AnswerbtnList">
							<div class="reply num<%=article.getNum()%>" onclick="commentView(<%=article.getNum()%>)">댓글 <%=dbPro.getComentCounting(article.getNum()) %></div>
							<div class="reply disnum num<%=article.getNum()%>" onclick="commentClose(<%=article.getNum()%>)" style="display:none">댓글 <%=dbPro.getComentCounting(article.getNum()) %></div>
						</div>
						<div id="commentArea" class="cmtNum<%=article.getNum()%>" style="display:none">
						</div>

						<%
						if(email.equals(writerEmail)){ 
						//질문자의 경우
						%>
							<div class="questionTip Writer">
								<p><b class="cricleT">!</b>답변이 달리면 수정 및 삭제가 불가능합니다.<p>
								<p>잘못된 부분이 있으면 지금 수정해주세요</p>
								<div class="psBtn">
									<button id="edit" name="<%=num+","+ref+","+re_step+","+re_level+","+pageNum%>" onclick="edit(this)">수정</button>
									<button id="delete" name="<%=num+","+ref+","+re_step+","+re_level+","+pageNum%>" onclick="del(this)">삭제</button>
								</div>
							</div>
						<%
						}else if(checkViewQuestion>=1){
						%>
							<div class="questionTip">
								<p><b class="cricleT">!</b>이미 채택된 질문입니다.<p>
								<p>질문자가 마음에 들어한 답변을 보세요!</p>
							</div>
						<%
						}else if(session == null || session.getAttribute("email") == null){
						//비로그인일때
						%>
							<div class="questionTip">
								<p><b class="cricleT">!</b>지금 로그인해서 첫 답변을 달아주세요!<p>
								<p>답변을 하고 채택을 받으면 일정 금액이 지급됩니다.</p>
							</div>
						<%
						}else{
						//로그인하고 질문자가 아닌 사용자
						%>
							<div class="questionTip">
								<p><b class="cricleT">!</b><%=name %>님! 첫 답변을 남겨주세요<p>
								<p>답변을 하고 채택을 받으면 일정 금액이 지급됩니다.</p>
								<button id="reply" name="<%=num+","+ref+","+re_step+","+re_level+","+pageNum%>" ><b>A</b> 답변하기</button>
							</div>
				    	<%}%>
	      			</div>
	    		<%
	    			}else{ 
	    			// 답변이 한개라도 있는 질문의 경우
	    		%>
	
	            	<div id="qview-wrapper">
	            		<!--질문자 정보 -->
						<h1><b>Q</b><%=article.getSubject() %></h1>
						<div class="subjectInfo">
							<p><%=article.getWriter() %></p>
							<p><%=sdf.format(article.getReg_date()) %></p>
						</div>
					
						<div class="ldcsAttrBox">
							<div class="lineDrawCSS3Attr"></div>
						</div>
					
						<!--질문 본문 -->
						<article>
							<div class="textView">
								<%=article.getContent() %>
							</div>
						</article>
						
						<!-- 추천/댓글 -->
						<div class="AnswerbtnList">
							<div class="reply num<%=article.getNum()%>" onclick="commentView(<%=article.getNum()%>)">댓글 <%=dbPro.getComentCounting(article.getNum()) %></div>
							<div class="reply disnum num<%=article.getNum()%>" onclick="commentClose(<%=article.getNum()%>)" style="display:none">댓글 <%=dbPro.getComentCounting(article.getNum()) %></div>
						</div>
						<div id="commentArea" class="cmtNum<%=article.getNum()%>" style="display:none">
						</div>
						
						<%
						if(email.equals(writerEmail)){ 
						//작성자에게 보여질 화면 -- 현재 없음
						%>
						<%
						}else if(checkViewQuestion>=1){
						%>
							<div class="questionTip">
								<p><b class="cricleT">!</b>이미 채택된 질문입니다.<p>
								<p>질문자가 마음에 들어한 답변을 보세요!</p>
							</div>
						<%
						}else if(getAnswer>=1){
						//답변자가 답변을 달았을경우
						%>
							<div class="questionTip">
								<p><b class="cricleT">!</b>답변 달아줘서 고마워요!<p>
								<p>이제 채택받기만을 기다려주세요</p>
							</div>
					
						<%
						}else if(session == null || session.getAttribute("email") == null){
						// 비로그인 사용자의 경우
						%>
							<div class="questionTip">
								<p><b class="cricleT">!</b>지금 로그인해서 첫 답변을 달아주세요!<p>
								<p>답변을 하고 채택을 받으면 일정 금액이 지급됩니다.</p>
							</div>
							
						<%
						}else{
						//로그인하고 답변을 안달았을 경우
						%>
							<div class="questionTip">
								<p><b class="cricleT">!</b><%=name %>님의 지식을 나누어 주세요!<p>
								<p>답변을 하고 채택을 받으면 일정 금액이 지급됩니다.</p>
								<button id="reply" name="<%=num+","+ref+","+re_step+","+re_level+","+pageNum%>" ><b>A</b> 답변하기</button>
							</div>
					    <%} %>

					</div>
				
	             
	                <!--답글-->
	        		<% for(int i=0;i<articleList2.size();i++){
	        			
	 					
	 					
						article2=articleList2.get(i);
						int ref2=article2.getRef();	
						int answerNum = article2.getNum();

						

								
								
						int likeitCheck = dbPro.getLikeitCount(answerNum,"refNum"); //추천수
						int likeitck = dbPro.getLikeCheck(answerNum,email); // 추천했나안했나
						
						int checkView = dbPro.getSelCheck(ref2,"ref"); //채택한지 안한지 체크
						int selCK = dbPro.getSelCheck(answerNum,"num");
						

						String writerEmails = article2.getWriterEmail();
						
						 if(ref2==ref){ %> 
						<div id="qview-wrapper">  
							<!--  답변보기-->	            
	                		<h1><b>A</b><%=article2.getSubject() %></h1>
			                <div class="subjectInfo">
								<p><%=article2.getWriter() %></p>
								<p><%=sdf.format(article2.getReg_date()) %></p>
							</div>
							<%
							if(selCK==1){
							%>
								<img class="confim" src="../img/confirmImg.png" alt="채택">
							<%} %>
							
							<div class="ldcsAttrBox">
								<div class="lineDrawCSS3Attr"></div>
							</div>
							
							<!--질문 본문 -->
							<article>
								<div class="textView"><%=article2.getContent() %></div>
							</article>
							
					
							<!-- 추천/댓글 -->
							<div class="AnswerbtnList">

								
								<div class="reply num<%=article2.getNum()%>" onclick="commentView(<%=article2.getNum()%>)">댓글 <%=dbPro.getComentCounting(article2.getNum()) %></div>
								<div class="reply disnum num<%=article2.getNum()%>" onclick="commentClose(<%=article2.getNum()%>)" style="display:none">댓글 <%=dbPro.getComentCounting(article2.getNum()) %></div>
								
								<%
								// 작성자이고, 채택안할시에만 보임 - 채택기능
								if(email.equals(writerEmail) && checkView==0){ 
								%>
									<button id="confirmAnswer" onclick="selectAnswer(<%=article2.getNum()%>,<%=article2.getRef()%>)" ><b>A</b> 채택하기</button>
								<%} %>
							</div>
							
							<div id="commentArea" class="cmtNum<%=article2.getNum()%>" style="display:none">
							</div>
	                
	                		<div id="likeItBtn">
	                			<% 
								//로그인안하면 추천버튼 누를떄 로그인하라함
								if(session == null || session.getAttribute("email") == null){
								%>
									<div class="likeit" onclick="LikePlzLogin()">
										<span class="likeCon"></span>
										<span class="hit"><%=likeitCheck %></span>
									</div>
								<% 
								//답변 작성자는 추천버튼을 눌러도 아무일도 일어나지 않음
								}else if(writerEmails.equals(email)){
								%>
									<div class="likeit" onclick="myLikeIt()">
										<span class="likeCon"></span>
										<span class="hit"><%=likeitCheck %></span>
									</div>
								<%
								//기타 사용자만 추천기능이 작동/보임
								}else{ 
								%>
									<%if(likeitck==0){ %>
										<div class="likeit" onclick="likeit(<%=article2.getNum()%>,<%=article2.getRef()%>)">
											<span class="likeCon"></span>
											<span class="hit"><%=likeitCheck %></span>
										</div>
									<%}else { %>
										<div class="likeit OnView" onclick="likeit(<%=article2.getNum()%>,<%=article2.getRef()%>)">
											<span class="likeCon"></span>
											<span class="hit"><%=likeitCheck %></span>
										</div>
									<%} %>
								<%} %>
	                		</div>
	               		<%} %>
	        			</div>  
	                <%} %>
	            <%} %>
	                
				
				<br class="cbt">
				<div id="reply_query" >
				</div>
       		</div>
			
			
			<!-- 사이드바 -->
			<div id="sidebar">
				<div class="aside-cta" role="navigation" aria-label="ask new question">
                    
                </div>
				<div id="hot-network-questions" class="module tex2jax_ignore">
					<h4>
						<a href="#" class="js-gps-track">
							연관된 다른 질문들
						</a>
                    </h4>
                    <ul>
                        <li>
                            <a href="#" class="js-gps-track">왜 교수가 (순수 수학에서) 박사 과정 학생을 받아들이겠습니까?</a>
                        </li>
                        <li>
                            <a href="#" class="js-gps-track">당신의 떠있는 섬이 고도를 잃고 있다는 것을 어떻게 알았습니까?</a>
                        </li>                            
                    </ul>
                    </div>
			</div>		
		</div>
	</div>
</div>
<input type="hidden" id="num" value="<%=num%>">
<input type="hidden" id="pagenum" value="<%=pageNum%>">
<%@ include file="../footer.jsp"%>