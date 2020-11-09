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
<%
String code = request.getParameter("code");
String viewPageURI = null;

if(code.equals("A")) viewPageURI = "/chap07/viewModule/a.jsp"; // 왜 myjsp를 WebContent 안에서 찾지? 언제 컨텍스트패스를 쓰는 거야 그럼?
// request.getContextPath()는 '/myjsp'라서 WebContent 안에서 myjsp 찾으니까 없어서 안 됨
else if(code.equals("B")) viewPageURI ="../viewModule/b.jsp";
else if(code.equals("C")) viewPageURI ="../viewModule/c.jsp";
//slash 없으면 상대 경로
%>
<jsp:forward page="<%= viewPageURI %>"></jsp:forward>
</body>
</html>