<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>���� ���ε�</h3>
<form action="${pageContext.request.contextPath }/upload" method="post" enctype="multipart/form-data">
	���� : <input type="text" name="title"><br>
	���� : <input type="file" name="f"><br>
	<input type="submit" value="���ε�"> 
</form>
</body>
</html>