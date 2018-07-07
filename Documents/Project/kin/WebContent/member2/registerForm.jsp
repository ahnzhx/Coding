<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script src="../js/register.js"></script>
<link rel="stylesheet" href="../css/secondary.css">
<div class="container">
    <div id="content" class="snippet-hidden">

        <div id="signup-page">

            <div id="explanation-text" style="line-height: 1.8;width: 65%;margin: 0 auto 20px;">
               코딩 오버플로우는 최소한의 정보로 가입이 간단합니다.       
            </div>


            <div id="formContainer" class="">

                <div id="login-form">

                    <div id="se-login-fields">
                        <label for="email">이메일 주소</label><br>
                        <input id="email" name="email" type="email" size="20" maxlength="50" placeholder="example@kings.com" autofocus>
                        <div id="checkIdText">
                        	<span class="FontNoticeEmail redFont" style="display:none"></span>
                        	<span class="FontNoticeEmail normalFont" style="display:none"></span>
                        </div>

                        <label for="display-name">이름</label><br>
                        <input id="name" name="name" type="text" size="20" placeholder="홍길동" type="text"><br>

                        <label for="password">패스워드</label><br>
                        <input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16">

                        <label for="repass">패스워드 재입력</label><br>
                        <input id="repass" type="password" size="20" placeholder="비밀번호 재입력" maxlength="16"><br>

                        <label for="tel">전화번호</label><br>
                        <input id="tel" name="tel" type="text" size="20" placeholder="010-0000-0000" maxlength="20">
                    </div>
                    <br class="cbt">
                    <input id="openid_submit" type="submit" value="Sign up" class="fr">
                </div>
                <div class="js-terms cbt mute-text text-centered terms">

                    등록하면 <a href="#" name="privacy">개인정보 취급방침</a> 그리고<br>
                    <a href="#" name="tos">서비스 약관</a>에 동의하게 됩니다.
                </div>

            </div>


            <div id="switch" class="js-redirects">
                이미 계정이 있으십니까?
                <a href="#" name="login" onclick="loginshow()" >로그인</a>
            </div>
        </div>
    </div>
</div>

   <%@ include file="../footer.jsp"%>
	