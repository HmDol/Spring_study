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
<h3>버스 검색 결과</h3>
<table border="1">
<tr><th>busnm</th><th>stStationNm</th><th>edStationNm</th><th>firstBusTm</th><th>lastBusTm</th>
<th>term</th><th>routeType</th><th>corpNm</th></tr>
<c:forEach var="info" items="${list }">
<tr>
<td>${info.busnm }</td><td>${info.stStationNm }</td><td>${info.edStationNm }</td><td>${info.firstBusTm }</td>
<td>${info.lastBusTm }</td><td>${info.term }</td><td>${info.routeType }</td><td>${info.corpNm }</td>
</tr>
</c:forEach>
</table>
</body>
</html>