<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const a = (num, pwd) => {
	let pwd2 = prompt("글 비밀번호 입력");
	if(pwd == pwd2){
		location.href="${pageContext.request.contextPath }/guestbook/detail?num=" + num;
	}else{
		alert("글 비밀번호 불일치");
	}
	
}
</script>
</head>
<body>
<h3>방명록 목록</h3>
<c:forEach var="g" items="${list }">
<table border="1">
<tr><th>글번호</th><td>${g.num }</td></tr>
<tr><th>작성자</th><td>${g.writer }</td></tr>
<tr><th>작성일</th><td>${g.wdate }</td></tr>
<tr><th>내용</th><td><textarea name="content" rows="5" cols="40" readonly>${g.content }</textarea></td></tr>
<tr><th>편집</th><td><input type="button" value="편집" onclick="a(${g.num}, '${g.pwd}')"></td></tr>
</table>
</c:forEach>
<h3>
<c:forEach var="p" begin="1" end="${cnt }">
<a href="${pageContext.request.contextPath }/guestbook/list?page=${p }">${p }</a>
</c:forEach>
</h3>
</body>
</html>






