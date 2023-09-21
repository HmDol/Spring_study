<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr> <th>글번호</th> <th>이름</th> <th>가격</th> <th>판매자</th> </tr>
<c:forEach var="sp" items="${list }">
	<tr>
		<td>${sp.num }</td>
		<td>
			<a href="">${b.name }</a>
		</td>
		<td>${sp.price }</td>
		<td>${b.seller }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>