package chap18;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DateHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest rq, HttpServletResponse res) throws Exception {
		rq.setAttribute("date", new Date());
		return "/WEB-INF/view/chap18/hello.jsp";
	}
}
