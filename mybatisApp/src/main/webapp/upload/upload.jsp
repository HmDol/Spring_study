<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>파일 업로드</h3>
<form action="${pageContext.request.contextPath }/upload" method="post" enctype="multipart/form-data">
	제목 : <input type="text" name="title"><br>
	파일 : <input type="file" name="f"><br>
	<input type="submit" value="업로드"> 
</form>
</body>
</html>