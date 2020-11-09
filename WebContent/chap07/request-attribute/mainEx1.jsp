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

<!-- 여기는 불필요해,, 자바 코드만 남으면 됨 -->
<%
Object o = new Object();
System.out.println(o.hashCode());

request.setAttribute("obj", o); // 객체릂 해당 이름으로 전달
%>

<jsp:forward page="subEx1.jsp">
	<jsp:param value="newVal" name="newParam"/>
</jsp:forward>
</body>
</html>