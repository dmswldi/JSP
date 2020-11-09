<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
	/* remove 클릭했을 때 query string 붙이면 안 되겠지......? */
			var keys = [];
	$("input[type='checkbox']").click(function(){
		var href = "remove.jsp";
		
		if($(this).prop("checked")) {
			keys.push($(this).attr("name"));
		} else {
			keys = keys.filter((x) => x != $(this).attr("name"));
		}
		for (var i = 0; i < keys.length; i++) {
			if (i != 0) {
				href += "&";
			} else {
				href += "?";
			}
			href += "name="+keys[i];
		}
		$("#remove-btn").attr("href", href);
	});
});
</script>
<!-- 
<script>
$(document).ready(function() {
	var keys = []; /* 배열을 이렇게 만드는군...? */
	$("input[type='checkbox']").click(function() {
		var href = "remove.jsp";
		
		if ($(this).is(":checked")) {
			keys.push($(this).attr("name"));
		} else {
			keys = keys.filter((x) => x != $(this).attr("name"));
			/* 지금 선택한 체크박스 name이랑 다른 name들만 배열에 넣어 */
		}
		
		for (var i = 0; i < keys.length; i++) {
			if (i != 0) {
				href += "&";
			} else {
				href += "?";
			}
			href += "name="+keys[i];
		}
		$("#remove-btn").attr("href", href);
	});
});
</script>
 -->

<title>Insert title here</title>
</head>
<body>
<h1>장바구니</h1>
<ul>
<%
Map<String, Integer> list = (Map<String, Integer>) session.getAttribute("cart");
if(list != null && list.size() > 0){// 왜 둘다 체크?
	//Set entrySet = list.entrySet();
	for(Map.Entry<String, Integer> item : list.entrySet()){
	%>
		<li> <input type="checkbox" name="<%= item.getKey() %>" />  <%= item.getKey() %>: <%= item.getValue()%>개</li>
	<%
	}
} else {
%>
	<li>비어있음</li>
<%
}
%>
</ul>
<a href="remove.jsp" id="remove-btn" class="btn btn-primary">아이템 삭제하기</a>
<!-- session에서 get해서 cart.remove(), query string 이용! -->
</body>
</html>















