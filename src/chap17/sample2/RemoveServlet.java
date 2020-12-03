package chap17.sample2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class RemoveServlet
 */
@WebServlet("/sample2/remove")
public class RemoveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Post> list;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	list = (List<Post>) getServletContext().getAttribute("posts");
    	super.init();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// list에서 해당 post 삭제
		String idx = request.getParameter("idx");

		//posts.remove((int)Integer.valueOf(idx));// (int)로 캐스팅해서 remove 해주기,, 아니면 object로 인식됨 ㅠㅠㅠㅠㅠㅠ
		list.remove(Integer.parseInt(idx));// parseInt() 쓰기!!!!
		//getServletContext().setAttribute("posts", posts);
		// app에서 얻은 것과 posts는 같은 객체를 공유하고 있으므로 다시 set 안 해도 됨!
		
		//request.getRequestDispatcher("/chap17/sample2/list.jsp").forward(request, response);
		response.sendRedirect(request.getContextPath() + "/sample2/list");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
