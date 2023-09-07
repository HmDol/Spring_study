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
	<h3>${name }님의상세정보</h3>
	<form action="/app1/MemEditController" method="post">
		id : <input style="background-color : gray;; "type="text" name="id" value="${id }" readonly><br>
		pwd : <input type="text" name="pwd" value="${pwd }"><br>
		name : <input type="text" name="name" value="${name }"><br>
		email : <input style="background-color : gray; " type="text" name="email" value="${email }" readonly><br>
		<input type="submit" value="수정">
		<a href="/app1/MemListController">목록으로</a>
	</form>
</body>
</html>