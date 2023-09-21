<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//비동기 요청 객체 생성
let req = new XMLHttpRequest();

//요청에 대한 응답이 오면 자동 호출될 함수 등록
req.onload = function(){
	//alert(req.responseText);//responseText: 이 속성에 받은 응답이 있음
	document.getElementById("res").innerHTML = req.responseText;
}

const a = () => {
	let name = document.getElementById("name").value;
	//요청 설정
	req.open("get", "${pageContext.request.contextPath}/Test1?name="+name);
	//요청전송
	req.send();
}

const b = () => {
	let name = document.getElementById("name").value;
	let param = "name="+name;
	
	//요청 설정
	req.open("post", "${pageContext.request.contextPath}/Test1");
	//폼 데이터 enctype 지정
	req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	
	//요청전송
	req.send(param);
}
</script>
</head>
<body>
name:<input type="text" id="name">
<input type="button" value="get전송" onclick="a()">
<input type="button" value="post전송" onclick="b()"><br/>
<div id="res"></div>
</body>
</html>