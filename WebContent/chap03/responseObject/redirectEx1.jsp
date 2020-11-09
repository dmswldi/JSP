<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
response.sendRedirect("redirectEx1target.jsp"); // 여기가 아니다 다른 데로 가라 하는 응답
// forward는 같은 request 객체를 건내준 것 <-> redirect는 response 후 다른 걸 요청, 주소창도 옮겨진다
%>