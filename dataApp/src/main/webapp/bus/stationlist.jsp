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
<h3>노선 경유 정류소</h3>
<table border="1">
<tr><th>seq</th><th>arsId</th><th>busRouteId</th><th>busRouteNm</th>
<th>busRouteNm</th><th>direction</th><th>gpsX</th><th>gpsY</th><th>stationNm</th></tr>
<c:forEach var="s" items="${list }">
<tr><td>${s.seq }</td><td>${s.arsId }</td><td>${s.busRouteId }</td><td>${s.busRouteNm }</td>
<td>${s.busRouteNm }</td><td>${s.direction }</td><td>${s.gpsX }</td><td>${s.gpsY }</td>
<td>${s.stationNm }</td></tr>
</c:forEach>
</table>
</body>
</html>







