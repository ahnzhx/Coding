<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<%-- <c:forEach var ="roomVO" items="${home}">
	<h2> ${roomVO.rno }</h2>
	<h2> ${roomVO.floor1}</h2>
	<h2> ${roomVO.lease_type}</h2>
	 
</c:forEach> --%>
<c:forEach var ="map" items="${point}">
	<h2> ${map.x}</h2>
	<h2> ${map.y}</h2>
	
	 
</c:forEach> 
<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
