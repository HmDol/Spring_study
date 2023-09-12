<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
메뉴<br>
<a href="${pageContext.request.contextPath }/menuTest?type=1">글목록</a><br>
<a href="${pageContext.request.contextPath }/menuTest?type=2">글작성</a><br>
<a href="${pageContext.request.contextPath }/menuTest?type=3">글수정</a><br>
<a href="${pageContext.request.contextPath }/menuTest?type=4">글삭제</a><br>

</body>
</html>