<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${product.num }�� ������
	<table border="1">
		<tr> <th>��ǰ��ȣ</th> <td>${product.num }</td></tr>
		<tr> <th>��ǰ�̸�</th> <td>${product.name }</td></tr>
		<tr> <th>��ǰ����</th> <td>${product.price }</td></tr>
		<tr> <th>��ǰ����</th> <td>${product.amount }</td></tr>
		<tr> <th>��ǰ����</th> <td>${product.seller }</td></tr>
	
	</table>
</body>
</html>