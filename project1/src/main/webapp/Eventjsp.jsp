<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
window.onload = () => {
//초기화
	//alert('윈도우 로드됨');
}
const a = () => {
	alert("당신의 이름은 "+f.t1.value+"입니다.");
}
const b = () => {
	//alert("결제금액은 " + (f.t2.value * f.t3.value) + "원 입니다.");
	let span = document.getElementById("res");
	span.innerHTML = (f.t2.value * f.t3.value) + "원 입니다.";
}

const c = () =>{
	f.t1.value="";
}

const d = () => {
	let d1 = document.getElementById("d1");
	d1.style.backgroundColor = "orange";
}

const e = () =>{
	let d1 = document.getElementById("d1");
	d1.style.backgroundColor = "";
}

const func = () => {
	let len = f.t4.value.length;
	if(len>=10){
		alert("10글자 내로 자성하시오");
		f.t4.value = f.t4.value.subString(0,9);
	}
}
</script>

<body>
<form action="" name="f">
<input type="text" name="t1" value="이름입력하시오" onfocus="c()">
<input type="button" nmae="b1" value="이름확인" onclick="a()"><br>
가격: <input type="text" name="t2" value="1000" readonly>
주문수량: <input type="number" name="t3" onchange="b()" ><br>
결제금액 : <span id="res"></span><br>
<div id="d1" style="width:200px; height:200px; border:1px solid black;" onmouseover="d()" onmouseout="e()">
마우스를 올리세요
가입인사(10글자 내로): <textarea row="3" cols="20" onkeydown="func()" name ="t4"></textarea>
</div>
</form>

</body>
</html>