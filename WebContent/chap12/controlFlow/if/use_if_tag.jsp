<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>if 태그</title>
</head>
<body>
<c:if test="true">
	무조건 수행 <br />
</c:if>

<c:if test="${param.name == 'bk' }" var="bk">
	name 파라미터의 값이 ${param.name } 입니다. <br />
</c:if>

<c:if test="${18 < param.age }">
	당신의 나이는 18세 이상입니다.
</c:if>

---------------- <br />
${bk } <%-- T/F 저장 --%>
<br />

<jsp:useBean id="member" class="chap08.member.MemberInfo"></jsp:useBean>
<c:set var="var1" value="${abc }" />
<c:set var="var1" value="val2" scope="request" />
<c:set var="var2" value="${a }" scope="request" /> 
<c:set var="var2" value="val4" scope="session" /> 
<c:set target="${member }" property="name" value="john" />

${member.name } <br />
${var1 } <br />
${var2 }
</body>
</html>