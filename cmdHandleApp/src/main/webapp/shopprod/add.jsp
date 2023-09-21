<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>상품추가</h3>
<form action="${pageContext.request.contextPath }/shopprod/add.do" method="post" enctype="multipart/form-data">
<table border="1">
<tr><th>name</th><td><input type="text" name="name"></td></tr>
<tr><th>content</th><td><textarea rows="5" cols="20" name="content"></textarea></td></tr>
<tr><th>price</th><td><input type="number" name="price"></td></tr>
<tr><th>amount</th><td><input type="number" name="amount"></td></tr>
<tr><th>seller</th><td><input type="text" name="seller" value="${sessionScope.loginId }" readonly></td></tr>
<tr><th>사진1</th><td><input type="file" name="img1"></td></tr>
<tr><th>사진2</th><td><input type="file" name="img2"></td></tr>
<tr><th>사진3</th><td><input type="file" name="img3"></td></tr>
<tr><th>사진4</th><td><input type="file" name="img4"></td></tr>
<tr><th>등록</th><td><input type="submit" value="등록"></td></tr>
</table>
</form>
</body>
</html>