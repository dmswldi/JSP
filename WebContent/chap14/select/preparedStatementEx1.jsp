<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");
//String sql = "SELECT ename FROM employee WHERE eno = " + eno;
String sql = "SELECT ename FROM employee "
			+ "WHERE eno = ?";// 값이 있는 것처럼 물음표를 써라

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id =  "c##mydbms";
String pw = "admin";

String ename = "";

Class.forName("oracle.jdbc.driver.OracleDriver");

try (Connection conn = DriverManager.getConnection(url, id, pw);
	 //Statement stmt = conn.createStatement();
	 PreparedStatement stmt = conn.prepareStatement(sql);){
	//ResultSet rs = stmt.executeQuery(sql);
	stmt.setInt(1, Integer.parseInt(eno));// 물음표 순서대로 넣기
	ResultSet rs = stmt.executeQuery();
	
	if(rs.next()){
		ename = rs.getString(1);
		
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
<h1><%= ename %></h1>
</body>
</html>