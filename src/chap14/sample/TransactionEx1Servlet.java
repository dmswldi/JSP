package chap14.sample;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TransactionEx1Servlet
 */
@WebServlet("/sample/transaction1")
public class TransactionEx1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TransactionEx1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 2. 연결 생성
		Connection con = getConnection();// 하나의 트랜잭션으로 정의하려면 하나의 connection을 사용해야 함!
		
		try {
			con.setAutoCommit(false);// default : true, auto commit mode -> statement마다 commit됨
		
			// 1. ironman의 잔고 -50
			updateMinus(con);
			
			// 2. caption의 잔고 + 50
			updatePlus(con);
			
			con.commit();
			
		} catch (SQLException e) {
			e.printStackTrace();
			if( con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}	
		}
		
	}
	
	private Connection getConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";
		
		Connection con = null;
		
		try {
			// 1. jdbc 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2. 연결 생성
			con = DriverManager.getConnection(url, id, pw);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
	private void updateMinus(Connection con) {
		String sql = "UPDATE bank SET money = (money - 50) "
				+ "WHERE name = 'ironman'";
		
		try (
			// 3. Statement 생성
			Statement stmt = con.createStatement();
			){
				// 4. 쿼리 실행
				int row = stmt.executeUpdate(sql);// 영향 미친 레코드 수
				if(row == 0) {
					con.rollback();
				}
				// 5. 결과 처리
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		// 6. Statement 닫기
		
	}
	
	private void updatePlus(Connection con) {
		String sql = "UPDATE bank SET money = (money + 50) "
				+ "WHERE name = 'captin'";
		
		try (
			// 3. Statement 생성
			Statement stmt = con.createStatement();
			){
				// 4. 쿼리 실행
				int row = stmt.executeUpdate(sql);
				if(row == 0) {
					con.rollback();
				}
				// 5. 결과 처리
		} catch (Exception e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		// 6. Statement 닫기
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
