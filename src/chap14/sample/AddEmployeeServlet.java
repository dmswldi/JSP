package chap14.sample;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddEmployeeServlet
 */
@WebServlet("/sample/employee/add")
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eno = request.getParameter("eno");
		String ename = request.getParameter("ename");
		String dno = request.getParameter("dno");
		
		//String sql = "INSERT INTO employee (eno, ename, dno) "
		//			+ "VALUES (?, ?, ?)";
		String sql = "DELETE FROM employee "
				+ "WHERE eno = 9999";
		// 1. 드라이버 로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}

		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String id = "c##mydbms";
		String pw = "admin";
		try (// 2. 연결 생성
			Connection con = DriverManager.getConnection(url, id, pw);
			// 3. Statement 생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			){
			/*
			  pstmt.setInt(1, Integer.parseInt(eno));
			  pstmt.setString(2, ename);
			  pstmt.setInt(3, Integer.parseInt(dno));
			 */
				
				// 4. 쿼리 실행
				int r = pstmt.executeUpdate();// 영향 미친 레코드 수
				
				
				// 5. 결과 처리
				System.out.println(r);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 6. Statement, Connection 닫기
		
		
		
	
	}

}
