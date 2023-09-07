<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>회원가입</h3>
	<form atction="/app1/JoinController" method="POST">
		id : <input type="text" name="id"><br> 
		pwd : <input type="password" name="pwd"><br> 
		name : <input type="text" name="name"><br>
	 	email : <input type="email" name="email"><br>
	 	성별 : <input type="radio" value="f" name="gen">여성
	 	<input type="radio" value="f" name="gen">남성<br>
	 	취미: <input type= "checkbox" name ="hobby" value="영화">영화
	 	<input type= "checkbox" name ="hobby" value="등산">등산
	 	<input type= "checkbox" name ="hobby" value="낚시">낚시
	 	<input type= "checkbox" name ="hobby" value="클라이밍">클라이밍<br>
	 	학년 : <select name="sel">
	 	<option value="1g">1학년</option>
	 	<option value="2g">2학년</option>
	 	<option value="3g">3학년</option>
	 	<option value="4g">4학년</option>
	 	</select><br>
	 	가입인사 : <textarea name="msg" row="3" col="20"></textarea><br>
	 	<input type="submit" value="가입">
	</form>
</body>
</html>