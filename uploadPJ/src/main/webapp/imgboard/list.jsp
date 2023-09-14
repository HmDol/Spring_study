<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
body {
	text-align: center;
}

table {
	text-align: center;
}
</style>
<script>
const edit =(num)=>{
	let title_td = document.getElementById("title_"+num);
	let old_title = title_td.innerHTML; // 수정전 제목을 변수에 저장
	let cont_td = document.getElementById("cont_"+num);
	let old_cont = cont_td.innerHTML; // 수정전 content를 변수에 저장
	let txt1="<input type='text' name='title' id='ntitle_"+num+"' value='"+old_title+"'>";
	let txt2="<textarea rows='5' name='content' cols='20' id='ncont_"+num+"'>" + old_cont + "</textarea>";
	txt2 += "<input type='button' value='수정취소' onclick=cancel("+num+",'"+old_title+"','"+old_cont+"')>";
	txt2 += "<input type='button' value='수정완료' onclick=edit2("+num+")>";
	title_td.innerHTML = txt1;
	cont_td.innerHTML = txt2;

}
const edit_rep = (num) => {
	//document.getElementById("bt_del").style.invisible = "hidden";
	//document.getElementById("bt_edit").style.invisible = "hidden";
	//let buttonbox = document.getElementById("buttonbox");
	let cont_td = document.getElementById("rep_cont"+num);
	old_cont = cont_td.innerHTML;
	let txt2="<textarea rows='2' name='repcont' cols='10' id='nrepcont_"+num+"'>" + old_cont + "</textarea>";
	//txt1 = "<input type='button' id ='bt_cancle' value='취소' onclick=cancel_rep("+num+",'"+old_cont+"')>  ";
	//txt1 += "<input type='button' id ='bt_comple' value='완료' onclick=edit_rep2("+num+")>";
	txt2 += "<input type='button' value='취소' onclick=cancel_rep("+num+",'"+old_cont+"')>";
	txt2 += "<input type='button' value='완료' onclick=edit_rep2("+num+")>";
	cont_td.innerHTML = txt2;
	//buttonbox.innerHTML = txt1;
	
}
const edit2 = (num) =>{
	let title_in = document.getElementById("ntitle_"+num);//수정 제목 입력 박스
	let cont_in = document.getElementById("ncont_"+num);//수정 내용 입력 박스
	let form = document.getElementById("f");//수정폼 요소
	
	//수정폼의 자식으로 제목박스와 내용박스 추가
	form.appendChild(title_in);
	form.appendChild(cont_in);
	
	//현재 글 번호를 폼안의 히든 객체에 value로 저장
	f.num.value = num;
	f.submit();
	
}

const edit_rep2 = (num) => {
	let cont_in = document.getElementById("nrepcont_"+num);//수정 내용 입력 박스
	let form = document.getElementById("f2");//수정폼 요소
	form.appendChild(cont_in);
	
	f2.num.value = num;
	f2.submit();
}


const cancel = (num, title,content) => {
	let title_td = document.getElementById("title_"+num);
	title_td.innerHTML = title;
	let cont_td = document.getElementById("cont_"+num);
	cont_td.innerHTML = content;
}

const cancel_rep = (num, content) => {
	let cont_td = document.getElementById("rep_cont"+num);
	cont_td.innerHTML = content;
	//document.getElementById("bt_del").style.invisible = "visible";
	//document.getElementById("bt_edit").style.invisible = "visible";
	//document.getElementById("bt_cancle").style.display = "hidden";
	//document.getElementById("bt_comple").style.display = "hidden";
}

const del = (num) => {
	let flag = confirm(num+"번 글을 삭제 하겠습니까?");
	if(flag){
		location.href="${pageContext.request.contextPath }/imgboard/edit?num="+num;
	}else{
		alert("삭제 취소되었습니다.");
	}
	
}

const del_rep = (num) => {
	let flag = confirm(num+"번 댓글을 삭제 하겠습니까?");
	if(flag){
		location.href="${pageContext.request.contextPath }/imgrep/edit?num="+num;
	}else{
		alert("삭제 취소되었습니다.");
	}
	
}
</script>
</head>
<body>
	<form action="${pageContext.request.contextPath }/imgboard/edit"
		method="post" id="f" name="f" style="display: none">
		<input type="hidden" name="num">
	</form>
	<form action="${pageContext.request.contextPath }/imgrep/edit" method="post" id="f2" name="f2" style="display: none">
		<input type="hidden" name="num">
	</form>

	<h3>이미지 보드 목록</h3>

	<c:forEach var="i" items="${list }">
		<table border="1">
			<tr>
				<th>글번호</th>
				<td>${i.num}</td>
			</tr>
			<tr>
				<th>작성자</th>
				<td>${i.writer }</td>
			</tr>
			<tr>
				<th>작성일</th>
				<td>${i.wdate }</td>
			</tr>
			<tr>
				<th>title</th>
				<td id="title_${i.num}">${i.title }</td>
			</tr>
			<tr>
				<th>사진</th>
				<td><img alt="안됨" src="${i.path }"
					style="width: 150px; height: 150px;"></td>
			</tr>
			<tr>
				<th>content</th>
				<td id="cont_${i.num }" style="width: 450px; height: 70px">${i.content }</td>
			</tr>
			<c:if test="${sessionScope.loginId == i.writer }">
				<tr>
					<th>수정</th>
					<td><input type="button" value="수정" onclick="edit(${i.num})">
						<input type="button" value="삭제" onclick="del(${i.num})"></td>
				</tr>
			</c:if>

			<tr>
				<th>댓글</th>

				<td>
					<form action="${pageContext.request.contextPath }/addRepController"
						method="post">
						<input type="text" name="content"> 
						<input type="hidden" name="parentnum" value="${i.num }"> 
						<input type="hidden" name="writer" value="${sessionScope.loginId }"> 
						<input type="submit" value="작성">
					</form>

				</td>

			</tr>
			<tr>
				<th>댓글 목록</th>
				<td id="replist_${i.num }">
				<c:if test="${not empty i.reps }">
					<table>
						<tr>
							<th>ID</th><th>내용</th><th>작성일</th>
						</tr>
						<c:forEach var="r" items="${i.reps }">
							<tr>
								<td>${r.writer }: </td>
								<td style="width:220px;" id = "rep_cont${r.num }">${r.content }</td>
								<td>${r.wdate }</td>
								<td id ="buttonbox">
								<input type ="button" id="bt_edit"value="수정" onclick="edit_rep(${r.num})">
								<input type ="button" id="bt_del" value="삭제" onclick="del_rep(${r.num})">
								</td>
							</tr>
						</c:forEach>
					</table>
				</c:if>
				</td>

			</tr>
		</table>
		<hr>
	</c:forEach>
</body>
</html>