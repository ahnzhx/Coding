<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script  src="resources/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);
.footer .footer-bottom{}
 #list {
      text-align: center;
      font-size:30px;
       font-family: 'Hanna', cursive
    }


</style>
</head>
<body>

<jsp:include page = "top.jsp" flush="false"/>

<div class="container" style="margin-top:50px;">
<div id="list" class="navbar">게시판</div>
<table class="table table-striped table-bordered table-hover">
<thead>
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>날짜</th>
	
</tr>
</thead>
<tbody>
<c:forEach var="board" items="${list}">
<tr>

	 <td>${board.board_bno }</td> 
	<td> <a href="detailboard.do/${board.board_bno}">${board.title }</a></td>
	<td>${board.email}</td>
	<td>
	<fmt:formatDate value="${board.date }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
</tr>
</c:forEach>
</tbody>



</table>

<hr>
<a class="btn btn-default write pull-right" style="color:black;" href="board_write.do">글쓰기</a>
</div>
</body>
</html>
<script>
$(document).ready(function(){
	$(".write").click(function() {
		if(${sessionScope.name==null}){
			alert('로그인을 먼저 해주세요');
			
		}
		});
});
</script>