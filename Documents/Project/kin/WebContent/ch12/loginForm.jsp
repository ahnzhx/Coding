<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String addr = "http://localhost:9090/kin";
	String email="";
	try{
		email=(String)session.getAttribute("email");
%>
<%
	if(email==null||email.trim().equals("")){//인증되지 않은 사용자 영역
%>
	<script type="text/javascript" src="<%=addr %>/js/login.js"></script>
	<script type="text/javascript" src="<%=addr %>/js/loginForm.js"></script>
	<div id="login_groupbox" class="login_showbox" style="display:none;">
		<div class="lgb_middlegroup">
			<div class="lgb_middlebox">
				<div class="lgb_radiusbox">
					
					<div class="lgb_closebox" onclick="loginhide()">
						<img src="<%=addr %>/img/lgb_closebtn.png" alt="닫기">
					</div>
					
					<div class="lgb_iconbox">
						<img src="<%=addr %>/img/loginbox_monitor.png" alt="로그인로고">
					</div>
					
		
					<div class="lgb_btnbox">
						<img src="<%=addr %>/img/loginTxtImg.png" alt="로그인">
					</div>
					
					<!--로그인-->
					<div class="login_showbox">
						<div class="lgb_inputbox">
							<!--ID--->
							<ul class="lgb_id">
								<li class="lgin_tit"><img src="<%=addr %>/img/lgb_idtxt.png" alt="E-mail"></li>
								<li class="lgin_inpt"><input id="email" name="email" type="email"  ></li>
							</ul>

							<ul class="lgb_marginbox"></ul>

							<!--PW--->
							<ul class="lgb_pw">
								<li class="lgin_tit"><img src="<%=addr %>/img/lgb_pwtxt.png" alt="ID"></li>
								<li class="lgin_inpt"><input id="passwd" name="passwd" type="password"></li>
							</ul>	

						</div>

						<div class="loginbtnbox">
							<a id="login" class="loginBtnBox">로그인</a>
						</div>

						<div class="lgb_footer">
							<a href="#">
								아이디/비번찾기
							</a>
							<i class="lgbline"></i>
							<a href="<%=addr %>/member2/registerForm.jsp">
								회원가입 
							</a>
						</div>
					</div>
	
				</div>
			</div>
		</div>
	</div>



<%}else{//인증 영역
	
%>

		
<%}}catch(Exception e){e.printStackTrace();} %>



 