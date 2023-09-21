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
	//alert(req.responseText);//responseText: 이 속성에 받은 응답이 있음
	let res = req.responseText;
	let obj = JSON.parse(res);//받은 응답을 json으로 파싱
	let txt = "";
	txt += "id: " + obj.id + "<br/>";
	txt += "age: " + obj.age + "<br/>";
	txt += "flag: " + obj.flag + "<br/>";
	txt += "wdate: " + obj.wdate + "<br/>";
	document.getElementById("val").innerHTML = txt;
}

//시작하자마자
window.onload = () => {
	req.open("get", "${pageContext.request.contextPath}/Test2");
	req.send();
}
</script>
</head>
<body>
<h3 id="val"></h3>
</body>
</html>