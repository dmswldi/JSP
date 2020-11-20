<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String dno = request.getParameter("dno");

String sql = "SELECT MAX(salary), MIN(salary), AVG(salary), SUM(salary) "
			+ "FROM employee "
			+ "WHERE dno = ?";


String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

int max = 0;
int min = 0;
double avg = 0.0;
int sum = 0;

Class.forName("oracle.jdbc.driver.OracleDriver");

try (Connection conn = DriverManager.getConnection(url, id, pw);
	 PreparedStatement pstmt = conn.prepareStatement(sql);){// d는 ()
	pstmt.setInt(1, Integer.parseInt(dno));
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		max = rs.getInt(1);
		min = rs.getInt(2);
		avg = rs.getDouble(3);
		sum = rs.getInt(4);
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
<h1><%= dno %> 부서 통계</h1>
<h3>최대: <%= String.format("$%,d", max) %></h3>
<h3>최소: <%= String.format("$%,d", min) %></h3>
<h3>평균: <%= String.format("$%,.2f", avg) %></h3>
<h3>합계: <%= String.format("$%,d", sum) %></h3>
</body>
</html>