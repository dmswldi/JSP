<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %> <%-- trim이 안 되는 거 아닌가? --%>
<%@ attribute name="count" required="true" type="java.lang.Integer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach begin="${1 }" end="${count }"> <%-- 숫자 1 --%>
	<jsp:doBody />
</c:forEach>