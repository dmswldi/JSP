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
<!-- pageContext의 몇 가지 유용한 메소드 -->
<h1>pageContext methods</h1>
<!-- 4개의 영역 -->
<% 
pageContext.setAttribute("pageAttr1", "pageVal1"); /* 가장 좁은 영역, 감싸고 있는 리퀘, 세션, 앱은 누군지 다 앎 -> 얘로 다 꺼내 읽을 수 있음 */
request.setAttribute("reqAttr1", "reqVal1");
session.setAttribute("sesAttr1", "sesVal1");
application.setAttribute("appAttr1", "appVal1");
%>

<%= pageContext.getAttribute("pageAttr1") %> <br> <!-- 파라미터 1개: pageContext 영역에서 꺼낸다 -->
<%= pageContext.getAttribute("reqAttr1", PageContext.REQUEST_SCOPE) %> <br> <!-- request 객체에서 꺼내고 싶다 -->
<%= pageContext.getAttribute("sesAttr1", PageContext.SESSION_SCOPE) %> <br>
<%= pageContext.getAttribute("appAttr1", PageContext.APPLICATION_SCOPE) %>
</body>
</html>