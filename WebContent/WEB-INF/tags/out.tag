<%@ tag body-content="tagdependent" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
<jsp:doBody var="bodyText" />
${bodyText}
 --%>

<%-- 실행 결과 var에 저장 --%>
<jsp:doBody var="bodyText" />
<c:out value="${bodyText }" escapeXml="true"></c:out>