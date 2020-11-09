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
<form action="<%= request.getContextPath() %>/chap07/forward-actiontag/view.jsp"> <!-- 브라우저 입장에서의 경로 -->

보고 싶은 페이지 선택 :
	<select name="code">
		<option value="A">A 페이지</option>
		<option value="B">B 페이지</option>
		<option value="C">C 페이지</option>
	</select>

<input type="submit" value="이동">
</form>

</body>
</html>