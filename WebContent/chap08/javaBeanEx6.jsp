<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="car" class="chap08.Car"></jsp:useBean>
<jsp:setProperty name="car" property="speed" value="100"/> <!-- value 지정 안 하면 0 | null | false: 초기화 값 -->
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
<%-- <%= car.getSpeed() %> --%>
<jsp:getProperty property="speed" name="car"/> <!-- name에는 bean의 id -->
<jsp:getProperty property="name" name="car"/> 
<jsp:getProperty property="stop" name="car"/> 
</body>
</html>