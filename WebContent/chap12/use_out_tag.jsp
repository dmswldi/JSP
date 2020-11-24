<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
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
<title>소스 보기</title>
</head>
<body>
<%
FileReader reader = null;
try {
	String path = "/chap12/use_out_tag.jsp";
	reader = new FileReader(getServletContext().getRealPath(path));
%>
<pre>
소스 코드 = <%= path %>
<c:out value="<%= reader %>" escapeXml="true" /> <%-- <c:out>이 script 코드가 아닌 <(&lt)와 같이 인식하게 함, 악용 막음 --%>
</pre>
<%
} catch(IOException e){
%>
에러 : <%= e.getMessage() %>
<%
} finally {
	if(reader != null){
		try {
			reader.close();
		} catch(IOException e){ e.printStackTrace(); }
	}
}
%>
</body>
</html>