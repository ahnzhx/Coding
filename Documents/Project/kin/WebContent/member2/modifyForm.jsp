
<%@page import="ch12.board.LogonDataBean"%>
<%@page import="ch12.board.LogonDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%request.setCharacterEncoding("utf-8"); %>
<%
String email=(String)session.getAttribute("email");
String passwd=request.getParameter("passwd");
LogonDBBean manager=LogonDBBean.getInstance();
LogonDataBean m=manager.getMember(email, passwd);

try{
%>

<script src="../js/modify.js"></script>


        <div id="signup-page">

            <div id="explanation-text" style="line-height: 1.8;width: 65%;margin: 0 auto 20px;">
               회원정보 수정
            </div>


            <div id="formContainer" class="">

                <div id="login-form">

                    <div id="se-login-fields">
                        <label for="email">이메일 주소</label><br>
                        <input id="email" name="email" type="hidden" size="20" maxlength="50" placeholder="example@kings.com" value="<%=email%>" readonly="readonly">
                        <div class="emailFormsModify"><%=email%></div>

                        <label for="display-name">이름</label><br>
                        <input id="name" name="name" type="text" size="20" placeholder="홍길동" type="text" value="<%=m.getName() %>"><br>

                        <label for="password">패스워드</label><br>
                        <input id="passwd" name="passwd" type="password" size="20" placeholder="6~16자 숫자/문자" maxlength="16">

                        <label for="repass">패스워드 재입력</label><br>
                        <input id="repass" type="password" size="20" placeholder="비밀번호 재입력" maxlength="16"><br>

                        <label for="tel">전화번호</label><br>
                        <input id="tel" name="tel" type="text" size="20" placeholder="010-0000-0000" maxlength="20" value="<%=m.getTel() %>">
                    </div>
                    <br class="cbt">
                    <input id="modifyProcess" type="submit" value="수정완료" class="fr">
                </div>


            </div>

        </div>




<%}catch(Exception e){}%>



   