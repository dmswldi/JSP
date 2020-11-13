<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap05.Post" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	// 삭제 여부 확인
	Object removedCheck = session.getAttribute("removed");
	if(removedCheck != null && (boolean) removedCheck == true) {
		session.setAttribute("removed", false);
		out.print("<script>alert('게시물이 삭제되었습니다');</script>");
	}

	// 게시물 등록
	List<Post> list = (List<Post>) application.getAttribute("list");
	if(list == null) {
		list = new ArrayList<Post>();
		application.setAttribute("list", list);
	}

	String title = request.getParameter("title");
	String body = request.getParameter("body");
	if(title != null && !title.isEmpty() // isEmpty(): 빈 string 
			&& body != null && !body.isEmpty()){
		Post p = new Post();
		p.setTitle(title);
		p.setBody(body);
		
		list.add(p);
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
<title>Post</title>
</head>
<body>
<h1>방명록</h1>
<form action="" method="post">
	제목 : <input type="text" name="title" /> <br />
	<textarea name="body" cols="30" rows="10"></textarea> <br />
	
	<input type="submit" value="등록" />
</form>

<%
for(int i = 0; i < list.size(); i++){/* 실제론 db에 list 존재, 예제는 app으로 하겠음, 웬만하면 넣지마라 */
%>
	<li> <a href="detail.jsp?id=<%= i %>"><%= list.get(i).getTitle() %></a> </li>
<%	
}
%>
</body>
</html>