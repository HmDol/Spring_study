<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = (id) =>{
	//alert(id);
	let flag = confirm(id + "���� �����Ͻðڽ��ϱ�?");
	if(flag){
		alert(id + "���� �����մϴ�.");
		//js���� ������ �̵��� ���̴� ��
		location.href="/app1/MemDelController?id="+id;
	}else{
		alert("������ ��� �Ǿ����ϴ�.");
	}
}
</script>
</head>
<body>
<h3>ȸ�����</h3>
<ul>
<c:forEach var="m" items="${list }">
<li>
	<a href="/app1/MemEditController?id=${m.id }&name=${m.name}&email=${m.email}&pwd=${m.pwd}" >${m.id }</a> / ${m.name }
	<input type="button" value="����" onclick="del('${m.id}')">
	
</li> 
</c:forEach>
</ul>
</body>
</html>