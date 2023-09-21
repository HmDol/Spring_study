<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
//비동기 요청 객체 생성
let req = new XMLHttpRequest();

//요청에 대한 응답이 오면 자동 호출될 함수 등록
req.onload = () => {
	let board = JSON.parse(req.responseText);
	let txt = "";
	txt += "num: "+board.num+ "<br/>";
	txt += "writer: "+board.writer+ "<br/>";
	txt += "wdate: "+board.wdate+ "<br/>";
	txt += "title: "+board.title+ "<br/>";
	txt += "content: "+board.content+ "<br/>";
	
// 	for(let key in board){
// 		txt += key + ": " + board[key] + "<br/>";
// 	}
	let div = document.getElementById("res");
	div.innerHTML = txt;
	div.style.display = '';
}

const a = (num) => {
	req.open("get", "${pageContext.request.contextPath}/board/getjson?num="+num);
	req.send();
}

const b = () => {
	let div = document.getElementById("res");
	div.style.display = 'none';
}
</script>
</head>
<body>
<div id="res" style="border:1px solid blue;display:none;position:absolute;top:150px;left:200px"></div>
<h3>글목록</h3>
<a href="${pageContext.request.contextPath }/board/add">글작성</a><br/>

<form action="${pageContext.request.contextPath }/board/search" method="post">
<select name="type">
<option value="1">작성자</option>
<option value="2">제목</option>
</select>

<input type="text" name="val">
<input type="submit" value="검색">
</form>

<c:if test="${empty list }"><!-- 리스트 비었으면 true -->
등록된 글이 없다
</c:if>
<c:if test="${not empty list }"><!-- 리스트 안 비었으면 true -->
<table border="1">
<tr><th>글번호</th><th>제목</th><th>작성자</th></tr>
<c:forEach var="b" items="${list }">
	<tr>
		<td>${b.num }</td>
		<td onmouseover="a(${b.num })" onmouseout="b()">
			<a href="${pageContext.request.contextPath }/board/detail?num=${b.num }">${b.title }</a>
		</td>
		<td>${b.writer }</td>
	</tr>
</c:forEach>
</table>
</c:if>
</body>
</html>