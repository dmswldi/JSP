<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
int eno = Integer.parseInt(request.getParameter("eno"));
String sql = "SELECT eno, ename, salary, grade FROM employee e, salgrade s "
			+ "WHERE salary BETWEEN losal AND hisal "
			+ "AND eno = ?";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

String ename = "";
int salary = 0;
int grade = 0;

Class.forName("oracle.jdbc.driver.OracleDriver");

try (Connection conn = DriverManager.getConnection(url, id, pw);
	 PreparedStatement pstmt = conn.prepareStatement(sql);){
	pstmt.setInt(1, eno);
	
	ResultSet rs = pstmt.executeQuery();
	if(rs.next()){
		ename = rs.getString(2);
		salary = rs.getInt(3);
		grade = rs.getInt(4);		
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
<h1><%= eno %>(<%= ename %>)의 봉급 등급</h1>
<h3>salary : <%= salary %></h3>
<h3>grade : <%= grade %></h3>
</body>
</html>