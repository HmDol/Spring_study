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
<table border="1">
<tr> <th>�۹�ȣ</th> <th>�̸�</th> <th>����</th> <th>�Ǹ���</th> </tr>
<c:forEach var="sp" items="${list }">
	<tr>
		<td>${sp.num }</td>
		<td>
			<a href="${pageContext.request.contextPath }/shopprod/edit.do?num=${sp.num}">${sp.name }</a>
		</td>
		<td>${sp.price }</td>
		<td>${sp.seller }</td>
	</tr>
</c:forEach>
</table>
</body>
</html>