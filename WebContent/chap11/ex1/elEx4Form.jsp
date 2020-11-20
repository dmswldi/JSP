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
<%-- form의 name과 자바빈 객체의 property가 일치하게 --%>
<form action="elEx4View.jsp" method="post">
	id: <input type="text" name="id" autofocus required/> <br />
	pw: <input type="password" name="password" required/> <br />
	name: <input type="text" name="name" required/> <br />
	email: <input type="email" name="email" placeholder="이메일 선택 입력"/> <br />
	<input type="submit" value="등록" />
</form>
</body>
</html>