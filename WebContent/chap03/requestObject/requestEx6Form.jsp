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
<script>
	$(document).ready(function(){
		$("input[type='checkbox']").on("click", function(){/* 최대 6개 제한 */
			var count = $("input:checked[type='checkbox']").length;
			if(count > 6){
				$(this).prop("checked", false);/* property */
				alert("최대 6개 선택 가능합니다.");
			}
		})
		
		$("input[type='submit']").on("click", function(){/* 최소 6개 제한 */
			var count = $("input:checked[type='checkbox']").length;
			if(count < 6){
				alert("반드시 6개를 체크해주세요");
				return false; /* submit 반려 */
			}
		})
 	})
</script>
<title>Insert title here</title>
</head>
<body class="mt-3 ml-3">
<form action="requestEx6Process.jsp" method="post">
<!-- 	({$}+input[type=checkbox][name="num"][value=n$]+br)*45 -->
<!-- 	({$ }+input[type=checkbox][name="num"][value=n$]+{&nbsp;&nbsp;&nbsp;&nbsp;})*45 -->
<!-- (div[style="display:inline-block"].m-2>({$ }+input[type=checkbox][name="num"][value=n$]))*45 -->
<!-- (div[style="display:inline-block"].m-2>label[for=n$]{$}+input[type=checkbox][name="num"][value=n$][id=n$].ml-1)*45 -->

<!-- div : inline-block + label -->
 	<div style="display:inline-block" class="m-2"><label for="n1">
 	1</label><input type="checkbox" name="num" value="n1" id="n1" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n2">2</label><input type="checkbox" name="num" value="n2" id="n2" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n3">3</label><input type="checkbox" name="num" value="n3" id="n3" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n4">4</label><input type="checkbox" name="num" value="n4" id="n4" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n5">5</label><input type="checkbox" name="num" value="n5" id="n5" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n6">6</label><input type="checkbox" name="num" value="n6" id="n6" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n7">7</label><input type="checkbox" name="num" value="n7" id="n7" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n8">8</label><input type="checkbox" name="num" value="n8" id="n8" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n9">9</label><input type="checkbox" name="num" value="n9" id="n9" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n10">10</label><input type="checkbox" name="num" value="n10" id="n10" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n11">11</label><input type="checkbox" name="num" value="n11" id="n11" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n12">12</label><input type="checkbox" name="num" value="n12" id="n12" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n13">13</label><input type="checkbox" name="num" value="n13" id="n13" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n14">14</label><input type="checkbox" name="num" value="n14" id="n14" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n15">15</label><input type="checkbox" name="num" value="n15" id="n15" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n16">16</label><input type="checkbox" name="num" value="n16" id="n16" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n17">17</label><input type="checkbox" name="num" value="n17" id="n17" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n18">18</label><input type="checkbox" name="num" value="n18" id="n18" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n19">19</label><input type="checkbox" name="num" value="n19" id="n19" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n20">20</label><input type="checkbox" name="num" value="n20" id="n20" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n21">21</label><input type="checkbox" name="num" value="n21" id="n21" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n22">22</label><input type="checkbox" name="num" value="n22" id="n22" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n23">23</label><input type="checkbox" name="num" value="n23" id="n23" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n24">24</label><input type="checkbox" name="num" value="n24" id="n24" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n25">25</label><input type="checkbox" name="num" value="n25" id="n25" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n26">26</label><input type="checkbox" name="num" value="n26" id="n26" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n27">27</label><input type="checkbox" name="num" value="n27" id="n27" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n28">28</label><input type="checkbox" name="num" value="n28" id="n28" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n29">29</label><input type="checkbox" name="num" value="n29" id="n29" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n30">30</label><input type="checkbox" name="num" value="n30" id="n30" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n31">31</label><input type="checkbox" name="num" value="n31" id="n31" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n32">32</label><input type="checkbox" name="num" value="n32" id="n32" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n33">33</label><input type="checkbox" name="num" value="n33" id="n33" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n34">34</label><input type="checkbox" name="num" value="n34" id="n34" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n35">35</label><input type="checkbox" name="num" value="n35" id="n35" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n36">36</label><input type="checkbox" name="num" value="n36" id="n36" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n37">37</label><input type="checkbox" name="num" value="n37" id="n37" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n38">38</label><input type="checkbox" name="num" value="n38" id="n38" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n39">39</label><input type="checkbox" name="num" value="n39" id="n39" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n40">40</label><input type="checkbox" name="num" value="n40" id="n40" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n41">41</label><input type="checkbox" name="num" value="n41" id="n41" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n42">42</label><input type="checkbox" name="num" value="n42" id="n42" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n43">43</label><input type="checkbox" name="num" value="n43" id="n43" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n44">44</label><input type="checkbox" name="num" value="n44" id="n44" class="ml-1" /></div>
 	<div style="display:inline-block" class="m-2"><label for="n45">45</label><input type="checkbox" name="num" value="n45" id="n45" class="ml-1" /></div>
 	
	<input type="submit" value="로또 확인" class="btn btn-danger m-3">
</form>
</body>
</html>