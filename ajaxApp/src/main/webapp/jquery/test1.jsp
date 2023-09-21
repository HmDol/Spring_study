<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEST1</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
$(document).ready(function(){
	$("#t1").val("안녕하세요");
	$("#b1").click(function(){
		let name = $("#t1").val();
		$("#d1").text("입력내용: "+name);
	});
});

$(document).ready(function(){
	let txta = $("#a").text();
	let txtb = "";
	
	//each(): 리스트 길이만큼 반복해주는 함수 
	$(".b").each(function(){
		//$(this): 반복 중 선택된 요소
		txtb += $(this).text() + " / ";
	});
	alert("txta : " + txta);
	alert("txtb : " + txtb);
	
	let txth3 = "";
	$("h3").each(function(idx,item){//idx:루프인덱스, item:요소
		txth3 += idx+". "+$(item).text()+"\n";
	});
	alert("txth3\n"+txth3)
	
	$("div").html("111<br/>222<br>333<br>");	//html()은 태그도 처리해준다
});

</script>


</head>
<body>
name : <input type="text" id="t1">
<input type="button" id="b1" value="클릭">
<div id="d1"></div>


<h3 id="a">aaa</h3>
<h3 class="b">bbb</h3>
<h3 class="b">ccc</h3>
<h3>ddd</h3>

</body>
</html>