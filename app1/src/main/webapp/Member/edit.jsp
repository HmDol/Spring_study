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
	<h3>${m.name }���ǻ�����</h3>
	<form action="/app1/MemEditController" method="post">
		id : <input style="background-color : gray;; "type="text" name="id" value="${m.id }" readonly><br>
		pwd : <input type="text" name="pwd" value="${m.pwd }"><br>
		name : <input type="text" name="name" value="${m.name }"><br>
		email : <input style="background-color : gray; " type="text" name="email" value="${m.email }" readonly><br>
		<input type="submit" value="����">
		<a href="/app1/MemListController">�������</a>
	</form>
</body>
</html>