package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NullHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest rq, HttpServletResponse res) throws Exception {
		//rq.setAttribute("notParam", "null page");
		//return "/WEB-INF/view/chap18/hello.jsp";
		res.sendError(HttpServletResponse.SC_NOT_FOUND);// Status Code
		return null;
	}
}
