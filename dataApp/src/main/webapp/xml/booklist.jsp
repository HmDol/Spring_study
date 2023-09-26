<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>책목록/</h3>
<table border="1">
<tr><th>책id</th><th>title</th><th>author</th><th>price</th></tr>
<c:forEach var="b" items="${datas }">
<tr>
<td>${b.bookid }</td><td>${b.title }</td><td>${b.author }</td><td>${b.price }</td>
</tr>
</c:forEach>
</table>
</body>
</html>