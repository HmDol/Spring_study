<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>ȸ������</h3>
<form action="${pageContext.request.contextPath }/MemEditController" method="post">
id:<input type="text" name="id" value="${m.id }" readonly><br/>
pwd:<input type="text" name="pwd" value="${m.pwd }"><br/>
name:<input type="text" name="name" value="${m.name }"><br/>
email:<input type="text" name="email" value="${m.email }" readonly><br/>
<input type="submit" value="����">
<a href="${pageContext.request.contextPath }/member/menu.jsp">�޴���</a>
</form>
</body>
</html>