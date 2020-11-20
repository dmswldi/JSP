<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty name="car" property="name" value="hyundai" />
	<jsp:setProperty name="car" property="speed" value="0" />
</jsp:useBean>

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
${car.name } <%-- 자바빈 객체 이름. property 이름 --%>
<br />
${car.speed }
<br />
${car.stop } <%-- 속도 0이니까 true --%>

<hr /> <%-- 다른 문법 --%>
${car["name"] } <br>
${car["speed"] } <br>
${car["stop"] } <br>

</body>
</html>