<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
%>

<!-- <script>
alert("로그아웃 되었습니다.");
</script> -->
<%
session = request.getSession();// 새 session 얻어서
session.setAttribute("logout", true);
response.sendRedirect("loginForm.jsp");
/* 얘는 script나 html 코드 못 읽음 바보.,,, 자바 코드만 읽고 바로 넘어가버려 */
%>