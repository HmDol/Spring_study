<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>${sessionScope.loginId }�� �α��� ����</h1>
<a href="/app1/MemListController">ȸ�����</a>
<a href="/app1/MemEditController?id=${sessionScope.loginId }">������Ȯ��</a>
<a href="/app1/ProListController">��ǰ���</a> 
<a href="/app1/BoardPrintController">�Խ��� ���</a> <br>
<a href="/app1/Logout">�α׾ƿ�</a>
</body>
</html>