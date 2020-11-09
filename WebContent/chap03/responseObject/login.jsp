<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("memberId");
	if(id != null && id.equals("madvirus")){
// 		response.sendRedirect("index.jsp");
		response.sendRedirect(request.getContextPath() + "/chap03/responseObject/index.jsp");
	} else {

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인에 실패</title>
</head>
<body>
잘못된 아이디입니다.
</body>
</html>
<%
	}
%>