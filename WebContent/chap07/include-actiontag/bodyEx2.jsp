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
<h1>bodyex2</h1>

request 참조 값 : <%= System.identityHashCode(request) %>
<br>
<!-- request 객체는 ServletRequestWrapper 객체 -->
<%= request instanceof HttpServletRequest %>
<br>
<%= request instanceof ServletRequestWrapper %> <!-- HttpServletRequest interface 구현하는 class -->
<!-- 완전히 같지 않지만 리퀘스트가 같은 놈을 래핑하고 있었다, 걍 같다,,  -->
<br>
<jsp:include page="navbarEx2.jsp"></jsp:include>
</body>
</html>