<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = ()=> {
	location.href="/app1/DelProduct?num=${product.num }";
}
</script>
</head>
<body>
	${product.num }�� ������
	<form action="/app1/DetailProdController" method ="post"	>
	
	<table border="1">
		<tr> <th>��ǰ��ȣ</th> <td><input type="number" value="${product.num }" name="num" readonly></td></tr>
		<tr> <th>��ǰ�̸�</th> <td><input type="text" value="${product.name }" name="name" readonly></td></tr>
		<tr> <th>��ǰ����</th> <td><input type="number" value="${product.price }" name="price"></td></tr>
		<tr> <th>��ǰ����</th> <td><input type="number" value="${product.amount }" name="amount" readonly></td></tr>
		<tr> <th>��ǰ����</th> <td><input type="text" value="${product.seller }" name="seller" readonly></td></tr>
		<tr><td><input type="submit" value ="����" ><input type ="button" value="����" onclick="del()"></td></tr>
	</table>
	</form>
</body>
</html>