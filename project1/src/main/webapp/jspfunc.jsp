<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script>
const gugu = (dan)=> {
	for(i=1;i<10;i++){
		document.write(dan+" * " + i + " = " + (dan*i) + "<br>"	);
	}
}


const add = (a,b) => { // �Ķ� Ÿ���� ��� ����
	let v2 ="��������";
	document.write("v2:"+v2);
	return a+b;
}
//document.write("v2:"+v2);
//�Լ� ȣ��
gugu(3);
document.write(add(100,23)+"<br>");
document.write(add("aaa","bbb"));

</script>
<body>

</body>
</html>