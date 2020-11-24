<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- <c:if test="id==pw" scope="request">
	<c:set var="ok" value="true" scope="request" />
</c:if> --%>

<c:set var="ok" value="${param.id ne param.pw}" scope="request" />

<jsp:forward page="jstlEx06Forward.jsp"></jsp:forward>
