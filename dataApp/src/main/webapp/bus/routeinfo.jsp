<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>노선 정보</h3>
<table border="1">
<tr><th>stStationNm</th><td>${info.stStationNm }</td></tr>
<tr><th>edStationNm</th><td>${info.edStationNm }</td></tr>
<tr><th>firstBusTm</th><td>${info.firstBusTm }</td></tr>
<tr><th>lastBusTm</th><td>${info.lastBusTm }</td></tr>
<tr><th>term</th><td>${info.term }</td></tr>
<tr><th>routeType</th><td>${info.routeType }</td></tr>
<tr><th>corpNm</th><td>${info.corpNm }</td></tr>
</table>
</body>
</html>