<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>글작성 폼</h3>
<form action="${pageContext.request.contextPath }/guestbook/add" method="post">
<table border="1">
<tr><th>작성자</th><td><input type="text" name="writer"></td></tr>
<tr><th>글 비밀번호</th><td><input type="password" name="pwd"></td></tr>
<tr><th>내용</th><td><textarea name="content" rows="5" cols="40"></textarea></td></tr>
<tr><th>등록</th><td><input type="submit" value="작성"></td></tr>
</table>
</form>
</body>
</html>