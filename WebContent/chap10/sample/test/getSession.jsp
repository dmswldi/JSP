<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page session="false" %>

<%
	HttpSession httpSession = request.getSession(false);
	// 세션이 존재하는 경우에만 session 객체 리턴, 아니면 null
	List list = null;
	if(httpSession != null){
		list = (List) httpSession.getAttribute("list");
		System.out.println("not null");
	} else {
		list = Collections.emptyList();
		System.out.println("null");
	}
	
	System.out.println("list: " + list);
%>
