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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
$(function(){
	// 처음 로딩될 때 실행되는 코드
	$('#modify_btn').click(function(){
		$('#submit_btn').removeAttr('hidden');
		$('#submit_btn').show(); //
		$('#modify_btn').hide();
		$('#remove_btn').hide();
		$('#cancel_btn').removeAttr('hidden');
		$('#cancel_btn').show(); // 2번씩 써줘야 하나?
		$('#title').attr("readonly", false);
		$('#body').attr("readonly", false);
	});
	$('#submit_btn').click(function(){
		$('#submit_btn').hide();
		$('#modify_btn').show();
		$('#remove_btn').show();
		$('#cancel_btn').hide();
		$('#title').attr("readonly", true);
		$('#body').attr("readonly", true);
	});// 취소 버튼 클릭도 같은 기능인데 통합x?
	$('#remove_btn').click(function(){
		 
		var remove = confirm("삭제하시겠습니까?");
		if(remove){
			location.href = "${pageContext.request.contextPath }/sample3/post/remove?id=${post.id }";
			// location.href(속성 / 뒤로 가기 가능)  vs. location.replace(메소드 / history에 남지 않음, 보안상의 경우)
		}
		
		
		/*
		swal({
			  title: "Are you sure?",
			  text: "Your will not be able to recover this content!",
			  icon: "warning",
			
			  buttons : {
				  cancel : {
					  text : "Deleted!",
					  value : "Your content has been deleted.",
					  icon : "success" 
				  },
				  catch : {
					  text : "Cancelled",
					  value : "Your content is safe :)",
					  icon : "error" 
				  }
			  }
			}).then((isConfirm) => {// button의 value를 isConfirm으로 받아서 사용
				switch(isConfirm){
					case "catch" :
						swal("Deleted!", "Your content has been deleted.", "success");
						location.href = "${pageContext.request.contextPath }/sample3/post/remove?id=${post.id }";
						break;
					case "cancel" :
						swal("Cancelled", "Your content is safe :)", "error");
						break;
				}
			});
		*/
		
				/*
				if(isConfirm){// Confirm
					swal("Deleted!", "Your content has been deleted.", "success"
					).then((isConfirm) => {
						if(isConfirm){
							location.href = "${pageContext.request.contextPath }/sample3/post/remove?id=${post.id }";
						}
					});
				} else {// Cancel
					swal("Cancelled", "Your content is safe :)", "error");
				}
				*/
		
	});
	
	$('#cancel_btn').click(function(){
		$('#submit_btn').hide();
		$('#modify_btn').show();
		$('#remove_btn').show();
		$('#cancel_btn').hide();
		$('#title').attr("readonly", true);
		$('#body').attr("readonly", true);
	});
})
</script>
<title>Insert title here</title>
</head>
<body>
<%--
<c:url value="/sample3/post/remove" var="removeURL">
  <c:param name="id" value="${post.id }" />
</c:url>
 --%>

<div class="container">
	<form action="${pageContext.request.contextPath }/sample3/post/update?id=${post.id }" method="post">
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
	<button class="btn btn-warning" id="cancel_btn" hidden="true">취소</button>
	<button id="remove_btn" onclick="" class="btn btn-danger">삭제</button>
	<%-- <a href="${removeURL }" onclick="return confirm('삭제하시겠습니까?')">삭제</a> --%>
	<br />
	<a href="${pageContext.request.contextPath }/sample3/post/main" class="btn btn-secondary">목록 보기</a>
</div>
</body>
</html>