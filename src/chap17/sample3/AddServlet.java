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

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/sample3/post/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
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
		request.setCharacterEncoding("utf-8");// 언어 체크할 것!!! 프젝에서 필터로 넣을 예정
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		if(title != null && body != null
				&& !title.isEmpty() && !body.isEmpty()) {
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			
			int row = insert(post);
			

			if(row == 1) {
				System.out.println("insert 성공");
			} else {
				System.out.println("insert 오류...");
			}
		}
		
		response.sendRedirect("main");
	}

	private int insert(Post post) {
		String sql = "INSERT INTO post (title, body) "
				+ "VALUES (?, ?)";
		
		int row = 0;
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
			  pstmt.setString(1, post.getTitle());
			  pstmt.setString(2, post.getBody());
				
				// 4. 쿼리 실행
				row = pstmt.executeUpdate();// DML(INSERT, UPDATE, DELETE) 쓸 때 사용
				
				// 5. 결과 처리
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 6. Statement, Connection 닫기
		
		return row;
		
	}
}
