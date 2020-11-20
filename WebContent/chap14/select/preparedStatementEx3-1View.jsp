<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String dno = request.getParameter("dno");
String name = request.getParameter("name").toUpperCase();

String sql = "SELECT dno, ename FROM employee "
			+ "WHERE dno = ? AND ename Like ?";
					
String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

List<Integer> list1 = new ArrayList<>();
List<String> list2 = new ArrayList<>();

Class.forName("oracle.jdbc.driver.OracleDriver");

try (Connection conn = DriverManager.getConnection(url, id, pw);
	 PreparedStatement pstmt = conn.prepareStatement(sql);){// d는 ()
	pstmt.setInt(1, Integer.parseInt(dno));
	pstmt.setString(2, "%" + name + "%");// 작은 따옴표 표시 안 해도 OK, preparedStatement가 알아서 해줌
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
		list1.add(rs.getInt(1));
		list2.add(rs.getString(2));
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
<h1><%= dno %> 부서 직원 목록</h1>
<%
for(int i = 0; i < list1.size(); i++){
%>
	<li>dno : <%= list1.get(i) %> | ename : <%= list2.get(i) %></li>
<%
}
%>
</body>
</html>