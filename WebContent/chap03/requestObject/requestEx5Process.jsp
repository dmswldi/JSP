<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%!
int multiply(int i, int j){
	return i * j;
}
%>
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
<body class="m-2">
<%
String num = request.getParameter("num");
int val = 0;
if(num != null && num != ""){// 안 채우면 "" 넘어옴
	val = Integer.parseInt(num); /* valueOf */
	
	for(int i = 1; i <= 9; i++){
		
%>
<%-- 		<%= num %> X <%= i %> = <%= multiply(val, i)%> <br> --%>
			<%= num %> X <%= i %> = <%= val * i %> <br>
<%
	}
} else {
	out.print("해당 단을 출력할 수 없습니다");
}
%>
</body>
</html>