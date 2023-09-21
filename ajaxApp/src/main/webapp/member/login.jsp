<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h3>로그인</h3>
<form action="${pageContext.request.contextPath }/member/login" method="post">
id:<input type="text" name="id"><br/>
pwd:<input type="password" name="pwd"><br/>
<input type="submit" value="로그인">
</form>
</body>
</html>