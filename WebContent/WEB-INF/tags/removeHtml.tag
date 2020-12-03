<%@ tag body-content="scriptless" language="java" pageEncoding="UTF-8"%>
<%@ attribute name="length" type="java.lang.Integer" %>
<%@ attribute name="trail" %>
<%@ attribute name="trim" %>

<jsp:doBody var="content" scope="page" />
<%
	String content = (String) jspContext.getAttribute("content");
	if(trim != null && trim.equals("true")) {
		content = content.trim();
	}
	// font size="10" 이 안 없어져!!
	//content = content.replaceAll("<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?>", "");// 태그 제거<></>
	content = content.replaceAll("<(/)?(\\w*)(\\s\\w*=\"\\w*\"*)?>", "");
	
	if(length != null && length.intValue() > 0 &&
		content.length() > length.intValue()){
		content = content.substring(0, length.intValue());
		if(trail != null){
			content = content + trail;
		}
	}	
%>
<%= content %>