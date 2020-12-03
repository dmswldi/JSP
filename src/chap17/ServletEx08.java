package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx08
 * 
 * HttpServlet obj = new ServletEx08();
 * obj.init(); 가장 먼저!
 * obj.doGet(request, response);
 * obj.doPost(request, response);
 * 톰캣이 하는 일
 */
@WebServlet(value = "/ex08", loadOnStartup = 1)// 숫자 낮을수록 먼저 실행, 로딩(여러 servlet), 요청 받지 않아도 인스턴스 만들고 init() 실행
public class ServletEx08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx08() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	// 서블릿 실행되고 가장 먼저 1번만 실행되는 메소드
    	System.out.println("init method 실행");
    	super.init();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ex08 doget method");
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
