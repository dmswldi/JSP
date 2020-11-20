<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
int eno = Integer.parseInt(request.getParameter("eno"));
String sql = "SELECT e.eno, e.ename, m.eno, m.ename FROM employee e, employee m "
			+ "WHERE e.manager = m.eno "
			+ "AND e.eno = ?";// AND 빼먹음

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

String ename = "";
int mEno = 0;
String mEname = "";

Class.forName("oracle.jdbc.driver.OracleDriver");

try(Connection conn = DriverManager.getConnection(url, id, pw);
	PreparedStatement pstmt = conn.prepareStatement(sql);){
	pstmt.setInt(1, eno);
	
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		ename = rs.getString(2);
		mEno = rs.getInt(3);
		mEname = rs.getString(4);
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
<h2><%= eno %>(<%= ename %>)의 manager: <%= mEno %>(<%= mEname%>)</h2>
</body>
</html>