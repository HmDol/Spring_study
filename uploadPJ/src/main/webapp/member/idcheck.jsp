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
<h3>���̵� �ߺ� üũ</h3>
	<form action="${pageContext.request.contextPath }/IdCheck" method="post" name="f">
		id <input type="text" name="id"> <input type="submit" value="�ߺ�üũ">
	</form>

	<c:if test="${flag != null }">
		<script type="text/javascript">
if(${flag}){
	document.write("��밡���� ���̵� <input type='button' value='���̵� ���' onclick='b()'>");
}else{
	document.write("�ߺ��� ���̵�");
}
</script>
	</c:if>
</body>
</html>