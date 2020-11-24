<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h1>title: <c:out value="${list[param.index].title }" /></h1>
<div style="border:1px solid black; width:500px; height:300px;">
	<c:out value="${list[param.index].body }" />
</div>

<%-- 누군가 body에 script 코드 넣어서 내 세션 정보 등 빼갈 수 있음 ,,,,, --%>
<pre>
<c:out value="${list[param.index].body }"></c:out>
</pre>

<%--
<c:forEach var="item" items="${list }">
	<c:if test="${item.title == list[param.index].title }">
		<div style="border:1px solid black; width:500px; height:300px;">
			${item.body }
		</div>
	</c:if>
</c:forEach>
 --%>

<br />
<a href="jstlEx25.jsp" class="btn btn-secondary">뒤로</a>
</body>
</html>