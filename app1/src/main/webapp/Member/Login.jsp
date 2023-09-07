<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인</h2>
	<form action="/app1/LoginController" method="post">
		아이디 : <input type="text" name="id"><br>
		패스워드 : <input type="password" name="pwd"><br> 
		<input type="submit" value="로그인"> 
	</form>
</body>
</html>