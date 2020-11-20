<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="chap14.Employee" %>
<%-- <% request.setCharacterEncoding("utf-8"); %> --%>
<%
String sql = "SELECT eno, ename FROM employee";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

List<Employee> list = new ArrayList<>();

Class.forName("oracle.jdbc.driver.OracleDriver");

try(Connection conn = DriverManager.getConnection(url, id, pw);
	Statement stmt = conn.createStatement();){
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
		Employee e = new Employee();
		e.setEno(rs.getInt(1));
		e.setEname(rs.getString(2));
		list.add(e);
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
<style>
	a {
		-webkit-transition: 0.3s;
	    -moz-transition: 0.3s;
	    -o-transition: 0.3s;
	    -ms-transition: 0.3s;
	    transition: 0.3s;
	}
	a:hover {
	 	font-weight: 500;
		-webkit-transform: scale(1.2,1.2);
	    -moz-transform: scale(1.2,1.2);
	    -o-transform: scale(1.2,1.2);
	    -ms-transform: scale(1.2,1.2);
	    transform: scale(1.2,1.2);
	}
</style>
<title>Insert title here</title>
</head>
<body>
<!-- 사번, 이름 목록 클릭하면 detail로 -->
<div class="container mt-3">
	<h1>사원 목록</h1>
	<table class="table table-dark table-striped table-bordered table-hover" style="text-align:center;">
		<tr>
			<th>사번</th>
			<th>이름</th>
		</tr>
		<%
		for(Employee emp : list){
		%>
		<tr>
			<td>
				<a href="joinEx7Detail.jsp?eno=<%= emp.getEno() %>" style="color:inherit; text-decoration:none;"">
					<%= emp.getEno() %>
				</a>
			</td>
			<td><%= emp.getEname() %></td>
		</tr>
		<%
		}
		%>
	</table>
</div>
</body>
</html>