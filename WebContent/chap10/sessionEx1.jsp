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
<h1>sessoin ex1</h1>
<%
request.setAttribute("attr1", "value1");
session.setAttribute("attr2", "value2");
%>

attr1: <%= request.getAttribute("attr1") %> <br>
attr2: <%= session.getAttribute("attr2") %>
<!-- session은 여러 request 객체가 공유하는 객체 -->
<!-- request 객체는 여기서 할 일을 끝마침,,, -->
</body>
</html>