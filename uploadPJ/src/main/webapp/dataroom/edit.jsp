<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
const plus_cnt = (num, cnt,path) =>{
	let cnt2 = cnt + 1;
	location.href ="${pageContext.request.contextPath }/dataroom/download?num="+num+"&cnt="+cnt2+"&fname="+path;
	
}
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

const cancel = (num, title,content) => {
	let title_td = document.getElementById("title_"+num);
	title_td.innerHTML = title;
	let cont_td = document.getElementById("cont_"+num);
	cont_td.innerHTML = content;
}

const del = (num) => {
	let flag = confirm(num+"번 글을 삭제 하겠습니까?");
	if(flag){
		location.href="${pageContext.request.contextPath }/dataroom/del?num="+num;
	}else{
		alert("삭제 취소되었습니다.");
	}
	
}
</script>

</head>
<body>
	<form action="${pageContext.request.contextPath }/dataroom/edit" method="post" id="f" name="f" style="display: none">
		<input type="hidden" name="num">
	</form>

<h3>상세페이지</h3>
<table border = "1">
<tr>  <th>글번호</th> <td>${dr.num }</td>  </tr>
<tr>  <th>제목</th> <td id="title_${dr.num }">${dr.title }</td>  </tr>
<tr>  <th>내용</th> <td id="cont_${dr.num }" style="width : 300px; height:200px;">${dr.content }</td>  </tr>
<tr>  <th>작성자</th> <td>${dr.writer }</td>  </tr>
<tr>  <th>작성일</th> <td>${dr.wdate }</td>  </tr>
<tr>  <th>파일명</th> <td>${dr.path }<input type="button" value="다운로드" onclick="plus_cnt(${dr.num},${dr.cnt },${dr.path })">(${dr.cnt })</td>  </tr>
<tr>  <th>편집</th> <td><input type="button" value="수정" onclick="edit(${dr.num})"> <input type="button" value="삭제"onclick="del(${dr.num})"> </td>

</table>
</body>
</html>