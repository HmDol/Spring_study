<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>��ǰ �߰�</h3>
	<form action="/app1/ProdAddController" method="post">
		��ǰ�̸� : <input type="text" name="name"><br> 
		��ǰ���� : <input type="text" name="price"><br> 
		��ǰ���� : <input type="text" name="amount"><br> 
		��ǰ���� : <input type="text" name="seller"> <br>
		<input type="submit" value="�߰�">
	</form>
</body>
</html>