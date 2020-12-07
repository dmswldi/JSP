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

import chap05.Post;
import chap20.DBUtil;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/sample3/post/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		// 수정, db가서 값 업데이트
		String id = request.getParameter("id");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		Post post = setPost(id, title, body);
		request.setAttribute("post", post);
				
		// 해당 detail로 다시 forward
		request.getRequestDispatcher("/WEB-INF/view/chap17/detail.jsp").forward(request, response);
	}
	
	private Post setPost(String id, String title, String body) {
		Post p = null;
		
		String sql = "UPDATE post Set title = ?, body = ? "
				+ "WHERE id = " + id;

		try (// 2. 연결 생성
			Connection con = DBUtil.getConnection();
			// 3. Statement 생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			){
				pstmt.setString(1, title);
				pstmt.setString(2, body);

				// 4. 쿼리 실행
				pstmt.executeUpdate();
				
				// 5. 결과 처리
				p = new Post();
				p.setId(Integer.parseInt(id));
				p.setTitle(title);
				p.setBody(body);
				
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 6. Statement, Connection 닫기
		
		
		return p;
	}

}
