<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("jsp");
list.add("servlet");
list.add("html");
list.add("css");

request.setAttribute("mylist", list);
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
${mylist } <br />
${mylist.get(1).length() } <%-- 자바 코드 써도 되네 --%>
<hr />
${mylist[0].length() } <br />
${mylist[1] } <br />
${mylist[2] } <br />
<hr />
${mylist["0"] } <br /> <%-- Integer로 parsing 될 수 있는 값이면 O, 자동 타입 변환 --%>
${mylist["1"] } <br />
${mylist["2"] } <br />
</body>
</html>