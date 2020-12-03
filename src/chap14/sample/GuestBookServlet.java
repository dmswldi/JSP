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
 * Servlet implementation class GuestBookServlet
 */
@WebServlet("/sample/guestBook")
public class GuestBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuestBookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		String sql = "INSERT INTO guest_book (title, body, inserted) "
					+ "VALUES (?, ?, sysdate)";
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
			  pstmt.setString(1, title);
			  pstmt.setString(2, body);
				
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
