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
<title>Insert title here</title>
</head>
<body>
<%
String food = request.getParameter("food");
// method 1







// method 2
if(food != null){
	// 세션에 추가
	Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
	if(cart == null){
		cart = new HashMap<>();
		session.setAttribute("cart", cart);
	}
	
	if(food != null && cart.get(food) == null) cart.put(food, 1);// or containsKey(food), 키로 null이 들어갈 수도 있음 주의
	else cart.put(food, cart.get(food)+1);
}

int size = 0;
Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
// cart null 체크!!!!!! cart null이면 사이즈 0 나오게
if(cart != null) {
	for(String key : cart.keySet()){
		size++;
	}
}
%>
장바구니 : <%= size %>개 <!-- 종류의 개수, 선언 위에 하고 map.size()로 개수 세면 편함 --> 
<form action="" method="post"> <!-- 페이지 그대로 -->
<select name="food">
	<option value="water">물</option>
	<option value="pizza">피자</option>
	<option value="burger">버거</option>
	<option value="choco">초코</option>
	<option value="icecream">아이스크림</option>
</select>
<br> <br>
<input type="submit" class="btn btn-warning" value="장바구니 담기" /> <br> <br>
</form>
<a href="cart.jsp" class="btn btn-primary">장바구니 보기</a>
<a href="removeAll.jsp" class="btn btn-danger">장바구니 비우기</a>

</body>
</html>