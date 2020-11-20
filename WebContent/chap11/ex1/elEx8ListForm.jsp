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
<form action="elEx8ListView.jsp" method="post">
	<label for="berry">딸기<input type="checkbox" name="food" id="berry" value="berry" /></label> <%-- 띄어쓰기 하고 싶다 #nbsp --%>
	<label for="grape">포도<input type="checkbox" name="food" id="grape" value="grape" /></label>
	<label for="banana">바나나<input type="checkbox" name="food" id="banana" value="banana" /></label>
	<label for="milk">우유<input type="checkbox" name="food" id="milk" value="milk" /></label>
	<label for="coffee">커피<input type="checkbox" name="food" id="coffee" value="coffee" /></label>
	<input type="submit" value="보기" />
</form>
</body>
</html>