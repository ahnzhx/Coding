<%@page import="ch12.board.BoardDBBean"%>
<%@page import="ch12.board.BoardDataBean"%>
<%@page import="ch12.board.timeString"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
/*버그 임시조치*/
#mainbar #jump button:last-child {display:none;}
</style>
<%
	//String email="";
	int AnswerHit = 0;
	int pageSize=8;
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
	timeString tfs = new timeString();
	
	String pageNum=request.getParameter("pageNum");
	if(pageNum==null) 
		pageNum="1";

	int count=0;
	int currentPage=Integer.parseInt(pageNum);

	List<BoardDataBean> articleList=null;
	BoardDBBean dbPro=BoardDBBean.getInstance();
	count=dbPro.getArticleCount();

	if(count==(currentPage-1)*pageSize)
		currentPage-=1;

	int startRow=(currentPage-1)*pageSize+1;

	try{
		if(count>0) 
			articleList=dbPro.getArticles(startRow,pageSize);
		
		if(articleList.isEmpty())
			count=0;
	}catch(Exception e){}
%>


			<%if(count==0){%>
			<div id="list_article" class="box2">
				<ul>
					<li><p>게시판에 저장된 글이 없습니다.
				</ul>
			</div>
			<%}else{%>

                    <div class="subheader">
                        <h1 id="h-top-questions">
                            최근 올라온 질문
                        </h1>

                        <div id="tabs">
                            <a class="youarehere " href="#" data-nav-xhref="" title="태그 설정에 따른 관심 질문" data-value="interesting" data-shortcut="">
                                관심질문
                            </a>
                            <a href="#" data-nav-xhref="" title="추천 질문" data-value="featured" data-shortcut="B">
                                <span class="bounty-indicator-tab">387</span>추천질문
                            </a>
                            <a href="#" data-nav-xhref="" title="사람들이 많이 본 질문" data-value="hot" data-shortcut="H">
                                인기질문
                            </a>
                            <a href="#" data-nav-xhref="" title="이번 주 가장 많은 답변, 그리고 추천수" data-value="week" data-shortcut="W">
                                주간 베스트
                            </a>
                            <a href="#" data-nav-xhref="" title="이번 달 가장 많은 답변과 추천" data-value="month" data-shortcut="M">
                                월간 베스트
                            </a>
                        </div>
                    </div>
                    
                    <div id="qlist-wrapper">
                        <div id="question-mini-list">
                            <div>
								<%
									for(int i=0;i<articleList.size();i++){
										BoardDataBean article=articleList.get(i);		
										int likeitCheck = dbPro.getLikeitCount(article.getNum(),"boardNum"); //추천수
								
								%>
		                               <!--시작! 최근 등록된 질문목록-->
	                                <div class="question-summary narrow">
	                                    <div class="cp">
	                                        <div class="votes">
	                                            <div class="mini-counts">
	                                            	<span title="<%=likeitCheck %> 추천"><%=likeitCheck %></span>
	                                            </div>
	                                            <div>추천</div>
	                                        </div>
	                                        <div class="status unanswered">
	                                            <div class="mini-counts">
	                                            	<%
	                                            	AnswerHit = dbPro.getAnswerHit(article.getNum());
	                                           		%>
	                                            	<span title="답변 <%=AnswerHit %>개"><%=AnswerHit %></span>
	                                            </div>
	                                            <div>답변</div>
	                                        </div>
	                                        <div class="views">
	                                            <div class="mini-counts">
	                                            	
	                                            	<span title="조회수 <%=article.getReadcount() %>회"><%=article.getReadcount() %></span>
	                                            </div>
	                                            <div>조회수</div>
	                                        </div>
	                                    </div>
	                                    <div class="summary">
	                                        <h3><a href="http://localhost:9090/kin/board/view.jsp?<%="num=" + article.getNum()+"&pageNum="+pageNum%>" class="question-hyperlink"><%=article.getSubject() %></a></h3>
	                                        <div class="tags t-javascript">
	                                         <%
	                                         	//태그 구현
	                                            String tagList = article.getTag();
	                                            String[] tagSplit = tagList.split(",");
	                                            for (int ts=0; ts<tagSplit.length; ts++) {
	                                            %>
	                                            <a href="#" class="post-tag"><%=tagSplit[ts] %> </a>
	                                            <%} %> 
	                                            
	                                        </div>
	                                        <div class="started">
	                                            <a href="#"><%=article.getWriter() %></a> 
	                                            <a href="#" class="started-link">
	                                            	<%if(article.getSelCheck()>=1){ %>
	                                            		[채택완료]
	                                            	<%} %>
	                                            	<% String timeView = tfs.formatTimeString(article.getReg_date()); %>
	                                                <span title="<%=sdf.format(article.getReg_date()) %>" class="relativetime"><%=timeView %></span>
	                                            </a>
	
	                                        </div>
	                                    </div>
	                                </div>
	                                <!--끝! 최근 등록된 질문목록-->
								<%} // for End%>
						</div>
					</div>
				</div>
				<br class="cbt">
				<h2 class="bottom-notice" data-loc="2">
					더 많은 정보를 보고 싶으신가요?<br/>
					<a href="#">답변되지 않은정보</a>, 혹은 <a href="#">인기있는 태그</a>
					의 정보를 보고 <a href="#">다른사람을 도와</a>주세요.
				</h2>
<%}%>

<%--페이지 이동 처리--%>
<div id="jump" class="box3">
<%
if(count>0){
	int pageCount=count/pageSize+(count%pageSize==0? 0:1);
	int startPage=1;
	
	if(currentPage%pageSize!=0) 
		startPage=(int)(currentPage/pageSize)*pageSize+1;
	else 
		startPage=((int)(currentPage/pageSize)-1)*pageSize+1;
	int pageBlock=3;
	int endPage=startPage+pageBlock-1;
	
	if(endPage>pageCount) endPage=pageCount;
	if(startPage>pageBlock){%>
		<button id="juP" name="<%=startPage-pageBlock %>"
			onclick="p(this)" class="w2">이전</button>
	<%}
	for(int i=startPage;i<=endPage;i++){
	if(currentPage==i){%>
		<button id="ju" name="<%=i %>" onclick="p(this)" class="w1"><%=i %></button>
		<%}else{ %>
		<button id="ju" name="<%=i %>" onclick="p(this)" class="w"><%=i %></button>
	<%} %>
	<%}
		if(endPage>pageCount){%>
		<button id="juN" name="<%=startPage+pageBlock%>"
			onclick="p(this)" class="w2">다음</button>
	<%}}%>
	
	</div>

