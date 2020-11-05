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
<title>웹 어플리케이션 경로 구하기</title>
</head>
<body>
contextPath : <%= request.getContextPath() %>
<br>
<a href="/myjsp/chap04/bufferEx1.jsp">buffer</a> <!-- 경로를 contextPath부터 작성 but contextPath 변경 가능해서 위험... -->
<br>
<a href="<%= request.getContextPath() %>/chap04/bufferEx1.jsp">buffer</a> <!-- 안전한 경로 작성 -->
</body>
</html>