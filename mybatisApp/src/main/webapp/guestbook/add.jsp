<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>���ۼ� ��</h3>
<form action="${pageContext.request.contextPath }/guestbook/add" method="post">
<table border="1">
<tr><th>�ۼ���</th><td><input type="text" name="writer"></td></tr>
<tr><th>�� ��й�ȣ</th><td><input type="password" name="pwd"></td></tr>
<tr><th>����</th><td><textarea name="content" rows="5" cols="40"></textarea></td></tr>
<tr><th>���</th><td><input type="submit" value="�ۼ�"></td></tr>
</table>
</form>
</body>
</html>