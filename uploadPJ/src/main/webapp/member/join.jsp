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
		alert("아이디 중복 체크 하시오");
		return;
	}
	if(f.pwd.value==''){
		alret("패스워드 입력바람");
	}
	if(f.name.value==''){
		alret("이름 입력바람");
	}
	if(f.email.value==''){
		alret("이메일 입력바람");
	}
	f.submit();
}
</script>
</head>
<body>
<h3>회원가입</h3>
<form action="${pageContext.request.contextPath }/JoinController" method="post" name="f">
<input type="hidden" name="flag" value="false">
id:<input type="text" name="id"> <input type="button" value="중복체크" onclick="a()"><br/>
pwd:<input type="password" name="pwd"><br/>
name:<input type="text" name="name"><br/>
email:<input type="email" name="email"><br/>
<input type="submit" value="가입" onclick="b()">
</form>
</body>
</html>