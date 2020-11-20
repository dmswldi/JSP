<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="chap14.Employee" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String eno = request.getParameter("eno");

String sql = "SELECT e.eno, e.ename, e.job, m.ename, e.hiredate, e.salary, dname, grade "
			+ "FROM employee e, employee m, department d, salgrade s "
			+ "WHERE e.dno = d.dno "
			+ "AND e.salary BETWEEN losal AND hisal "// salary 어느 테이블 건지 명시
			+ "AND e.manager = m.eno(+) "// king도 나오도록
			+ "AND e.eno = ?";

String url = "jdbc:oracle:thin:@localhost:1521:orcl";
String id = "c##mydbms";
String pw = "admin";

List<Employee> list = new ArrayList<>();
Employee emp = null;

Class.forName("oracle.jdbc.driver.OracleDriver");

try(Connection conn = DriverManager.getConnection(url, id, pw);
	PreparedStatement pstmt = conn.prepareStatement(sql);){
	pstmt.setInt(1, Integer.valueOf(eno));
	
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){// Employee에 필드 변경 시 get, set 추가 빈번 -> col 변수 사용
		int col = 1;
		emp = new Employee();
		emp.setEno(rs.getInt(col++));
		emp.setEname(rs.getString(col++));
		emp.setJob(rs.getString(col++));
		emp.setmName(rs.getString(col++));
		emp.setHiredate(rs.getTimestamp(col++).toLocalDateTime());// date는 날짜만 + 시간도
		emp.setSalary(rs.getInt(col++));
		emp.setDname(rs.getString(col++));
		emp.setGrade(rs.getInt(col++));
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
<div class="container">
	<h1>사원정보</h1>
	<br>
	<ul>
		<li>사번: <%= emp.getEno() %></li>
		<li>이름: <%= emp.getEname() %></li>
		<li>업무: <%= emp.getJob() %></li>
		<li>입사일: <%= emp.getHiredate() %></li>
		<li>월급: <%= emp.getSalary() %></li>
		<li>부서: <%= emp.getDname() %></li>
		<li>등급: <%= emp.getGrade() %></li>
		<li>관리자: <%= emp.getmName() %></li>
	</ul>
	
	<!-- 	업무 정보 추가 -->
	
	<a href="joinEx7List.jsp" class="btn btn-secondary">뒤로 가기</a>
</div>
</body>
</html>