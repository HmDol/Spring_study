<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
const edit =(num)=>{
	let title_td = document.getElementById("title_"+num);
	let old_title = title_td.innerHTML; // 수정전 제목을 변수에 저장
	let cont_td = document.getElementById("cont_"+num);
	let old_cont = cont_td.innerHTML; // 수정전 content를 변수에 저장
	let txt1="<input type='text' name='title' id='ntitle_"+num+"' value='"+old_title+"'>";
	let txt2="<textarea rows='5' cols='20' id='ncont_"+num+"'>" + old_cont + "</textarea>";
	title_td.innerHTML = txt1;
	cont_td.innerHTML = txt2;

}
</script>
</head>
<body>
<center>
<h3>이미지 보드 목록</h3>

<c:forEach var="i" items="${list }">
<table border="1">
<tr><th>글번호</th><td>${i.num}</td></tr>
<tr><th>작성자</th><td>${i.writer }</td></tr>
<tr><th>작성일</th><td>${i.wdate }</td></tr>
<tr><th>title</th><td id="title_${i.num}">${i.title }</td></tr>
<tr><th>사진</th><td><img alt="안됨" src="${i.path }" style="width:150px; height:150px;"></td></tr>
<tr><th>content</th><td id="cont_${i.num }" style="width:200px; height:70px">${i.content }</td></tr>
<c:if test="${sessionScope.loginId == i.writer }">
<tr><th>수정</th><td><input type="button" value="수정" onclick="edit(${i.num})">
<input type="button" value="삭제"></td></tr>
</c:if>
</table>
<hr>
</c:forEach>
</center>
</body>
</html>