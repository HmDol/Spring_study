<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
table{
text-align : center;
}
th{
width : 150px;
}
</style>

</head>
<body>
<h3>�ڷ� ���</h3>

<table border="1">
<tr> <th>�ڷ� ��ȣ</th> <th>����</th> <th>�ۼ���</th>  </tr>


 
<c:forEach var="d" items="${list }">
<tr> <td>${d.num }</td> <td><a href="${pageContext.request.contextPath }/dataroom/edit?num=${d.num}">${d.title }</a></td> <td>${d.writer }</td>  </tr>
</c:forEach>

</table>
</body>
</html>