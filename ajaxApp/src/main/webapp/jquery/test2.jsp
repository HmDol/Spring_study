<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
$(document).ready(function(){
	$("h2").click(function(){
		$(this).hide();//ȭ�鿡 �Ⱥ���
	})
	//ù��° �Լ��� mouseover, �ι�°�� mouseout
	$("#a").hover(function(){}, function(){});
	
})
</script>
</head>

<body>
<h2>aaa</h2>
<h2>bbb</h2>
<h2>ccc</h2>
<h2>ddd</h2>

</body>
</html>