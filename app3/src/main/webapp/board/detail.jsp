<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = () => {
	let flag = confirm("���� �����Ͻðڽ��ϱ�?");
	if(flag){
		//�ڹٽ�ũ��Ʈ�� ������ �̵�
		location.href = "${pageContext.request.contextPath }/board/del?num=${b.num}";
	}else{
		alert("������ ��ҵǾ����ϴ�");
	}
}
</script>
</head>
<body>
<c:if test="${sessionScope.loginId != b.writer }"> <!-- if�� -->
<c:set var="stat">readonly</c:set> <!-- set: ���� ���� / ������:stat / ��:readonly -->
</c:if>
<h3>�� ������</h3>
<form action="${pageContext.request.contextPath }/board/detail" method="post">
<table border="1">
<tr><th>�۹�ȣ</th><td><input type="text" name="num" value="${b.num }" readonly></td></tr>
<tr><th>title</th><td><input type="text" name="title" value="${b.title }" ${stat }></td></tr>
<tr><th>�ۼ���</th><td><input type="text" value="${b.writer }" readonly></td></tr>
<tr><th>�ۼ���</th><td><input type="text" value="${b.w_date }" readonly></td></tr>
<tr><th>content</th><td><textarea rows="10" cols="30" name="content"  ${stat }>${b.content }</textarea></td></tr>
<c:if test="${sessionScope.loginId == b.writer }">
<tr><th>����</th>
	<td>
		<input type="submit" value="����">
		<input type="button" value="����" onclick="del()">
	</td>
</tr> 
</c:if>
</table>
</form>
<a href="/app1/board/list">�������</a>
</body>
</html>