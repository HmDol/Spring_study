<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>상품 추가</h3>
	<form action="/app1/ProdAddController" method="post">
		상품이름 : <input type="text" name="name"><br> 
		상품가격 : <input type="text" name="price"><br> 
		상품수량 : <input type="text" name="amount"><br> 
		상품셀러 : <input type="text" name="seller"> <br>
		<input type="submit" value="추가">
	</form>
</body>
</html>