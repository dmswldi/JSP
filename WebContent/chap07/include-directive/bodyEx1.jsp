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
<!-- <div class="container">
	<h1>cool navbar</h1>
</div> -->
<!-- 1. include directive 사용 -->
<%-- <%@ include file="/include-directive/footerEx1.jsp" %> --%>
<%@ include file="/WEB-INF/chap07/include-directive/navbarEx1.jsp" %> <!-- 공개하지 않은 파일 WEB_INF 폴더 안에 넣어놓는다. -->
<!-- http://localhost:8080/myjsp/WEB-INF/chap07/include-directive/navbarEx1.jsp 외부 경로로 WEB-INF 접근 X -->

<div class="container">
	<h1>cool page~!!!</h1>
	<h2><%= name %></h2>
</div>

<!-- <div class="container">
	<h1>cool footer</h1>
</div> -->
<%-- <%@ include file="/chap07/include-directive/footerEx1.jsp" %> --%>
<%@ include file="/WEB-INF/chap07/include-directive/footerEx1.jsp" %>

</body>
</html>