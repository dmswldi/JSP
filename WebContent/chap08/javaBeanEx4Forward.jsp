<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Object o = request.getAttribute("member");
System.out.println("fw: " + o);
/* if(o instanceof MemberInfo){
	MemberInfo m = (MemberInfo) o;
} */
%>
<%-- request에 해당 attribute가 존재하면 꺼내 써 get, 없으면 setAttribute() --%>
<jsp:useBean id="member" class="chap08.member.MemberInfo" scope="request" />
<%
// 위 useBean 코드와 같은 일, 같다 -> 해당 attribute가 있을 때. 없으면 만들고.
// chap08.member.MemberInfo member = (chap08.member.MemberInfo) request.getAttribute("member");
%>
<%
System.out.println(member);
%>

<%-- 즉, <jsp:useBean> 태그는, --%>
<%-- 해당 attribute가 없으면 class 객체 만들고 scope에 setAttribute() --%>
<%-- 있으면 getAttribute()해서 casting --%>
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