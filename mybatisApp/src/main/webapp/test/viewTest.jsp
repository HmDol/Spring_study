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
		<tr>
			<td colspan="2"><h3>코스타 사이트</h3></td>
		</tr>
		<tr>
			<td style="width: 200px; height: 400px"><%@ include file="menu.jsp" %></td>
			<td style="width: 600px; height: 400px"><jsp:include page="${path }"/></td>
		</tr>
		<tr>
			<td colspan="2"><%@ include file="footer.jsp" %></td>
		</tr>
	</table>
</body>
</html>