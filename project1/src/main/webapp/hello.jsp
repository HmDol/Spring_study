<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="emp.Emp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>emp list</h1>
	<table border="1">
		<tr>
			<td>id</td>
			<td>name</td>
			<td>departmentId</td>
			<td>hireDate</td>
			<td>salary</td>
		</tr>
		<%
		ArrayList<Emp> list = (ArrayList<Emp>) request.getAttribute("list");
		for (int i = 0; i < list.size(); i++) {
		%>
		<tr>
			<td><%=list.get(i).getId()%></td>
			<td><%=list.get(i).getName()%></td>
			<td><%=list.get(i).getDepartmentId()%></td>
			<td><%=list.get(i).getHireDate()%></td>
			<td><%=list.get(i).getSalary()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>
