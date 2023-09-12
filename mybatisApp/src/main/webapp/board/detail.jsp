<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = () => {
	let flag = confirm("정말 삭제하시겠습니까?");
	if(flag){
		//자바스크립트로 페이지 이동
		location.href = "${pageContext.request.contextPath }/board/del?num=${b.num}";
	}else{
		alert("삭제가 취소되었습니다");
	}
}
</script>
</head>
<body>
<c:if test="${sessionScope.loginId != b.writer }"> <!-- if문 -->
<c:set var="stat">readonly</c:set> <!-- set: 변수 선언 / 변수명:stat / 값:readonly -->
</c:if>
<h3>상세 페이지</h3>
<form action="${pageContext.request.contextPath }/board/detail" method="post">
<table border="1">
<tr><th>글번호</th><td><input type="text" name="num" value="${b.num }" readonly></td></tr>
<tr><th>title</th><td><input type="text" name="title" value="${b.title }" ${stat }></td></tr>
<tr><th>작성자</th><td><input type="text" value="${b.writer }" readonly></td></tr>
<tr><th>작성일</th><td><input type="text" value="${b.w_date }" readonly></td></tr>
<tr><th>content</th><td><textarea rows="10" cols="30" name="content"  ${stat }>${b.content }</textarea></td></tr>
<c:if test="${sessionScope.loginId == b.writer }">
<tr><th>편집</th>
	<td>
		<input type="submit" value="수정">
		<input type="button" value="삭제" onclick="del()">
	</td>
</tr> 
</c:if>
</table>
</form>
<a href="/app1/board/list">목록으로</a>
</body>
</html>