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
<h3>�۸��</h3>
<a href="${pageContext.request.contextPath }/board/add">���ۼ�</a><br/>

<form action="${pageContext.request.contextPath }/board/search" method="post">
<select name="type">
<option value="1">�ۼ���</option>
<option value="2">����</option>
</select>

<input type="text" name="val">
<input type="submit" value="�˻�">
</form>

<c:if test="${empty list }"><!-- ����Ʈ ������� true -->
��ϵ� ���� ����
</c:if>
<c:if test="${not empty list }"><!-- ����Ʈ �� ������� true -->
<table border="1">
<tr><th>�۹�ȣ</th><th>����</th><th>�ۼ���</th></tr>
<c:forEach var="b" items="${list }">
	<tr>
		<td>${b.num }</td>
		<td><a href="${pageContext.request.contextPath }/board/detail?num=${b.num }">${b.title }</a></td>
		<td>${b.writer }</td>
	</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>