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
<script>
$(function(){
	$('#modify_btn').click(function(){
		$('#submit_btn').removeAttr('hidden');
		$('#modify_btn').hide();
		$('#remove_btn').hide();
		$('#title').attr("readonly", false);
		$('#body').attr("readonly", false);
	});
	$('#submit_btn').click(function(){
		$('#submit_btn').hide();
		$('#modify_btn').show();
		$('#remove_btn').show();
		$('#title').attr("readonly", true);
		$('#body').attr("readonly", true);
	});
	$('#remove_btn').click(function(){
		var remove = confirm("삭제하시겠습니까?");
		if(remove){
			location.href = "${pageContext.request.contextPath }/sample3/post/remove?id=${post.id }";
			// location.href ? vs. location.replace
		}
	});
})
</script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<form action="${pageContext.request.contextPath }/sample3/post/detail?id=${post.id }" method="post">
	<%-- post 객체 하나만 넘길 것 --%>
	<h3>${post.id }번째 게시물</h3>
	<br />
	 	title : <input type="text" id="title" name="title" readonly value="${post.title }"/>
		<br />
		<textarea id="body" name="body" cols="30" rows="10" readonly>${post.body }</textarea>
		<br />
		<input type="submit" id="submit_btn" value="등록" class="btn btn-primary"  hidden=true/>
	</form>
	<button class="btn btn-secondary" id="modify_btn">수정</button> <%-- 수정 버튼 누르면 등록 버튼 활성화 --%>
	<button id="remove_btn" class="btn btn-danger">삭제</button>
	<br />
	<a href="${pageContext.request.contextPath }/sample3/post/main" class="btn btn-secondary">목록 보기</a>
</div>
</body>
</html>