<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%
	Date now = new Date();
%>
<%@ page import="java.util.Calendar" %>
<%@ page trimDirectiveWhitespaces="true" %>
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
현재 시각:
<%= now %>
<br>

<%
	Calendar cal = Calendar.getInstance();
%>
오늘은
	<%= cal.get(Calendar.YEAR) %>년
	<%= cal.get(Calendar.MONTH) + 1 %>월
	<%= cal.get(Calendar.DATE) %>일
입니다.
<br>

<%
	java.util.Calendar cal2 = java.util.Calendar.getInstance();
%>
오늘은
	<%= cal2.get(Calendar.YEAR) %>년
	<%= cal2.get(Calendar.MONTH) + 1 %>월
	<%= cal2.get(Calendar.DATE) %>일
입니다.
<br>

현재 시각: <%= new java.util.Date() %>
</body>
</html>