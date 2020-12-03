package chap17.sample2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/sample2/form")// 보내주는 역할만 하는 servlet... 자바 분리의 단점,,
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Post> list;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {// 웹컨테이너가 init(ServletConfig) 호출
    	// init()은 request 객체 못 씀
    	ServletContext application = getServletContext();
    	Object obj = application.getAttribute("posts");
    	
    	if(obj == null) {
    		list = new ArrayList<Post>();
    		application.setAttribute("posts", list);
    	} else {
    		list = (List<Post>) obj;
    	}
    	
    	super.init();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/chap17/sample2/form.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");// title 오타 때문에 list로 안 넘어갔음 ㅠ
		String body = request.getParameter("body");
		
		if(title != null && body != null
				&& !title.isEmpty() && !body.isEmpty()) {
			// 잘 되면 db에 저장
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			list.add(post);
			
			// 목록 보여주는 servlet으로 redirect
			response.sendRedirect(request.getContextPath() + "/sample2/list");
		} else {
			// 비어 있으면 form으로 forwarding
			doGet(request, response);
		}
		
	}

}
