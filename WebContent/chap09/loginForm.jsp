<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>로그인폼</title>
</head>
<body>
<form action="<%= request.getContextPath() %>/chap09/login.jsp" method="post">
	아이디 <input type="text" name="id" size="10" class="m-1"/> <br>
	암호 <input type="password" name="password" size="10" class="m-1" /> <br>
	<input type="submit" value="로그인" class="btn btn-primary" />
</form>
</body>
</html>