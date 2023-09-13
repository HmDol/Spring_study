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
	<table border="1">
		<tr>
			<td colspan="2" style="text-align: center">
				<h3>�ƿ���Ÿ�׷�</h3>
				<c:if test="${sessionScope.loginId == null }">
					<a style="width:70px" href="/uploadPJ/LoginController">�α���</a>
					<a style="width:70px" href="/uploadPJ/JoinController">ȸ������</a>
				</c:if>
				<c:if test="${sessionScope.loginId != null}">
					<a style="width:70px" href="/uploadPJ/MemEditController?id=${sessionScope.loginId }">������</a>
					<a style="width:70px" href="/uploadPJ/Logout">�α׾ƿ�</a>
					<a style="width:70px" href="/uploadPJ/MemDelController?id=${sessionScope.loginId }">Ż��</a>
				</c:if>
											
			</td>
		</tr>
		<tr>
			<td style="width: 200px; height: 400px; text-align: center">
				<c:if test="${sessionScope.loginId != null}">
					<h4>�޴�</h4> 
					<a href="${pageContext.request.contextPath }/addImgController">���ۼ�</a><br/>
					<a href="${pageContext.request.contextPath }/listImgController">�۸��</a><br/>
				</c:if>
			</td>
			<td style="width: 600px; height: 400px">

					<c:if test="${view != null}">
						<jsp:include page="${view }"/>
					</c:if>

			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center"></td>
		</tr>
	</table>
</body>
</html>