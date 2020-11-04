<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %> <!-- post가 한글 깨니까,,, 브라우저마다, 같은 크롬이어도 버전마다 다름,, -->
<!-- 화면 달라고 요청을 받은 곳에서 request body를 얘로 인코딩(?) -->
<!-- request body에서 사용된 character encoding 이름을 override / '파라미터 값'을 utf-8로 디코딩해서 가져옴, 읽어옴 / 얘로 디코딩! -->
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
<h1>로그인 되었습니다.</h1>
id : <%= request.getParameter("id") %> <br>
pw : <%= request.getParameter("pw") %>
</body>
</html>