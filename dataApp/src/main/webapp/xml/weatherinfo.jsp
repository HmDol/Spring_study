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
<h3>날씨정보</h3>
<h4>title:${title }<br/> 주간날씨정보:${desc }</h4>

<c:forEach var="l" items="${list }">
<table border="1">
<tr><td colspan="5">${l.city }의 날씨 정보</td></tr>
<tr><th>날짜</th><th>설명</th><th>최저온도</th><th>최고온도</th><th>비올확률</th></tr>
<c:forEach var="w" items="${l.list }">
<tr><td>${w.dateTime }</td><td>${w.info }</td><td>${w.tmn }</td>
<td>${w.tmx }</td><td>${w.rnst }</td></tr>
</c:forEach>
</table>
</c:forEach>

</body>
</html>