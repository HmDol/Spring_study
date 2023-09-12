<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = (id) => {
	//alert(id);
	//confirm(): 확인, 취소 버튼을 갖는 알림창. 확인 클릭시 true, 취소 클릭시 false 반환
	let flag = confirm(id+"님을 진짜 삭제하시겠습니까?");
	if(flag){
		alert(id+"님을 삭제합니다");
		//페이지 이동
		location.href="${pageContext.request.contextPath }/MemDelController?id="+id;
	}else{
		alert("삭제가 취소되었습니다");
	}
}
</script>
</head>
<body>
<h3>회원목록</h3>
<ul>
<c:forEach var="m" items="${list }">
<li>
	<a href="${pageContext.request.contextPath }/MemEditController?id=${m.id }">${m.id }</a> / ${m.name }
	<input type="button" value="삭제" onclick="del('${m.id }')">
</li>  
</c:forEach>
</ul>
</body>
</html>