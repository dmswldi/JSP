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
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script>
$(function(){
	// 자바스크립트 변수 var에 담아서 if(var)할 것
	// var err = "${error}";
	// if(!$('error')){}
	var message = "${message }";
	var title = $('#title').val();
	var body = $('#body').text(); // or html()
	
	//sessionStrage.removeItem("title"); 이건 브라우저의 session... 
	//sessionStrage.removeItem("body"); 삭제해야 할 건 server의 session...
	
	// if 조건에 title, body를 넣으면 등록 시, 목록 보기 시에도 alert 뜸
	if(message) {
		//alert("${message }");
		swal("${message }")
	}
})
</script>
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<h1>방명록</h1>
	<form action="${pageContext.request.contextPath }/sample3/post/add" method="post">
	제목 : <input type="text" id="title" name="title" value="${title }" />
	<br />
	<textarea name="body" id="body" cols="30" rows="10">${body }</textarea>
	<br />
	<input type="submit" value="등록" class="btn btn-primary" />
	</form>
</div>

<hr />

<div class="container">
	<table class="table table-striped">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${posts }" var="post">
				<tr>
					<td>${post.id }</td>
					<td><a href="${pageContext.request.contextPath }/sample3/post/detail?id=${post.id }">${post.title }</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<%-- session 값 지우기 --%>
<c:remove var="message" />
<c:remove var="title" />
<c:remove var="body" />
</body>
</html>