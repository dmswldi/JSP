package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;
import chap20.DBUtil;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/sample3/post/detail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		
		
		
		if(id != null && !id.isEmpty()) {
			Post post = getPost(id);// db에 저장된 post 읽어온다! 어차피 드라이버 로딩해야 됨
			// 포스트 하나만 보내자
			
			if(post != null) {
				request.setAttribute("post", post);
				
				String path = "/WEB-INF/view/chap17/detail.jsp";
				request.getRequestDispatcher(path).forward(request, response);							
			} else {
				System.out.println("포스트 비어있음");
			}
		} else {
			System.out.println("아이디 비어있음");
		}
	}

	private Post getPost(String id) {
		Post p = null;
		
		String sql = "SELECT title, body FROM post "
				+ "WHERE id = ?";
		
		
		try (// 2. 연결 생성
			Connection con = DBUtil.getConnection();
			// 3. Statement 생성
			PreparedStatement pstmt = con.prepareStatement(sql);
			){
				pstmt.setInt(1, Integer.parseInt(id));
				
				// 4. 쿼리 실행
				ResultSet rs = pstmt.executeQuery();
				
				// 5. 결과 처리
				while(rs.next()) {
					p = new Post();
					p.setId(Integer.parseInt(id));
					p.setTitle(rs.getString(1));
					p.setBody(rs.getString(2));
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 6. Statement, Connection 닫기
		
		
		return p;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
}
