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
<h3>공공 데이터</h3>
<a href="${pageContext.request.contextPath }/xml/booklist.do">책목록</a><br/>
<a href="${pageContext.request.contextPath }/xml/weather.do">날씨정보</a><br/>
<a href="${pageContext.request.contextPath }/json/foodinfo.do">고속도로메뉴</a><br/>
<a href="${pageContext.request.contextPath }/json/movieinfo.do">영화목록 샘플</a><br/>
<form action="${pageContext.request.contextPath }/json/movielist.do" method="post">
주말박스오피스 날짜입력: <input type="date" name="targetDt">
<input type="submit" value="검색">
</form>
<form action="${pageContext.request.contextPath }/bus/routeInfo.do" method="post">
노선검색: <input type="number" name="routeId">
<input type="submit" value="검색">
</form>
<form action="${pageContext.request.contextPath }/bus/businfo.do" method="post">
버스검색: <input type="number" name="busnm">
<input type="submit" value="검색">
</form>
<form action="${pageContext.request.contextPath }/bus/stationinfo.do" method="post">
busRouteId로 경유 정류소 검색: <input type="number" name="busRouteId">
<input type="submit" value="검색">
</form>
<div>
<c:if test="${not empty view }">
<jsp:include page="${view }"/>
</c:if>
</div>
</body>
</html>