<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %> <!-- Connection interface 위치 -->
<% request.setCharacterEncoding("utf-8"); %>
<%
	String sql = "SELECT loc FROM department WHERE dno = 10";
	// 1.
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 2.
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String id = "c##mydbms";
	String pw = "admin";
	con = DriverManager.getConnection(url, id, pw);
	
	// 3.
	stmt = con.createStatement();
	
	// 4. Statement 객체로 쿼리 실행
	rs = stmt.executeQuery(sql);
	
	// 5. ResultSet으로 결과 얻어
	String location = "";
	if(rs.next()){
		//location = rs.getString("loc");
		location = rs.getString(1); // column을 1부터 세네
	}
	
	// 6.
	stmt.close();
	
	// 7.
	con.close();
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
<h1><%= location %></h1> <!-- 뉴욕이 나오게끔(부서의 지역) -->
</body>
</html>