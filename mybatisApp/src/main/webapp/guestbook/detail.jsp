<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = (num) => {
	location.href = "${pageContext.request.contextPath }/guestbook/del?num=" + num;
}
</script>
</head>
<body>
<h3>���� ������</h3>
<form action="${pageContext.request.contextPath }/guestbook/detail?num=${g.num }" method="post">
<table border="1">
<tr><th>�۹�ȣ</th><td>${g.num }</td></tr>
<tr><th>�ۼ���</th><td>${g.writer }</td></tr>
<tr><th>�ۼ���</th><td>${g.wdate }</td></tr>
<tr><th>����</th><td><textarea name="content" rows="5" cols="40">${g.content }</textarea></td></tr>
<tr><th>����</th>
	<td>
		<input type="submit" value="����">
		<input type="button" value="����" onclick="del(${g.num })">
	</td>
</tr>
</table>
</form>
</body>
</html>