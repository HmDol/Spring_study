<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>판매자 메뉴</h3>
<a href="${pageContext.request.contextPath }/shopprod/list.do?seller=${sessionScope.loginId}">내상품목록</a><br/>
<a href="${pageContext.request.contextPath }/shopprod/add.do">상품등록</a><br/>
</body>
</html>