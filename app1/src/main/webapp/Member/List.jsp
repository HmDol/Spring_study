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
<h3>회원목록</h3>
<ul>
<c:forEach var="m" items="${list }">
<li><a href="/app1/MemEditController?id=${m.id }&name=${m.name}&email=${m.email}" >${m.id }</a> / ${m.name }</li> 
</c:forEach>
</ul>
</body>
</html>