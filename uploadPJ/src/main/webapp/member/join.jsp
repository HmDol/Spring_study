<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
let flag = false;

const a =() => {
	let win = window.open("${pageContext.request.contextPath }/member/idcheck.jsp","win", "width=300,heigth=300");

}
const b =() =>{
	if(f.flag.value=='false'){
		alert("���̵� �ߺ� üũ �Ͻÿ�");
		return;
	}
	if(f.pwd.value==''){
		alret("�н����� �Է¹ٶ�");
	}
	if(f.name.value==''){
		alret("�̸� �Է¹ٶ�");
	}
	if(f.email.value==''){
		alret("�̸��� �Է¹ٶ�");
	}
	f.submit();
}
</script>
</head>
<body>
<h3>ȸ������</h3>
<form action="${pageContext.request.contextPath }/JoinController" method="post" name="f">
<input type="hidden" name="flag" value="false">
id:<input type="text" name="id"> <input type="button" value="�ߺ�üũ" onclick="a()"><br/>
pwd:<input type="password" name="pwd"><br/>
name:<input type="text" name="name"><br/>
email:<input type="email" name="email"><br/>
<input type="submit" value="����" onclick="b()">
</form>
</body>
</html>