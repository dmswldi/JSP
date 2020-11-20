<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
// javaBean이 하는 일: 두 줄
// MemberInfo member = new MemberInfo();
// pageContext.setAttribute("member", member);
%>
<%-- default scope : page --%>
<jsp:useBean id="member" class="chap08.member.MemberInfo" scope="page"></jsp:useBean>

<%
Object o = pageContext.getAttribute("member");
System.out.println(o);
System.out.println(member);// member는 useBean의 id
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
<body>

</body>
</html>