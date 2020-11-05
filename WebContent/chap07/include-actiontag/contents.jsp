<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>

<%
List<String> list = new ArrayList<>();

if(request.getParameter("cur").equals("kid")){
	list.add("뽀로로1");
	list.add("뽀로로2");
	list.add("뽀로로3");
} else {
	list.add("어벤져스1");
	list.add("어벤져스2");
	list.add("어벤져스3");
}
%>

<div class="card-deck">
	<%
	for(String item : list){
	%>
	<div class="card">
		<div class="card-body">
			<h5 class="card-title">
			<%= item %>
			</h5>
		</div>
	</div>
	<%	
	}
	%>
</div>