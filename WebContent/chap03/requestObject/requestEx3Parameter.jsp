<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
<form action="" class="m-2">
	name : <input type="text" name="fname" value="홍길동"> <br>
	age : <input type="number" name="age" id="" class="m-1" value="20"> <br>
	gender : <label for="male">남자</label> <!-- label은 id랑 연결 -->
			 <input type="radio" name="gender" value="male" id="male" checked /> <!-- input:radio*2 -->
			 <label for="female">여자 </label>
			 <input type="radio" name="gender" value="female" id="female"> <br>
	food : <label for="pizza">pizza</label> 
		   <input type="checkbox" name="food" value="pizza" id="" checked>
		   <label for="burger">burger</label> 
		   <input type="checkbox" name="food" value="burger" id="burger">
		   <label for="icecream">icecream</label>  
		   <input type="checkbox" name="food" value="icecream" id="icecream">
		   <label for="water">water</label> 
		   <input type="checkbox" name="food" value="water" id="water"> <br>
	<input type="submit" value="전송" class="btn btn-primary mt-3">
</form>

<%
String name= request.getParameter("fname");
String age = request.getParameter("age");
String gender = request.getParameter("gender");
String[] foods = request.getParameterValues("food");// 받은 게 없으면 null -> 체크
%>
name : <%= name %> <br>
age : <%= age %> <br>
gender : <%= gender %> <br>
food : 
<%
if(foods != null){ // null 체크
	for(String food : foods){
		out.print(food + " ");
	}
}
/* if(foods != null){
	for(int i = 0; i < foods.length; i++){
		out.print(foods[i]);
		if(i != foods.length-1){
			out.print(", ");
		}
	}
} */
%>
</body>
</html>