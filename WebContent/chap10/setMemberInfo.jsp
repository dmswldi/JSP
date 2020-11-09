<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.setAttribute("MEMBERID", "madvirus");
	session.setAttribute("NAME", "최범균");
	// param: string, object
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>세션에 정보 저장</title>
</head>
<body>
세션에 정보를 저장하였습니다. <br> <br>

<h1>세션 attribute 읽기</h1>
memberid: <%= session.getAttribute("MEMBERID") %> <br>
name: <%= session.getAttribute("NAME") %>
<!-- 세션은 하나의 브라우저에서만 생성이 됨(유지됨) -->
<!-- 다른 브라우저인 것처럼: 크롬 시크릿 모드로 열기 -->
</body>
</html>