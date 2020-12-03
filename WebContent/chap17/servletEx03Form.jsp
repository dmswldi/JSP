<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
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
<h3>doGet, doPost 연습</h3>
<%-- class 부르듯이 chap17.ServletEx03.java X -> 사용자는 class 정보 모르고(모르는 게 맞음) 매핑 정보만 앎
그냥 request.contextPath X -> el이 request 모름 ㅠ --%>

<form action="${pageContext.request.contextPath }/ex03" method="post">
	이름 : <input type="text" name="name" /> <br />
	<input type="submit" value="전송" />
</form>
</body>
</html>