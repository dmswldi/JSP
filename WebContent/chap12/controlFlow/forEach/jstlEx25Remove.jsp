<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.Post" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
int index = Integer.valueOf(request.getParameter("index"));
List<Post> list = ((List<Post>) application.getAttribute("list"));
list.remove(index);
application.setAttribute("list", list);
response.sendRedirect("jstlEx25.jsp");
%>

