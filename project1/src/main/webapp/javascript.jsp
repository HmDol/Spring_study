<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<script>
let arr = [1,2,3];
arr[3] = 4;

for(i=0;i<arr.length;i++){
	document.write(arr[i]+"<br/>");
}

let arr2 = new Array();
arr2[0] = "aaa";
arr2[1] = "bbb";

for(i=0;i<arr2.length;i++){
	document.write(arr2[i]+"<br>");
}

let obj = {"name":"aaa", "age":12, "flag":true};
document.write("name:"+obj.name+"<br>");
document.write("age:"+obj.age+"<br>");
document.write("flag:"+obj.flag+"<br>");

let arr3 = [{"name":"aaa", "age":12, "flag":true},
	{"name":"bbb", "age":22, "flag":false},
	{"name":"ccc", "age":33, "flag":true}];
	document.write("<br><br>");
for(i=0; i<arr3.length;i++){
	document.write("name:"+arr3[i].name+" / ");
	document.write("age:"+arr3[i].age+" / ");
	document.write("flag:"+arr3[i].flag);
	document.write("<br><br>	");
}

//�迭���� ��Ҹ� �ϳ��� �����ִ� ��
for(let s of arr2){ // ���� ������
	document.write(s+"</br>");
}

//��ü���� Ű�� �ϳ��� �����ִ� ��
for(let a in obj){ // �ɹ������� �ϳ��� ������ ��
	document.write(a+": "+ obj[a]+"</br>");
}

document.write("<br>");

for(let o of arr3){
	for(let key in o){
		document.write(key+": "+o[key]+" / ");
		
	}
}

document.write("�׽�Ʈ");

</script>

</body>
</html>