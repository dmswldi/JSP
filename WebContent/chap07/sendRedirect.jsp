<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%

	String name= "eun";
	response.sendRedirect("sendRedirect2.jsp");
	//return;
	request.setAttribute("name", "value");
	System.out.print(name);
	//out.print("<script>alert('?');</script>");
%>
