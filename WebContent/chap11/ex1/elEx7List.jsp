<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
List<String> list = new ArrayList<>();
list.add("java");
list.add("servlet");
list.add("jsp");
list.add("html");
list.add("el");
list.add("css");

pageContext.setAttribute("alist", list);
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
${alist[0] } <br />
<hr />
<%-- 변수로 넣어서 탐색 --%>
<%
for(int i = 0; i < list.size(); i++){
	pageContext.setAttribute("cnt", i);// i라는 변수는 자바에는 선언되어 있지만, 4개의 영역에 선언되어 있는 건 아니었음.
%>
<!-- 	%{alist[i] } --> 
	${alist[cnt] } <br /> <%-- el 안 변수 i는 page 영역에서부터 찾는다, page는 i 몰라 --%>
	<%-- 즉, 표현 언어는 4개의 영역에 저장된 값만 꺼내온다 --%>
<%
}
%>
</body>
</html>