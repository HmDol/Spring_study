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
<h3>��ǰ ���</h3>
    ��ǰ��ȣ  /  ��ǰ�̸� /  ��ǰ����
<ul>
<c:forEach var="p" items="${list }">
	
<li>
	${p.num } / ${p.name } / ${p.amount }
</li> 
</c:forEach>
</ul>

<a href ="/app1/ProdAddController">��ǰ �߰�</a>

</body>
</html>