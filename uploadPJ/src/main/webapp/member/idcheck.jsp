<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
window.onload=()=>{
	f.id.value = opener.document.f.id.value;
}

const b = () => {
	opener.document.f.id.value = "${id}";
	opener.document.f.flag.value="true";
	window.close();
	
}
</script>

</head>
<body>
<h3>아이디 중복 체크</h3>
	<form action="${pageContext.request.contextPath }/IdCheck" method="post" name="f">
		id <input type="text" name="id"> <input type="submit" value="중복체크">
	</form>

	<c:if test="${flag != null }">
		<script type="text/javascript">
if(${flag}){
	document.write("사용가능한 아이디 <input type='button' value='아이디 사용' onclick='b()'>");
}else{
	document.write("중복된 아이디");
}
</script>
	</c:if>
</body>
</html>