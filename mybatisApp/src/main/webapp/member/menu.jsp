<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>${sessionScope.loginId }�� �α��� ����</h3>
<!-- <a href="/app1/MemListController">ȸ�����</a><br/> -->
<a href="${pageContext.request.contextPath }/MemEditController?id=${sessionScope.loginId }">������Ȯ��</a><br/>
<a href="${pageContext.request.contextPath }/Logout">�α׾ƿ�</a><br/>
<a href="${pageContext.request.contextPath }/board/list">�Խ���</a><br/>
<%-- <a href="${pageContext.request.contextPath }/product/list">��ǰ���</a><br/> --%>
<a href="${pageContext.request.contextPath }/guestbook/view.jsp">����</a><br>


</body>
</html>