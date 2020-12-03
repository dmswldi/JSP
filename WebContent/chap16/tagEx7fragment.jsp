<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<my:ex7fragment>
	<jsp:attribute name="title">
		<h1>my title</h1>
	</jsp:attribute>
	<jsp:body>
		<h3>jsp body</h3>
	</jsp:body>
</my:ex7fragment>
</body>
</html>