<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
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
<div class="container">
	<h1>회원가입</h1>
	<c:if test="${not empty sessionScope.message }">
		<div class="alert alert-danger" role="alert">
			${message }		
		</div>
	</c:if>
	<c:remove var="message"/>
	<%-- 상대 경로는 process만 쓰면 됨, 브라우저 입장의 url --%>
	<form action="<%= request.getContextPath() %>/sample1/process" method="post"> <%-- 절대경로 쓸 거면 컨텍스트 경로 붙어야 함 --%>
		id : <input type="text" name="id" value="${formId }" /> <br />
		pw : <input type="password" name="pw" value="${formPw }" /> <br />
		<input type="submit" value="가입" class="btn btn-secondary" />
	</form>
	
	<c:if test="${not empty formId && not empty formPw }"> <%-- 빈 스트링도 처리됨 --%>
		<p style="color:red; text-decoration:underline;">로그인에 실패했습니다.</p>
	</c:if>
	<c:remove var="formId" scope="session" />
	<c:remove var="formPw" scope="session" />
</div>
</body>
</html>