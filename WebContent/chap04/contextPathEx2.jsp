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
<h1>contextPathEx2</h1>
<jsp:include page="/chap04/contextPathEx2Sub.jsp"></jsp:include> <!-- 다른 jsp file 포함, WebContent 기준 -->
<!-- 내부에서 쓸 때 X, 외부에서 쓸 때 contextPath 필요! -->
<br>
<a href="/chap04/contextPathEx2Sub.jsp">to sub.jsp</a> <!-- 외부 경로...! -->
<!-- http://localhost:8080/chap04/contextPathEx2Sub.jsp -->
<a href="<%= request.getContextPath() %>/chap04/contextPathEx2Sub.jsp">to sub.jsp</a>
</body>
</html>