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
<%-- 4개 Scope에서 값 삭제 --%>
<c:set var="myVar1" value="my value1" />
<c:set var="myVar2" value="my value2, request" scope="request" />
<c:set var="myVar1" value="my value1, request" scope="request" />

${myVar1 } <br />
${myVar2 } <br />
${requestScope.myVar1 } <br />

<hr />

<c:remove var="myVar1" scope="page" /> <%-- Scope 지정 안 하면 해당 변수 모든 영역에서 지워버림 --%>
<c:remove var="myVar2" scope="request" />

${myVar1 } <br /> <%-- 영역 순서대로 찾음..!!! --%>
${myVar2 } <br />
${requestScope.myVar1 }

</body>
</html>