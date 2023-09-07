<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const del = (id) =>{
	//alert(id);
	let flag = confirm(id + "님을 삭제하시겠습니까?");
	if(flag){
		alert(id + "님을 삭제합니다.");
		//js에서 페이지 이동에 쓰이는 것
		location.href="/app1/MemDelController?id="+id;
	}else{
		alert("삭제가 취소 되었습니다.");
	}
}
</script>
</head>
<body>
<h3>회원목록</h3>
<ul>
<c:forEach var="m" items="${list }">
<li>
	<a href="/app1/MemEditController?id=${m.id }&name=${m.name}&email=${m.email}&pwd=${m.pwd}" >${m.id }</a> / ${m.name }
	<input type="button" value="삭제" onclick="del('${m.id}')">
	
</li> 
</c:forEach>
</ul>
</body>
</html>