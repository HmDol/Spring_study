<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원정보</h3>
<form action="${pageContext.request.contextPath }/member/edit" method="post">
id:<input type="text" name="id" value="${m.id }" readonly><br/>
pwd:<input type="text" name="pwd" value="${m.pwd }"><br/>
name:<input type="text" name="name" value="${m.name }"><br/>
email:<input type="text" name="email" value="${m.email }" readonly><br/>
<input type="submit" value="수정">
</form>
</body>
</html>