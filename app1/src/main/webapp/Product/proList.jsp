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
<h3>상품 목록</h3>
    상품번호  /  상품이름 /  상품수량
<ul>
<c:forEach var="p" items="${list }">
	
<li>
	${p.num } / ${p.name } / ${p.amount }
</li> 
</c:forEach>
</ul>

<a href ="/app1/ProdAddController">상품 추가</a>

</body>
</html>