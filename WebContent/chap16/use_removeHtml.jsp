<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>removeHtml</title>
</head>
<body>
<c:set var="dateEL" value="<%= new Date() %>" />
<tf:removeHtml trim="true">
	<font size="10">현재 <style>시간</style>은 ${dateEL }입니다.</font>
</tf:removeHtml>
<br />
<tf:removeHtml length="15" trail="..." trim="true">
	<u>현재 시간</u>은 <b>${dateEL }</b>입니다.
</tf:removeHtml>
<br />
<tf:removeHtml length="${15 }">
	<jsp:body><u>현재 시간</u>은 <b>${dateEL }</b>입니다.</jsp:body>
</tf:removeHtml>
</body>
</html>