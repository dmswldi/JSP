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
<form action="elEx18ParamValuesView.jsp" method="post">
	<%-- 같은 이름의 옵션 날리기: select, checkbox --%>
	<label for="berry">딸기<input type="checkbox" name="food" value="berry" id="berry" /></label> <%-- 'value' 확인 --%>
	<label for="banana">바나나<input type="checkbox" name="food" value="banana" id="banana" /></label>
	<label for="water">물<input type="checkbox" name="food" value="water" id="water" /></label>
	<label for="coffee">커피<input type="checkbox" name="food" value="coffee" id="coffee" /></label>
	<label for="cake">케이크<input type="checkbox" name="food" value="cake" id="cake" /></label>
	<br />
	<input type="submit" value="등록" />
</form>
</body>
</html>