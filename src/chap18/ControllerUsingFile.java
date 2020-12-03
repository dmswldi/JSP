package chap18;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap18.CommandHandler;
import chap18.NullHandler;

/**
 * Servlet implementation class ControllerUsingFile
 */
@WebServlet(value = "/controllerUsingFile", 
	initParams = {
		@WebInitParam (
			name = "configFile",
			value= "/WEB-INF/chap18/mapping/commandHandler.properties"
		)
})
public class ControllerUsingFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// <커맨드, 핸들러인스턴스> 매핑 정보 저장
	private Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
       
	@Override
	public void init() throws ServletException {
		String configFile = getInitParameter("configFile");
		Properties prop = new Properties();
		String configFilePath = getServletContext().getRealPath(configFile);
		try (FileReader fis = new FileReader(configFilePath)) {
			prop.load(fis);
		} catch(IOException e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
		Iterator keyIter = prop.keySet().iterator();
		while(keyIter.hasNext()) {
			String command = (String) keyIter.next();// hello
			String handlerClassName = prop.getProperty(command);// chap18.HelloHandler
			try {
				Class<?> handlerClass = Class.forName(handlerClassName);
				CommandHandler handlerInstance = (CommandHandler) handlerClass.newInstance();
				commandHandlerMap.put(command, handlerInstance);// "hello", HelloHandler instance + "date", DateHandler instance
			} catch(ClassNotFoundException| InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsingFile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String command = request.getParameter("cmd");// cmd parameter를 읽어서
		CommandHandler handler = commandHandlerMap.get(command);// command = hello or date, 매핑된 class 얻어서
		if(handler == null) {
			handler = new NullHandler();
		}
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);// "/WEB-INF/view/chap18/hello.jsp"
		} catch (Exception e) {
			throw new ServletException(e);
		}
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}

}
