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
req.onload = () => {
	let arr = JSON.parse(req.responseText);
	let txt = "";
	for(let obj of arr){
		for(let key in obj){
			txt += key + ": " + obj[key] + "<br/>";
		}
		txt += "<br/>";
	}
	document.getElementById("res").innerHTML = txt;
}

//시작하자마자
window.onload = () => {
	req.open("get", "${pageContext.request.contextPath}/Test3");
	req.send();
}
</script>
</head>
<body>
<div id="res"></div>
</body>
</html>