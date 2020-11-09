<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Object o = session.getAttribute("logout");
if(o != null && (boolean) o == true){
	session.setAttribute("logout", false);
	out.print("<script>alert('로그아웃 되었습니다.');</script>");
}

Object o2 = session.getAttribute("login");
if(o2 != null && (boolean) o2 == false){
	session.setAttribute("logout", true);
	out.print("<script>alert('아이디와 비밀번호가 일치하지 않습니다.');</script>");
}
%>
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
<form action="main.jsp">
id: <input type="text" name="id" /> <br>
pw: <input type="password" name="password" /> <br>
<input type="submit" value="로그인" />
</form>
</body>
</html>