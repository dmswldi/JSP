<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
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
<!-- 가장 좁은 영역 -->
<h1>pageContext는 하나의 페이지의 영역</h1>
<%
pageContext.setAttribute("pageAttr1", "pageVal1");/* 어떤 객체든 속성값으로 넣을 수 있다! */
request.setAttribute("reqAttr1", "reqVal1");
%>

<!-- 같은 페이지에서 attribute 꺼내기 -->
<%= pageContext.getAttribute("pageAttr1") %> <br>
<%= request.getAttribute("reqAttr1") %> <br>

<%= request %>
<%--
HttpServletRequest
여기 : org.apache.catalina.connector.RequestFacade@ : request 래핑한 앞면 클래스
저기 : org.apache.catalina.core.ApplicationHttpRequest@
 --%>

<jsp:include page="pageContextEx1Sub.jsp"></jsp:include> <!-- 실행 결과값을 포함, 같은 request 영역 -->
<!-- 이 과정에서 request 객체를 래핑해서 넘겨줌. : 확인!!!!!! => 같은 request 객체로 봐도 무방 -->

</body>
</html>