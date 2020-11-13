<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.Post" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");

 	if(id != null && !id.isEmpty()){
		List<Post> list = (List<Post>) application.getAttribute("list");
		int index = Integer.valueOf(id);
		list.remove(index);
		application.setAttribute("list", list);
		session.setAttribute("removed", true);
		response.sendRedirect("post.jsp");/* redirect는 html 못 읽어 ㅠㅠㅠ */
	 } else {
		out.print("<script>alert('게시물을 삭제할 수 없습니다.'); history.go(-1);</script>");
	} 
%>