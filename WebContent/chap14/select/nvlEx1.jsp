<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String sql = "SELECT ename, TO_CHAR(salary * 12 + NVL(commission, 0), 'L999,999') AS sal "
			+ "FROM employee "
			+ "WHERE eno = 7499";

// 1. 클래스 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

String ename = "";
String sal = "";

// 2. 연결
// 3. statement
try (Connection conn = DriverManager.getConnection(url, id, pw);
	 Statement stmt = conn.createStatement();) {
	// 4. query
	ResultSet rs = stmt.executeQuery(sql);
	
	// 5. 처리
	if(rs.next()){
		//ename = rs.getString("ename");
		ename = rs.getString(1);
		//sal = rs.getInt("sal");
		sal = rs.getString(2);
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
<h1>이름 : <%= ename %></h1>
<h1>연봉 : <%= sal %></h1>
</body>
</html>