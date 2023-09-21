<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
	<td colspan="2" style="text-align:center">
	<center>
		<h3>아웃스타그램</h3>
		${msg }
		<table>
		<tr>
		<c:if test="${sessionScope.loginId == null }">
			<td style="width:70px">
				<a href="${pageContext.request.contextPath }/member/login.do">로그인</a>
			</td>
			<td style="width:70px">
				<a href="${pageContext.request.contextPath }/member/join.do">회원가입</a>
			</td>
		</c:if>
		<c:if test="${sessionScope.loginId != null }">
			<td style="width:70px"><a href="${pageContext.request.contextPath }/member/edit.do?id=${sessionScope.loginId}">내정보</a></td>
			<td style="width:70px"><a href="${pageContext.request.contextPath }/member/out.do">로그아웃</a></td>
			<td style="width:70px">
				<form action="${pageContext.request.contextPath }/member/out.do?id=${sessionScope.loginId}" method="post">
					<button>탈퇴</button>
				</form>
			</td>
		</c:if>
		</tr>
		</table>
	</center>
	</td>
</tr>
<tr>
	<td style="width:200px;height:400px;text-align:center">
		<c:if test="${sessionScope.type == 1 }">
			<%@ include file="menu1.jsp" %>
		</c:if>
		<c:if test="${sessionScope.type == 2 }">
			<%@ include file="menu2.jsp" %>
		</c:if>
	</td>
	<td style="width:600px;height:400px">
		<center>
			<c:if test="${view != null }">
				<jsp:include page="${view }"/> 
			</c:if>
		</center>
	</td>
</tr>
<tr><td colspan="2"  style="text-align:center"><%@ include file="footer.jsp" %></td></tr>
</table>
</body>
</html>