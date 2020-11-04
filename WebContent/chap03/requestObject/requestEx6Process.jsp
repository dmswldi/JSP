<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body class="m-3">
<%
Set<Integer> lotto = new HashSet<>(); /* 중복 없게 */
while(lotto.size() < 6){ /* 당첨 번호 */
	lotto.add((int) (Math.random()*45) + 1);
}

List<Integer> lotto2 = new ArrayList<>(lotto);/* 정렬 */
Collections.sort(lotto2);
out.print("당첨 번호: ");
out.print(lotto2 + "<br>"); /* 객체 프린트 시 [] 안에 배열 ,로 구분되어 출력됨 */

String[] number = request.getParameterValues("num");
List<Integer> matchNum = new ArrayList<>();
int match = 0;
if(number != null){
	out.print("선택한 번호: [");
	for(String s : number){
		int num = Integer.parseInt(s.substring(1));
		out.print(num + " ");
		if(lotto2.contains(num)){
			match++;
			matchNum.add(num);
		}
	}
	out.print("] <br>");

} else {
	out.print("고른 숫자가 없습니다");
}
%>

맞춘 개수 : <%= match %>개 <%= matchNum %>






<%-- 쌤 꺼
<%
String[] selected = request.getParameterValues("num");
List<Integer> selectedList = new ArrayList<>();
for (String s : selected) {
	selectedList.add(Integer.valueOf(s.substring(1))); 
}
int cnt = 0;
for (Integer s : selectedList) {
	if (lotto.contains(s)) {
		cnt++;
	}
}
%> --%>

</body>
</html>