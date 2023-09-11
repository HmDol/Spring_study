<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>${sessionScope.loginId }님 로그인 성공</h1>
<a href="/app1/MemListController">회원목록</a>
<a href="/app1/MemEditController?id=${sessionScope.loginId }">내정보확인</a>
<a href="/app1/ProListController">상품목록</a> 
<a href="/app1/BoardPrintController">게시판 목록</a> <br>
<a href="/app1/Logout">로그아웃</a>
</body>
</html>