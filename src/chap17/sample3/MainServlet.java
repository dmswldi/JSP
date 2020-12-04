package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/sample3/post/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// list <- select sql
		List<Post> posts = getPosts();
		
		// request attribute에 넣어서
		request.setAttribute("posts", posts);
		
		// forward
		String path = "/WEB-INF/view/chap17/main.jsp";
		request.getRequestDispatcher(path).forward(request, response);// /는 context root 뜻함.
	}

	private List<Post> getPosts() {
		List<Post> list = new ArrayList<>();
		
		String sql = "SELECT id, title FROM post "
				+ "ORDER BY id DESC";
		
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
			Statement stmt = con.createStatement();
			){
				// 4. 쿼리 실행
				ResultSet rs = stmt.executeQuery(sql);
				
				// 5. 결과 처리
				while(rs.next()) {
					Post p = new Post();
					p.setId(rs.getInt(1));
					p.setTitle(rs.getString(2));
					list.add(p);
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 6. Statement, Connection 닫기
				
		
		return list;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
