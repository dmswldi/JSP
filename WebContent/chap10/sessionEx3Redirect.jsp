<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page session="false" %> --%>
<!-- session 안 만들려면,,, -->

<%
request.setAttribute("attr1", "value1"); /* redirect시 target에 얘는 전달이 안 됨 */
session.setAttribute("attr2", "value2");

HttpSession sess = request.getSession();
/* session을 request로부터 꺼내쓸 수 있음 */
System.out.println(session == sess); // 같은 객체

response.sendRedirect("sessionEx3RedirectTarget.jsp");
%>