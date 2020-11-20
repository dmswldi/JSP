<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
class Emp {
	private int eno;
	private String ename;
	private int salary;
	
	public Emp(int eno, String ename, int salary){
		this.eno = eno;
		this.ename = ename;
		this.salary = salary;
	}
	public int getEno(){ return this.eno; }
	public String getEname(){ return this.ename; }
	public int getSalary(){ return this.salary; }
}
int grade = Integer.parseInt(request.getParameter("grade"));
String sql = "SELECT eno, ename, salary, grade FROM employee, salgrade "
			+ "WHERE salary BETWEEN losal AND hisal "// 이걸 안 했다, 각 사원의 grade 결정해주기
			+ "AND grade = ?";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

Class.forName("oracle.jdbc.driver.OracleDriver");
List<Emp> list = new ArrayList<>();

try(Connection conn = DriverManager.getConnection(url, id, pw);
	PreparedStatement pstmt = conn.prepareStatement(sql);){
	pstmt.setInt(1, grade);
	
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		Emp emp = new Emp(rs.getInt(1), rs.getString(2), rs.getInt(3));
		list.add(emp);
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
<%
for(Emp e : list){
%>
<h3><%= e.getEno() %>(<%= e.getEname() %>): <%= String.format("$%,d", e.getSalary()) %>, grade <%= grade %></h3>
<%
}
%>
</body>
</html>