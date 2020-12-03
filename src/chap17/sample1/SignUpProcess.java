package chap17.sample1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUpProcess
 */
@WebServlet("/sample1/process")
public class SignUpProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpProcess() {
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
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		// 가입정보 유효 시(!id.equals(pw))
		if(id != null && pw != null
				&& !id.equals("") && !pw.equals("") && !id.equals(pw)) {
			// 가입처리, 완료 페이지(forward)
			request.setAttribute("userId", id);
			//String path = "../chap17/sample1/done.jsp";// 상대 경로
			String path = "/chap17/sample1/done.jsp";// 절대 경로
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		} else {
			// 유효하지 않으면 signup으로 redirect
			HttpSession session = request.getSession();
			session.setAttribute("formId", id);
			session.setAttribute("formPw", pw);
			session.setAttribute("message", "로그인에 실패했습니다.");
			
			String path = "signup";// 상대 경로
			// path = request.getContextPath() + "/sample1/signup";// 절대 경로
			response.sendRedirect(path);
		}
		
		
		
		
		
	}

}
