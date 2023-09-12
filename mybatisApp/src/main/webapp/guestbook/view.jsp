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
<tr><td colspan="2" style="text-align:center"><h3>방명록</h3></td></tr>
<tr>
	<td style="width:200px;height:400px;text-align:center">
		<h4>메뉴</h4>
		<a href="${pageContext.request.contextPath }/guestbook/list?page=1">글목록</a><br/>
		<a href="${pageContext.request.contextPath }/guestbook/add">글작성</a><br/>
	</td>
	<td style="width:600px;height:400px"><center><jsp:include page="${path }"/></center></td>
</tr>
<tr><td colspan="2" style="text-align:center"><%@ include file="/test/footer.jsp" %></td></tr>
</table>
</body>
</html>