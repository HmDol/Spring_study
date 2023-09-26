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
<h3>${type }</h3>
<h4>기간:${showRange }</h4>
<table border="1">
<tr><th>rank</th><th>movieCd</th><th>movieNm</th><th>openDt</th><th>audiCnt</th><th>scrnCnt</th></tr>
<c:forEach var="m" items="${list }">
<tr>
	<td>${m.rank }</td><td>${m.movieCd }</td><td>${m.movieNm }</td>
	<td>${m.openDt }</td><td>${m.audiCnt }</td><td>${m.scrnCnt }</td>
</tr>
</c:forEach>
</table>
</body>
</html>