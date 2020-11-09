<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String[] keys = request.getParameterValues("name");
Object o = session.getAttribute("cart");
if(o != null){
	Map<String, Integer> cart = (Map<String, Integer>) o;
	for (String key : keys){
		cart.remove(key);
	}
	session.setAttribute("cart", cart);
}
out.print("<script>alert('선택하신 아이템이 삭제되었습니다.'); location.href='cart.jsp';</script>");
%>
