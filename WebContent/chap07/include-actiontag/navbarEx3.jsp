<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<h1>navbar ex3</h1>
<%= request.getParameter("name") %> <!-- 같은 request 객체니까 보임 -->
<br>
<%= request.getParameter("newparam") %>