<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>ȸ������</h3>
	<form atction="/app1/JoinController" method="POST">
		id : <input type="text" name="id"><br> 
		pwd : <input type="password" name="pwd"><br> 
		name : <input type="text" name="name"><br>
	 	email : <input type="email" name="email"><br>
	 	���� : <input type="radio" value="f" name="gen">����
	 	<input type="radio" value="f" name="gen">����<br>
	 	���: <input type= "checkbox" name ="hobby" value="��ȭ">��ȭ
	 	<input type= "checkbox" name ="hobby" value="���">���
	 	<input type= "checkbox" name ="hobby" value="����">����
	 	<input type= "checkbox" name ="hobby" value="Ŭ���̹�">Ŭ���̹�<br>
	 	�г� : <select name="sel">
	 	<option value="1g">1�г�</option>
	 	<option value="2g">2�г�</option>
	 	<option value="3g">3�г�</option>
	 	<option value="4g">4�г�</option>
	 	</select><br>
	 	�����λ� : <textarea name="msg" row="3" col="20"></textarea><br>
	 	<input type="submit" value="����">
	</form>
</body>
</html>