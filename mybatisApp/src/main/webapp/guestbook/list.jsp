<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const a = (num, pwd) => {
	let pwd2 = prompt("�� ��й�ȣ �Է�");
	if(pwd == pwd2){
		location.href="${pageContext.request.contextPath }/guestbook/detail?num=" + num;
	}else{
		alert("�� ��й�ȣ ����ġ");
	}
	
}
</script>
</head>
<body>
<h3>���� ���</h3>
<c:forEach var="g" items="${list }">
<table border="1">
<tr><th>�۹�ȣ</th><td>${g.num }</td></tr>
<tr><th>�ۼ���</th><td>${g.writer }</td></tr>
<tr><th>�ۼ���</th><td>${g.wdate }</td></tr>
<tr><th>����</th><td><textarea name="content" rows="5" cols="40" readonly>${g.content }</textarea></td></tr>
<tr><th>����</th><td><input type="button" value="����" onclick="a(${g.num}, '${g.pwd}')"></td></tr>
</table>
</c:forEach>
<h3>
<c:forEach var="p" begin="1" end="${cnt }">
<a href="${pageContext.request.contextPath }/guestbook/list?page=${p }">${p }</a>
</c:forEach>
</h3>
</body>
</html>






