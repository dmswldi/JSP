<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1>java 웹 앱의 4개의 영역</h1>
<ul>
	<li>page - pageContext 객체</li>
	<li>request - request 객체</li>
	<li>session - session 객체</li>
	<li>application - application 객체</li>
	<!-- session보다 넓은 영역, 모든 request, 모든 session이 공유하는 객체, 모든 servlet, jsp가 공유하는 객체 -->
</ul>

<%
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sessionAttr1", "sessionVal1");
application.setAttribute("appAttr1", "appVal1");
%>
</body>
</html>