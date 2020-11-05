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
<title>include directive</title>
</head>
<body>
<%
	int number = 10;
%>

<%-- <%@ include file="includee.jspf" %> <!-- 상대 경로 --> --%>
<%@ include file="/chap07/includee.jspf" %> <!-- 절대 경로: WebContent 기준! -->
공통변수 DATAFOLDER = "<%= dataFolder %>"
</body>
</html>