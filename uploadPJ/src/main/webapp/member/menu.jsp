<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>${sessionScope.loginId }님 로그인 성공</h3>
<!-- <a href="/app1/MemListController">회원목록</a><br/> -->
<a href="${pageContext.request.contextPath }/MemEditController?id=${sessionScope.loginId }">내정보확인</a><br/>
<a href="${pageContext.request.contextPath }/Logout">로그아웃</a><br/>
<a href="${pageContext.request.contextPath }/board/list">게시판</a><br/>
<%-- <a href="${pageContext.request.contextPath }/product/list">상품목록</a><br/> --%>
<a href="${pageContext.request.contextPath }/guestbook/view.jsp">방명록</a><br>


</body>
</html>