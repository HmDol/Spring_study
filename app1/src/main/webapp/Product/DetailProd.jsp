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
	${product.num }의 상세정보
	<table border="1">
		<tr> <th>상품번호</th> <td>${product.num }</td></tr>
		<tr> <th>상품이름</th> <td>${product.name }</td></tr>
		<tr> <th>상품가격</th> <td>${product.price }</td></tr>
		<tr> <th>상품수량</th> <td>${product.amount }</td></tr>
		<tr> <th>상품셀러</th> <td>${product.seller }</td></tr>
	
	</table>
</body>
</html>