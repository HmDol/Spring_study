<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>로그인</h3>
<form action="${pageContext.request.contextPath }/LoginController" method="post">
id:<input type="text" name="id"><br/>
pwd:<input type="password" name="pwd"><br/>
<input type="submit" value="로그인">
</form>
</body>
</html>