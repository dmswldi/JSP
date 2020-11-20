<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String job = request.getParameter("job");
String sql = "SELECT MAX(salary), MIN(salary), AVG(salary), SUM(salary) "
		     + "FROM employee "
			 + "WHERE job = '" + job + "'";// 문자는 ' ' 사이에!!!!!!!!
			 

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id =  "c##mydbms";
String pw = "admin";

int max = Integer.MIN_VALUE;
int min = Integer.MAX_VALUE;
double avg = 0.0;
int sum = 0;

Class.forName("oracle.jdbc.driver.OracleDriver");

try (Connection conn = DriverManager.getConnection(url, id, pw);
	 Statement stmt = conn.createStatement();){
	ResultSet rs = stmt.executeQuery(sql);
	
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
<h1><%= job %>의 salary</h1>
<h2>최대: <%= String.format("$%,d", max) %></h2>
<h2>최소: <%= String.format("$%,d", min) %></h2>
<h2>평균: <%= String.format("$%,.1f", avg) %></h2>
<%-- <h2>평균: <%= avg %></h2> --%>
<h2>합계: <%= String.format("$%,d", sum) %></h2>
</body>
</html>