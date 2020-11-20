<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
int eno = Integer.parseInt(request.getParameter("eno"));
String dname = "";

String sql = "SELECT dname FROM employee e, department d "
			+ "WHERE e.dno = d.dno AND eno = ?";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Class.forName("oracle.jdbc.driver.OracleDriver");
try (Connection con = DriverManager.getConnection(url, id, pw);
	 PreparedStatement stmt = con.prepareStatement(sql);) {
	stmt.setInt(1, eno);
	ResultSet rs = stmt.executeQuery();
	
	if(rs.next()){
		dname = rs.getString(1);
	}
	
} catch(Exception e){
	e.printStackTrace();
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
<h1><%= eno %>의 부서는 <%= dname %></h1>
</body>
</html>