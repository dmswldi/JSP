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
<script>
$(document).ready(function(){
	$("#modify-btn").click(function() {
		$("#title-input").removeAttr("readonly");
		$("#body-textarea").removeAttr("readonly");
		$(this).hide();// 수정버튼 숨기고
		$("#submit-btn").removeAttr("hidden");
		$("#remove-btn").hide();
	});
	 
	$("#remove-btn").click(function(){
		var remove = confirm("삭제하시겠습니까?");// T | F
		if(remove){
			//location.href = "remove?idx=${param.idx }";// 상대 경로
			location.href = "${pageContext.request.contextPath }/sample2/remove?idx=${param.idx }";// 절대 경로, 프로젝트 네임부터 작성
		}
	});
	$("#viewList-btn").click(function(){
		location.href = "${pageContext.request.contextPath }/sample2/list";
	});
})
</script>
<title>Insert title here</title>
</head>
<body>
<c:url value="/sample2/modify" var="modifyUrl"> <%-- url : contextPath 뒤 작성됨 --%>
	<c:param name="idx">${param.idx }</c:param>
</c:url>

<div class="container">
	<form action="${modifyUrl }" method="post">
		<input type="text" name="title" id="title-input" value="${post.title }" readonly /> <br />
		<textarea name="body" id="body-textarea" readonly rows="5">${post.body }</textarea>
		<br />
		<input type="submit" id="submit-btn" value="등록" hidden class="btn btn-secondary" />
	</form>
	<button id="modify-btn" class="btn btn-primary">수정</button> <%-- form 안에 btn 있으면 submit 역할함 ㅠ 무조건 빼기 --%>
	<button id="remove-btn" class="btn btn-secondary">삭제</button>
	<button id="viewList-btn" class="btn btn-dark">목록 보기</button>
</div>
</body>
</html>