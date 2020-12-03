package chap17;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx09
 */
//@WebServlet("/ServletEx09")
public class ServletEx09 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx09() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	ServletConfig config = getServletConfig();
    	String url = config.getInitParameter("dburl");
    	String id = config.getInitParameter("dbid");
    	String pw = config.getInitParameter("dbpw");
    	
    	try {
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		Connection con  = DriverManager.getConnection(url, id, pw);
    		
    		if(con != null) {
    			con.close();
    		}
    		System.out.println("servlet ex09 init method 실행");
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	super.init();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletConfig config = getServletConfig();
		String url = config.getInitParameter("dburl");
		System.out.println(url);
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
