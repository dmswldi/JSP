<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String type = request.getParameter("type");
	if(type == null){
		return ; // 밑에 실행 X
	}
%>
<br>
<table width="80%" border="1" cellpadding="0" cellspacing="0">
	<tr>
		<td>타입</td>
		<td><b><%= type %></b></td>
	</tr>
	<tr>
		<td>특징</td>
		<td>
			<% if(type.equals("A")){%>
				강한 내구성.	
			<% } else if(type.equals("B")) { %>
				뛰어낸 대처 능력
			<% } %>
		</td>
	</tr>
</table>