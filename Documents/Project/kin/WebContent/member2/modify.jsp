<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="../header.jsp"%>

<link rel="stylesheet" href="../css/secondary.css">

<style>
#status ul {list-style:none}
</style>

<div class="container">
    <div id="content" class="snippet-hidden">
    	<script src="../js/modify.js"></script>
    	<div id="status">
			<ul>
				<li><label for="passwd">비밀번호</label>
				<input id="passwd" name="passwd" type="password"
				size="20" placeholder="6~16자 숫자/문자" maxlength="16">
				<li class="label2">
				<button id="modify">정보수정</button>
				<button id="delete">탈퇴</button>
			</ul>
		</div>
    </div>
</div>    

   <%@ include file="../footer.jsp"%>