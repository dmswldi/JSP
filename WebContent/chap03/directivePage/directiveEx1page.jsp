<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%> <!-- 해석은 pageEncoding(), 브라우저에서 구현 charset으로(인코딩) -->
<!-- charset : Http Client(웹브라우저)가 받아볼 페이지의 인코딩 방식, 서버가 ~로 인코딩하여 웹브라우저로 전송(?)
pageEncoding : JSP파일(페이지)에 기록된 소스코드 자체의 인코딩 방식, ~로 인코딩됨 -->
<%-- <%@ page import="java.util.List, java.util.ArrayList" %> --%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %> <!-- 보기 좋게 따로! -->
<!-- java.lang.*도 자동 import됨 -->

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
<%
List<String> list = new ArrayList<>();
%>
<h1>import</h1>
</body>
</html>