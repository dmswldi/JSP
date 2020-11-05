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
<h1>path</h1>
<a href="<%= request.getContextPath() %>/chap04/contextPathEx2.jsp">other file</a> <br> <!-- 절대 경로 -->
<a href="contextPathEx2.jsp">other file2</a> <!-- 상대 경로, 기준: 마지막 슬래시 뒤에 붙음 -->
 <br> <br>
<a href="<%= request.getContextPath() %>/chap04/subfolder/pathEx1Sub.jsp">절대 경로</a> <br>
<a href="subfolder/pathEx1Sub.jsp">상대 경로</a>
</body>
</html>