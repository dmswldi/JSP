package chap14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
	public static List<String> getNameLike(String name){
		List<String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String password = "admin";
		
		String sql = "SELECT ename " + 
				"FROM employee " + 
				"WHERE ename LIKE '%" + name +  "%'";// ' '
		
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");// ClassNotFoundException
		
			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url, id, password);// SQLException
			
			// 3. Statement 생성
			stmt = conn.createStatement();
			
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
			
			// 5. 쿼리 결과
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				// 6. Statement 닫기
				if(stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
			try {
				// 7. Connection 닫기
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	public static List<String> getNameLike(String name, boolean order){
		List<String> list = new ArrayList<>();
		ResultSet rs = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String password = "admin";
		String orderr = "";
		
		if(order == false) orderr = "DESC";
		
		String sql = "SELECT ename " + 
				"FROM employee " + 
				"WHERE ename LIKE '%" + name +  "%' ORDER BY ename " + orderr;
		
		try {
			// 1. 클래스 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");// ClassNotFoundException
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// try-with-resources 블록을 나갈 때 object가 autoClose 됨
		// object는 resource specification header에 선언
		try (
			// 2. 커넥션 생성
			// 3. Statement 생성
			Connection conn = DriverManager.getConnection(url, id, password);// SQLException
			Statement stmt = conn.createStatement(); // JVM이 알아서 닫아준다 auto close
				) {
			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);
			
			// 5. 쿼리 결과
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static List<String> listEmployeeName() {
		List<String> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String password = "admin";

		String sql = "SELECT ename FROM employee";

		// 1. 클래스 로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 커넥션 생성
			conn = DriverManager.getConnection(url, id, password);

			// 3. Statement 생성
			stmt = conn.createStatement();

			// 4. 쿼리 실행
			rs = stmt.executeQuery(sql);

			// 5. 결과 처리
			while(rs.next()) {
				list.add(rs.getString("ename"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 6. statement 닫고
			try {
				if(stmt != null) {
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			// 7. connection 닫고
			try {
				if(conn != null) {				
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}
}
