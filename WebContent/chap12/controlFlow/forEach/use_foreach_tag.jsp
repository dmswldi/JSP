<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
HashMap<String, Object> mapData = new HashMap<>();
mapData.put("name", "최범균");
mapData.put("today", new java.util.Date());
%>
<c:set var="intArray" value="<%= new int[] {1, 2, 3, 4, 5} %>" />
<c:set var="map" value="<%= mapData %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>forEach 태그</title>
</head>
<body>
<h4>1부터 100까지 홀수의 합</h4>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum + i }" />
</c:forEach>
결과 = ${sum }

<br />

<h4>구구단 4단</h4>
<ul>
<c:forEach var="i" begin="1" end="9">
	<li>4 &times; ${i } &equals; ${4 * i }</li>
</c:forEach>
</ul>

<br />

<h4>int형 배열</h4>
<c:forEach var="i" items="${intArray }" begin="2" end="4" varStatus="status">
	${status.index } - ${status.count } - [${i }] <br />
</c:forEach>

<br />

<h4>Map</h4>
<c:forEach var="i" items="${map }">
	${i.key } = ${i.value } <br />
</c:forEach>
</body>
</html>