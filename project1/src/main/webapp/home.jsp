<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
let cate1 = ["�Ƿ�", "����", "��ǻ��"];
let cate2 = [["������", "������", "�Ƶ���"], ["TV", "��Ź��", "�����"], ["����ũž", "��Ʈ��", "�ֺ����"]];
let cate3 = [[["���ǽ�", "���ǽ�"], ["����", "����", "����"],["����", "���ֺ�"]], 
	[["lg tv", "�Ｚ tv", "�߼� tv"], ["lg ��Ź��", "�Ｚ ��Ź��", "�߼� ��Ź��"], ["lg �����", "�Ｚ �����", "�߼� �����"]],
	[["lg ����ũž", "�Ｚ ����ũž"], ["lg ��Ʈ��", "�Ｚ ��Ʈ��", "�߼� ��Ʈ��"],["������", "����Ŀ", "����ũ"]]];

//������ ���۽� ȣ���
window.onload = () => {
	let txt = "<table style='background-color:gray'>";
	for(i=0;i<cate1.length;i++){
		txt += "<tr><td style='width:100px;height:40px' onmouseover='cf("+i+")'>"+cate1[i]+"</td></tr>";
	}
	txt += "</table>";
	let el = document.getElementById("cate1");
	el.innerHTML = txt;
	//changeImg();
}
const cf = (idx) => {
	//alert(cate2[idx].toString());
	let c = cate2[idx];
	let txt = "<table style='background-color:yellow'>";
	for(i=0;i<c.length;i++){
		txt += "<tr><td style='width:100px;height:40px' onmouseover='cf2("+idx+","+i+")'>"+c[i]+"</td></tr>";
	}
	txt += "</table>";
	let el = document.getElementById("cate2");
	el.innerHTML = txt;
	el.style.display='';
}
const cf2 = (i, j) => {
	//alert(cate3[i][j].toString());
	let c = cate3[i][j];
	let txt = "<table style='background-color:orange'>";
	for(i=0;i<c.length;i++){
		txt += "<tr><td style='width:100px;height:40px' onclick='cf3()'>"+c[i]+"</td></tr>";
	}
	txt += "</table>";
	let el = document.getElementById("cate3");
	el.innerHTML = txt;
	el.style.display='';
}

const cf3 = () =>{
	let txt = "<table>"
	let e = document.getElementById("content");
	for(i=0;i<10;i++){
		txt += "<tr><td style ='width:100%; height:100px; font-size:50px;'>" + i + "��° ��ǰ�Դϴ�.</td></tr>";
	}
	txt += "</table>";
	e.innerHTML = txt;
}
const a = () => {
	let el = document.getElementById("cate1");
	el.style.display='';
}
const b = (type) => {
	let el1 = document.getElementById("cate1");
	let el2 = document.getElementById("cate2");
	let el3 = document.getElementById("cate3");
	
	switch(type){
	case 1:
		el1.style.display='none';
		el2.style.display='none';
		el3.style.display='none';
		break;
	case 2:
		el2.style.display='';
		el3.style.display='';
		break;
	case 3:
		el3.style.display='';
		break;
	}
}
let imgs = ["img2.jpg", "img3.jpg", "img4.jpg", "img5.jpg", "img6.jpg"];
let imgCnt = 0;
const changeImg = () => {
	let el = document.getElementById("imgdiv");
	el.src = "img/"+imgs[imgCnt%imgs.length];
	imgCnt++;
	let id = setTimeout(changeImg, 1000);//param1:ȣ���� �Լ���, param2:�����̽ð�
}
</script>
</head>
<body>
	
		<div id='cate1' style='position: absolute; top: 80px; left: 10px; display: none'
			onmouseover="a()"></div>
		<div id='cate2' style='position: absolute; top: 80px; left: 110px; display: none'
			onmouseover="b(2)"></div>
		<div id='cate3' style='position: absolute; top: 80px; left: 210px; display: none'
			onmouseover="b(3)"></div>
		<table border="1">
			<tr>
				<td style="width: 700px; height: 200px">
					<div style="width: 70px; height: 70px; background-color: blue; color: white"
						onmouseover="a()" onmouseout="b(1)">ī�װ���</div> <img src="" id="imgdiv" style="width: 700px; height: 180px">

				</td>
			</tr>
			<tr>
				<td style="width: 700px; height: 500px">
					<div id = "content">
					</div>
				</td>
			</tr>
		</table>
	
</body>
</html>