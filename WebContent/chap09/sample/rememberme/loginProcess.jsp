<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap09.Cookies" %>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

boolean login = false;
Cookies cookies = new Cookies(request);

if(id != null && pw != null && id.equals(pw)){
	login = true;
}

if(login){
// 세션에 유저정보 속성 추가
	session.setAttribute("user", id);

// remember me 체크할 경우 세션 유지하도록
	String remember = request.getParameter("remember");// checkbox 값을 String으로 가져와서

	Cookie cookie = cookies.getCookie("JSESSIONID");
	cookie.setPath(request.getContextPath());
	cookie.setHttpOnly(true);

if(remember != null && remember.equals("on")){// on 체크
	cookie.setMaxAge(24*60*60);
	response.addCookie(cookie);
	
	session.setMaxInactiveInterval(24*60*60);
	
} else {
	cookie.setMaxAge(-1);// default
    response.addCookie(cookie);
    
    session.setMaxInactiveInterval(30*60);
}
// 로그인 성공 : main.jsp로 redirection : 아래 둬야 에러 x
	response.sendRedirect("main.jsp");

} else {
// 로그인 실패 : loginForm.jsp로 redirection
	response.sendRedirect("loginForm.jsp");
}
%>