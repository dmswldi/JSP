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
<h1>get attribute</h1>
<h2><%= request.getAttribute("reqAttr1") %></h2> <!-- 다른 request니까 null, 가능한 작은 범위인 request를 써라 -->
<h2><%= session.getAttribute("sessionAttr1") %></h2> <!-- 다른 브라우저에서는 다른 세션이라 null, 얘도 여러 스레드가 공유 -->
<h2><%= application.getAttribute("appAttr1") %></h2> <!-- 다른 브라우저에서 읽어짐, 여러 스레드가 공유하는 객체에 쓰지 않고 읽기 전용으로 하는 게 좋다 -->
<!-- app: 여러 브라우저가 request 날리면 위험하다,,, -->
</body>
</html>