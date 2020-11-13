<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.Post" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String param = request.getParameter("id");
	Post post = null;
	if(param != null && !param.isEmpty()){
		int id = Integer.valueOf(request.getParameter("id"));
		List<Post> list = (List<Post>) application.getAttribute("list");
		post = list.get(id);
	} else {
		out.print("<script>alert('해당 게시물을 찾을 수 없습니다.');</script>");
		response.sendRedirect("post.jsp");
	}
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
제목 : <input type="text" value="<%= post.getTitle() %>" readonly /> <br>
<textarea cols="30" rows="10" readonly><%= post.getBody() %></textarea> <br>
<a href="post.jsp" class="btn btn-primary">게시글 작성</a>
<a href="remove.jsp?id=<%= param %>" class="btn btn-danger">이 게시물 삭제</a>
</body>
</html>