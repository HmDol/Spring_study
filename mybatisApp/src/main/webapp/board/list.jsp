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
<h3>글목록</h3>
<a href="${pageContext.request.contextPath }/board/add">글작성</a><br/>

<form action="${pageContext.request.contextPath }/board/search" method="post">
<select name="type">
<option value="1">작성자</option>
<option value="2">제목</option>
</select>

<input type="text" name="val">
<input type="submit" value="검색">
</form>

<c:if test="${empty list }"><!-- 리스트 비었으면 true -->
등록된 글이 없다
</c:if>
<c:if test="${not empty list }"><!-- 리스트 안 비었으면 true -->
<table border="1">
<tr><th>글번호</th><th>제목</th><th>작성자</th></tr>
<c:forEach var="b" items="${list }">
	<tr>
		<td>${b.num }</td>
		<td><a href="${pageContext.request.contextPath }/board/detail?num=${b.num }">${b.title }</a></td>
		<td>${b.writer }</td>
	</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>