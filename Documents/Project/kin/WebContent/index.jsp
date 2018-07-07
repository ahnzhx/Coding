<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
 <script type="text/javascript" src="<%=Addr %>/js/basic.js"></script>
    <div class="container _full ">
        <div id="content" class="snippet-hidden">
            <div class="keyVisual">
                <div id="mySwipe">
                    <div class="swipe-wrap">
                        <div class="rs_01" data-index="0" style="background: url('./img/mainSlideImg001.jpg') #0e5fab">
                            <a href="#" class="kv_TextBox">
                                <h1>Coding Questions</h1>
                                <p>질문하기</p>
                                <hr>
                                <span>어려운 프로그래밍! 쉽게 물어 보고 싶을땐?<br/>질문하기에서 재치있고 쉬운 답변을 받아보세요</span>
                            </a>
                        </div>
                        
                        <div class="rs_02" data-index="1" style="background: url('./img/mainSlideImg002.jpg') #67c3f4">
                            <a href="#" class="kv_TextBox">
                                <h1>Developers Jobs</h1>
                                <p>개발자 일자리</p>
                                <hr>
                                <span>프로그래머를 위한 구인/구직 사이트 어디 없을까?<br/>개발자 일자리에서 찾아보세요!</span>
                            </a>
                        </div>
                        
                        
                        <div class="rs_03" data-index="1" style="background: url('./img/mainSlideImg003.jpg') #597098">
                            <a href="#" class="kv_TextBox">
                                <h1>Coding Community</h1>
                                <p>커뮤니티</p>
                                <hr>
                                <span>개발자들과 대화를 나누고 싶을땐?<br/>커뮤니티에 오셔서 대화를 나눠보세요!</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="sbtn_area">
                    <a href="javascript:;" class="slidesjs-previous" onclick="mySwipe.prev()">이전슬라이드보기</a>
                    <a href="javascript:;" class="slidesjs-next" onclick="mySwipe.next()">다음슬라이드보기</a>
                </div>
            </div> <!--/End keyVisual-->

            <div class="inner-content">
                <div id="mainbar">
					<script src="<%=Addr %>/js/list.js"></script>
					<%@ include file="/board/list.jsp"%>
					
					<style>
					#mainbar #jump {display:none}
					#mainbar .bottom-notice {display:none}
					</style>
                </div>
                
                <div id="sidebar">

                    <div class="aside-cta" role="navigation" aria-label="ask new question">
                        <a href="./board/writeForm.jsp" class="btn-outlined">질문하기</a>
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
        </div> <!--/content-->
    </div>


<%@ include file="footer.jsp"%>