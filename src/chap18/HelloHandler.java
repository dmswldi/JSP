package chap18;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloHandler implements CommandHandler {
	@Override
	public String process(HttpServletRequest rq, HttpServletResponse res) throws Exception {
		// 3, 4단계
		rq.setAttribute("hello", "안녕하세요!");
		return "/WEB-INF/view/chap18/hello.jsp";
	}
}
