<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap<>();
map.put("a", "apple");
map.put("b", "banana");
map.put("c", "choco");
map.put("3", "three");// 숫자, 키워드, 띄어쓰기 사용
map.put("class", "clecle");
map.put("my key", "my value");

request.setAttribute("mymap", map);
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
${mymap } <br />
${mymap.a } <br /> <%-- 자바빈의 property처럼 사용 가능 --%>
${mymap.b } <br />
<br />
${mymap["3"] } <br />
${mymap["class"] } <br />
${mymap["my key"] } <br />
<%-- ${mymap.get("a") } --%>
<br />
${mymap['3'] } <br />
${mymap['class'] } <br />
${mymap['my key'] } <br />
<br />
${mymap[a] } <br /> <%-- X, 따옴표 안 쓰면 4개 영역에서 a라는 attribute를 찾음 --%>
${mymap[b] } <br />

</body>
</html>