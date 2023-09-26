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
<h3>고속도로 휴게소 음식들</h3>
<table border="1">
<tr><th>label</th><th>price</th><th>route</th><th>area</th><th>direction</th></tr>
<c:forEach var="f" items="${list }">
<tr><td>${f.label }</td><td>${f.price }</td><td>${f.routeName }</td>
<td>${f.areaName }</td><td>${f.direction }</td></tr>
</c:forEach>
</table>
</body>
</html>