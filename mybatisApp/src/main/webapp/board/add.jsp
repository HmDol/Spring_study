<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>���ۼ�</h3>
<form action="${pageContext.request.contextPath }/board/add" method="post">
<table border="1">
<tr><th>�ۼ���</th><td><input type="text" name="writer" value="${sessionScope.loginId }" readonly></td></tr>
<tr><th>title</th><td><input type="text" name="title"></td></tr>
<tr><th>content</th><td><textarea rows="10" cols="30" name="content"></textarea></td></tr>
<tr><th>�ۼ�</th><td><input type="submit" value="�ۼ�"></td></tr>
</table>
</form>
</body>
</html>