<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page buffer="8kb" autoFlush="false" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>버퍼 정보</title>
</head>
<body>
버퍼 크기: <%= out.getBufferSize() %> <br>
남은 크기: <%= out.getRemaining() %> <br> <!-- 1글자 : 1byte -->
auto flush: <%= out.isAutoFlush() %>
<%
out.clear(); // 이 아래만 소스코드에 보이네
%>
<%-- <%= out.clearBuffer() %> --%>
</body>
</html>