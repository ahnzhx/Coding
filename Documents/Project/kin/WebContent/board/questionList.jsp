<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>

<%@ include file="../header.jsp"%>

    <div class="container _full ">
        <div id="content" class="snippet-hidden">
			<div class="inner-content">
				 <div id="mainbar">
					<script src="<%=Addr %>/js/list.js"></script>
					<%@ include file="list.jsp"%>
				</div>
				
				 <div id="sidebar">

                    <div class="aside-cta" role="navigation" aria-label="ask new question">
                        <a href="writeForm.jsp" class="btn-outlined">질문하기</a>
                    </div>
                    
                    <div id="dfp-tsb" class="everyonelovesstackoverflow"></div>
                    <div id="hireme" class="orange tagged tex2jax_ignore clc-jobs-multi">
                        <a class="top " href="#" target="_blank">
                            <span>일자리를 찾고 계신가요?</span>
                        </a>
                        <div class="middle">
                            <ul class="jobs">
                                <li class="clc-dismissable">
                                    <!--!시작 구인/구직 리스트-->
                                    <div class="job-wrap">
                                        <a class="job" title="QA엔지니어를 구합니다." href="#" target="_blank">
                                            <div class="title">QA 엔지니어</div>
                                            <div>
                                                <span class="company">금성사</span>
                                                <span class="location">
                                                    <i class="locationIcon"></i>
                                                    <span>대전시 서구</span>
                                                </span>
                                            </div>

                                            <div class="opts">
                                                <span class="opt remote">
                                                    <span>Remote</span>
                                                </span>
                                            </div>
                                            <span class="post-tag">qa</span>
                                            <span class="post-tag">testing</span>
                                        </a>
                                    </div>
                                    <!--!끝 구인/구직 리스트-->

                                    <div class="job-wrap">
                                        <a class="job" title="초급 JAVA 개발자를 구합니다" href="#" target="_blank">
                                            <div class="title">초급 JAVA 개발자</div>
                                            <div>
                                                <span class="company">선경그룹</span>
                                                <span class="location">
                                                    <i class="locationIcon"></i>
                                                    <span>서울 강남구</span>
                                                </span>
                                            </div>

                                            <div class="opts">
                                                <span class="opt remote">
                                                    <span>Remote</span>
                                                </span>
                                            </div>
                                            <span class="post-tag">java</span>
                                            <span class="post-tag">초급</span>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    
                    <!--태그-->
                    <div id="hot-network-questions" class="module tex2jax_ignore">
                        <h4>
                            <a href="#" class="js-gps-track">
                                Tag
                            </a>
                        </h4>
                        <ul class="tagList">
                            <a href="#">JAVA</a>
                            <a href="#">HTML</a>
                            <a href="#">CSS</a>
                        </ul>
                    </div>
                    
                    <!--직업질문-->
                    <div id="hot-network-questions" class="module tex2jax_ignore">
                        <h4>
                            <a href="#" class="js-gps-track">
                                직장 관련 질문
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

<%@ include file="../footer.jsp"%>
