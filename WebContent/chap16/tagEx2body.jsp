<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<my:ex2bodyEmpty/>

<hr />

<my:ex2bodyScriptless>
	body content
</my:ex2bodyScriptless>

<%--
<my:ex2bodyScriptless>
	<%
	out.print("script");
	%>
</my:ex2bodyScriptless>
 --%>
 
 <hr />
 
<my:ex2bodyScriptless>
	${param.age + 100 }
</my:ex2bodyScriptless>


</body>
</html>