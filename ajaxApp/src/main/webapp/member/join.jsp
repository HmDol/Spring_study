<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
let req = new XMLHttpRequest();
req.onload = () => {
	let obj = JSON.parse(req.responseText); //responseText: {"flag":true}
	let txt = "중복된 아이디";
	if(obj.flag){
		txt = "사용가능한 아이디";
	}
	document.getElementById("res").innerHTML = txt;
}
const a = () => {
	let id = f.id.value;
	req.open("get", "${pageContext.request.contextPath}/member/idcheck?id="+id);
	req.send();
}
</script>
</head>
<body>
<h3>회원가입</h3>
<form action="${pageContext.request.contextPath }/member/join" method="post" name="f">
id:<input type="text" name="id">
<input type="button" value="중복체크" onclick="a()"><span id="res"></span><br/>
pwd:<input type="password" name="pwd"><br/>
name:<input type="text" name="name"><br/>
email:<input type="email" name="email"><br/>
<input type="submit" value="가입">
</form>
</body>
</html>