<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="car" class="chap08.Car"></jsp:useBean>

<!-- 둘이 같다. param 없으면 property랑 같은 이름으로 설정됨 -->
<%--
<jsp:setProperty name="car" property="name" param="speed"></jsp:setProperty>
<jsp:setProperty name="car" property="speed" param="speed"></jsp:setProperty>
--%>

<%-- form에서 읽어온 name parameter의 값을 car 자바빈 객체의 name 프로퍼티에 지정 
<jsp:setProperty name="car" property="name"></jsp:setProperty>
<jsp:setProperty name="car" property="speed"></jsp:setProperty>
--%>

<jsp:setProperty name="car" property="*"></jsp:setProperty>
<jsp:setProperty name="car" property="*"></jsp:setProperty>
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
<jsp:getProperty property="name" name="car"/> <br />
<jsp:getProperty property="speed" name="car"/>
</body>
</html>