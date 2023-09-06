<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="test.css">
<style type="text/css">
div{
	border:1px solid black;
}
#b{
	color:orange;
}

.c1{
	background-color:green;
}

p.c1{
	font-size:20pt;
}

input[type=text]{
	background-color:yellow;
}

input[type=button]{
	color:blue;
}
#img1{
	background-image:url("img/img1.jpg");
	width:300px;
	height:300px;
}
#ddd{
/* 	border-style:double; */
/* 	border-width: 2px; */
/* 	border-color:purple; */
	border: 2px double purple;
}
</style>
</head>
<body style='background-image:url("img/img1.jpg");background-repeat:no-repeat'>
<div id="img1">이미지 배경 테스트</div>
<div style="width:100px;height:100px">adfadfasdf</div>
<div id="ddd">가나다</div>
<h1 class="c1">aaa</h1>
<h1 id="b">bbb</h1>
<h1 class="c1">ccc</h1>
<h1>ddd</h1>
<p class="c1">eee</p>
<input type="text" name="t1"><br/>
<input type="text" name="t2"><br/>
<input type="button" value="버튼"><br/>
</body>
</html>







