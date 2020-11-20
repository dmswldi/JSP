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
<title>회원가입 입력 폼</title>
</head>
<body>
<form action="processJoining.jsp" method="post">
<table border="1" cellpadding="0" cellspacing="0"> <!-- 레이아웃: table 말고 세련되게 부트스트랩이나 flexbox 사용하기!! -->
	<tr>
		<td>아이디</td>
		<td colspan="3"><input type="text" name="id" size="10" /></td>
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" size="10" /></td>
		<td>이메일</td>
		<td><input type="text" name="email" size="10" /></td>
	</tr>
	<tr>
		<td colspan="4">
			<input type="submit" value="회원가입" />
		</td>
	</tr>
</table>
</form>
</body>
</html>