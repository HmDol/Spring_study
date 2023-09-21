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
	let res = req.responseXML;//xml 응답 속성
	let arr = res.getElementsByTagName("book");//배열반환
	let txt = "";
	for(let b of arr){
		txt += "title: " + b.getElementsByTagName("title")[0].firstChild.nodeValue + "<br/>";
		txt += "price: " + b.getElementsByTagName("price")[0].firstChild.nodeValue + "<br/>";
		txt += "author: " + b.getElementsByTagName("author")[0].firstChild.nodeValue + "<br/><br/>";
	}
	document.getElementById("res").innerHTML = txt;
}

//시작하자마자
window.onload = () => {
	req.open("get", "${pageContext.request.contextPath}/test/req_xml1.jsp");
	req.send();
}
</script>
</head>
<body>
<div id="res"></div>
</body>
</html>