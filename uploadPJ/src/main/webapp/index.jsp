<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body style="padding-left : 280px;">
	<table border="1">
		<tr>
			<td colspan="2" style="text-align: center">
				<h3>아웃스타그램</h3>
				<c:if test="${sessionScope.loginId == null }">
					<a style="width:70px" href="/uploadPJ/LoginController">로그인</a>
					<a style="width:70px" href="/uploadPJ/JoinController">회원가입</a>
				</c:if>
				<c:if test="${sessionScope.loginId != null}">
					<a style="width:70px" href="/uploadPJ/MemEditController?id=${sessionScope.loginId }">내정보</a>
					<a style="width:70px" href="/uploadPJ/Logout">로그아웃</a>
					<a style="width:70px" href="/uploadPJ/MemDelController?id=${sessionScope.loginId }">탈퇴</a>
				</c:if>
											
			</td>
		</tr>
		<tr>
			<td style="width: 200px; height: 400px; text-align: center">
				<c:if test="${sessionScope.loginId != null}">
					<h4>게시글</h4> 
					<a href="${pageContext.request.contextPath }/addImgController">글작성</a><br/>
					<a href="${pageContext.request.contextPath }/listImgController">글목록</a><br/>
					
					<h4>자료실</h4>
					<a href="${pageContext.request.contextPath }/dataroom/add">자료작성</a><br/>
					<a href="${pageContext.request.contextPath }/dataroom/list">자료실 목록</a><br/>
					
				</c:if>
			</td>
			<td style="text-align:center; width: 600px; height: 400px">
				<center>
					<c:if test="${view != null}">
						<jsp:include page="${view }"/>
					</c:if>
				</center>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center"></td>
		</tr>
	</table>
</body>
</html>