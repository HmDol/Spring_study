<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>경로 테스트</h3>
<a href="loginForm.jsp">로그인폼</a><br/><!-- 상대경로 -->
<a href="/prj1/EmpController">사원목록</a><br/><!-- 절대경로 -->
<img src="img/1.jpg" style="width:150px;height:150px"><br/><!-- 상대경로 -->
<img src="/prj1/img/1.jpg" style="width:150px;height:150px"><br/><!-- 절대경로 -->
<h4>순서있는 목록</h4>
<ol type="A">
	<li>가가가</li>
	<li>나나나</li>
	<li>다다다</li>
</ol>

<h4>순서없는 목록</h4>
<ul type="circle">
	<li>가가가</li>
	<li>나나나</li>
	<li>다다다</li>
</ul>

<table border="1">
<tr><td>aaa</td><td>bbb</td><td>ccc</td></tr>
<tr><td>ddd</td><td>eee</td><td>fff</td></tr>
</table><br/>

<h3>가로로 칸 합치기. colspan</h3>
<table border="1">
<tr><td colspan="2">aaa / bbb</td><td>ccc</td></tr>
<tr><td>ddd</td><td>eee</td><td>fff</td></tr>
</table><br/>

<h3>세로로 칸 합치기. rowspan</h3>
<table border="1">
<tr><td rowspan="2">aaa</td><td>bbb</td><td>ccc</td></tr>
<tr><td>eee</td><td>fff</td></tr>
</table><br/>
</body>
</html>








