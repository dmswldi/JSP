package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap20.DBUtil;


/**
 * Servlet implementation class RemoveServlet
 */
@WebServlet("/sample3/post/remove")
public class RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		if(remove(id)) {
			response.sendRedirect(request.getContextPath() + "/sample3/post/main");// full path
		} else {
			System.out.println("삭제 실패");
		}
	}

	
	private boolean remove(String id) {
		String sql = "DELETE post "// 띄어쓰기 필수!!!
				+ "WHERE id = ?";

		try (// 2. 연결 생성
			Connection con = DBUtil.getConnection();
			// 3. Statement 생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			){
				pstmt.setInt(1, Integer.parseInt(id));
				
				// 4. 쿼리 실행
				int row = pstmt.executeUpdate();

				// 5. 결과 처리
				if(row == 1) return true;
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 6. Statement, Connection 닫기
		
		
		
		return false;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
