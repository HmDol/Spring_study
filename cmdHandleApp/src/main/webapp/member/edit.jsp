<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	let type = "판매자";
	if('${m.type}'=='1'){
		type = "구매자";
	}
	$("#type").text(type);
});
</script>
</head>
<body>
<h3>회원정보</h3>
<form action="${pageContext.request.contextPath }/member/edit.do" method="post">
id:<input type="text" name="id" value="${m.id }" readonly><br/>
pwd:<input type="text" name="pwd" value="${m.pwd }"><br/>
name:<input type="text" name="name" value="${m.name }" readonly><br/>
email:<input type="text" name="email" value="${m.email }" readonly><br/>
가입유형:<span id="type"></span><br/>
<input type="submit" value="수정">
<a href="${pageContext.request.contextPath }/index.jsp">취소</a>
</form>
</body>
</html>