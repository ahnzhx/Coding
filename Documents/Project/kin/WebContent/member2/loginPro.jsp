
<%@page import="java.util.List"%>
<%@page import="ch12.board.LogonDataBean"%>
<%@page import="ch12.board.LogonDBBean"%>
<%@page import="ch12.board.BoardDBBean"%>
<%@page import="ch12.board.MypageDataBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
//사용자가 입력한 아이디와 비밀번호
String email=request.getParameter("email");
String passwd=request.getParameter("passwd");


LogonDBBean manager=LogonDBBean.getInstance();

int check=manager.userCheck(email, passwd);

//유저이름 얻기
BoardDBBean nameGet=BoardDBBean.getInstance();
List<MypageDataBean> infoList=nameGet.getInfo(email);
MypageDataBean info=infoList.get(0);
String name=info.getName();


if(check==1) {
	session.setAttribute("email", email);
	session.setAttribute("name", name);
}
out.println(check);
%>