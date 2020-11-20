<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String[] foods = request.getParameterValues("food");
request.setAttribute("fav", foods);
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
<%
for(int i = 0; i < foods.length; i++){
	pageContext.setAttribute("i", i);
	
%>
	${fav[i] }
<%
	
}
%>
<hr />
<%
int i = 0;
for(String food : foods){
	pageContext.setAttribute("i", i);
%>
	${fav[i] }
<%
	i++;
}
%>
</body>
</html>