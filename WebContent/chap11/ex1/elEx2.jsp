<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap08.Car" %>

<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty name="car" property="name" value="kia" />
</jsp:useBean>

<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty name="car2" property="name" value="volvo" />
</jsp:useBean>
<%
//pageContext.setAttribute("car", car);
//pageContext.setAttribute("car2", car2);
%>
<%
	Car car3 = new Car();
	car3.setName("benz");
	request.setAttribute("car", car3);
%>
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
${car } <%-- 각 영역의 "car" attribute를 찾음 --%> 
		<%-- 찾는 순서: page, request, session, application --%>
${car.name }
<br />
${car2 }
<br />
${car3 } <%-- 없는 애 : 아무 것도 표시 안 됨 --%>
</body>
</html>