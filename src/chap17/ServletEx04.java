package chap17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletEx04
 */
@WebServlet("/ex04")
public class ServletEx04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx04() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// jsp의 기본 객체: request, session, application, config, (pageContext, page), response, out (8, p114)
		// page랑 pageContext는 jsp에서만 사용
		
		HttpSession session = request.getSession(); // Ctrl + Shif + o: import
		ServletContext application = request.getServletContext();
		application = getServletContext(); // 부모(GenericServlet) 메소드
		ServletConfig config = getServletConfig();
		
		PrintWriter out = response.getWriter();// 문자 단위 (!)
		response.getOutputStream();// 바이트 단위
		
		System.out.println("ex04 servlet doGet method");
		System.out.println(request.getParameter("id"));
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
