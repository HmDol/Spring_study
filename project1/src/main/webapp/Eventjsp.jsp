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
//�ʱ�ȭ
	//alert('������ �ε��');
}
const a = () => {
	alert("����� �̸��� "+f.t1.value+"�Դϴ�.");
}
const b = () => {
	//alert("�����ݾ��� " + (f.t2.value * f.t3.value) + "�� �Դϴ�.");
	let span = document.getElementById("res");
	span.innerHTML = (f.t2.value * f.t3.value) + "�� �Դϴ�.";
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
		alert("10���� ���� �ڼ��Ͻÿ�");
		f.t4.value = f.t4.value.subString(0,9);
	}
}
</script>

<body>
<form action="" name="f">
<input type="text" name="t1" value="�̸��Է��Ͻÿ�" onfocus="c()">
<input type="button" nmae="b1" value="�̸�Ȯ��" onclick="a()"><br>
����: <input type="text" name="t2" value="1000" readonly>
�ֹ�����: <input type="number" name="t3" onchange="b()" ><br>
�����ݾ� : <span id="res"></span><br>
<div id="d1" style="width:200px; height:200px; border:1px solid black;" onmouseover="d()" onmouseout="e()">
���콺�� �ø�����
�����λ�(10���� ����): <textarea row="3" cols="20" onkeydown="func()" name ="t4"></textarea>
</div>
</form>

</body>
</html>