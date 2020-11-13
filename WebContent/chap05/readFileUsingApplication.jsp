<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>
<%
	String resourcePath = "/WEB-INF/notice.txt";
%>
자원의 실제 경로: <br>
<%= application.getRealPath(resourcePath) %>
<%
	//String realPath = application.getRealPath(resourcePath);//
	//InputStream st = new InputStream(realPath); // = Line 31의 getResourceAsStream()
%>
<br>
--------------<br>
<%= resourcePath %>의 내용 <br>
--------------<br>
<%
char[] buff = new char[128];
int len = -1;


try (InputStreamReader br = new InputStreamReader(application.getResourceAsStream(resourcePath), "utf-8")){// inputStream, charset 지정
	while((len = br.read(buff)) != -1){
		out.print(new String(buff, 0 ,len));
	}
} catch(IOException e) {
	out.println("익셉션 발생: " + e.getMessage());
}
%>
</body>
</html>