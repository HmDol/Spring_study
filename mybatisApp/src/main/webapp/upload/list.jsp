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
<h3>���ε� ���� ���</h3>
<c:forEach var="i" items="${fname }">
<img alt="�ȵ�" src="/img/${i }" style="width:150px; height:150px;"><br>
</c:forEach>
</body>
</html>