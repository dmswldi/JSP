package chap18.complex3;

import java.io.FileReader;
import java.io.IOException;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap18.complex2.ModelInterface;

/**
 * Servlet implementation class Complex3Controller
 */
@WebServlet("/Complex3Controller")
public class Complex3Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Complex3Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | ServletException
				| IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			processRequest(request, response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | ServletException
				| IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ClassNotFoundException, InstantiationException, IllegalAccessException {
		// 2 : 요청 파악, request 객체로부터 사용자 요청 파악
		String type = request.getParameter("type");
		
		// 3 : 요청 기능 수행
		Object resultObject = null;
		ModelInterface model = null;
		
		String path = "/WEB-INF/chap18/mapping/mapping.properties";
		path = getServletContext().getRealPath(path);
		System.out.println(path);
		FileReader fr = null;
		String modelClassName = "chap18.complex2.Model1";
		try {
			fr = new FileReader(path);
			Properties properties = new Properties();// java.util에 있음
			properties.load(fr);
			modelClassName = properties.getProperty(type);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		try {
			Class c = Class.forName(modelClassName);
			model = (ModelInterface) c.newInstance();			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		resultObject = model.execute(); 
		
		// 4 : request or session에 처리 결과 저장
		request.setAttribute("result", resultObject);
		
		// 5 : requestDispatcher를 사용하여 알맞은 뷰로 forwarding
		RequestDispatcher dispatcher = request.getRequestDispatcher("/chap18/simpleView.jsp");
		dispatcher.forward(request, response);
	}
}
