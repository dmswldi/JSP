<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %> <!-- 여기 있음 -->
<% request.setCharacterEncoding("utf-8"); %>

<%
String han = "한글";
String hanEncoded = URLEncoder.encode(han, "utf-8");
String queryString = "?" + "name=abc&id=def&han=" + hanEncoded;
response.sendRedirect("redirectEx2target.jsp" + queryString);
%>