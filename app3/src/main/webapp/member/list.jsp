<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = (id) => {
	//alert(id);
	//confirm(): Ȯ��, ��� ��ư�� ���� �˸�â. Ȯ�� Ŭ���� true, ��� Ŭ���� false ��ȯ
	let flag = confirm(id+"���� ��¥ �����Ͻðڽ��ϱ�?");
	if(flag){
		alert(id+"���� �����մϴ�");
		//������ �̵�
		location.href="${pageContext.request.contextPath }/MemDelController?id="+id;
	}else{
		alert("������ ��ҵǾ����ϴ�");
	}
}
</script>
</head>
<body>
<h3>ȸ�����</h3>
<ul>
<c:forEach var="m" items="${list }">
<li>
	<a href="${pageContext.request.contextPath }/MemEditController?id=${m.id }">${m.id }</a> / ${m.name }
	<input type="button" value="����" onclick="del('${m.id }')">
</li>  
</c:forEach>
</ul>
</body>
</html>