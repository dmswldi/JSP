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
<script>
$(document).ready(function(){
	$("#form-btn").click(function(){
		location.href = "${pageContext.request.contextPath }/sample2/form";
	});
})
</script>
</head>
<body>
<div class="container">
	<h1>글 목록</h1>
	<ul>
		<c:forEach items="${posts }" var="post" varStatus="status">
			<li><a href="${pageContext.request.contextPath }/sample2/detail?idx=${status.index}">${post.title }</a></li>
		</c:forEach>
	</ul>
	<button id="form-btn" class="btn btn-primary">게시글 작성</button>
</div>
</body>
</html>