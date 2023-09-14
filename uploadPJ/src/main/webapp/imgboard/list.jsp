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
	let old_title = title_td.innerHTML; // ������ ������ ������ ����
	let cont_td = document.getElementById("cont_"+num);
	let old_cont = cont_td.innerHTML; // ������ content�� ������ ����
	let txt1="<input type='text' name='title' id='ntitle_"+num+"' value='"+old_title+"'>";
	let txt2="<textarea rows='5' name='content' cols='20' id='ncont_"+num+"'>" + old_cont + "</textarea>";
	txt2 += "<input type='button' value='�������' onclick=cancel("+num+",'"+old_title+"','"+old_cont+"')>";
	txt2 += "<input type='button' value='�����Ϸ�' onclick=edit2("+num+")>";
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
	//txt1 = "<input type='button' id ='bt_cancle' value='���' onclick=cancel_rep("+num+",'"+old_cont+"')>  ";
	//txt1 += "<input type='button' id ='bt_comple' value='�Ϸ�' onclick=edit_rep2("+num+")>";
	txt2 += "<input type='button' value='���' onclick=cancel_rep("+num+",'"+old_cont+"')>";
	txt2 += "<input type='button' value='�Ϸ�' onclick=edit_rep2("+num+")>";
	cont_td.innerHTML = txt2;
	//buttonbox.innerHTML = txt1;
	
}
const edit2 = (num) =>{
	let title_in = document.getElementById("ntitle_"+num);//���� ���� �Է� �ڽ�
	let cont_in = document.getElementById("ncont_"+num);//���� ���� �Է� �ڽ�
	let form = document.getElementById("f");//������ ���
	
	//�������� �ڽ����� ����ڽ��� ����ڽ� �߰�
	form.appendChild(title_in);
	form.appendChild(cont_in);
	
	//���� �� ��ȣ�� ������ ���� ��ü�� value�� ����
	f.num.value = num;
	f.submit();
	
}

const edit_rep2 = (num) => {
	let cont_in = document.getElementById("nrepcont_"+num);//���� ���� �Է� �ڽ�
	let form = document.getElementById("f2");//������ ���
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
	let flag = confirm(num+"�� ���� ���� �ϰڽ��ϱ�?");
	if(flag){
		location.href="${pageContext.request.contextPath }/imgboard/edit?num="+num;
	}else{
		alert("���� ��ҵǾ����ϴ�.");
	}
	
}

const del_rep = (num) => {
	let flag = confirm(num+"�� ����� ���� �ϰڽ��ϱ�?");
	if(flag){
		location.href="${pageContext.request.contextPath }/imgrep/edit?num="+num;
	}else{
		alert("���� ��ҵǾ����ϴ�.");
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

	<h3>�̹��� ���� ���</h3>

	<c:forEach var="i" items="${list }">
		<table border="1">
			<tr>
				<th>�۹�ȣ</th>
				<td>${i.num}</td>
			</tr>
			<tr>
				<th>�ۼ���</th>
				<td>${i.writer }</td>
			</tr>
			<tr>
				<th>�ۼ���</th>
				<td>${i.wdate }</td>
			</tr>
			<tr>
				<th>title</th>
				<td id="title_${i.num}">${i.title }</td>
			</tr>
			<tr>
				<th>����</th>
				<td><img alt="�ȵ�" src="${i.path }"
					style="width: 150px; height: 150px;"></td>
			</tr>
			<tr>
				<th>content</th>
				<td id="cont_${i.num }" style="width: 450px; height: 70px">${i.content }</td>
			</tr>
			<c:if test="${sessionScope.loginId == i.writer }">
				<tr>
					<th>����</th>
					<td><input type="button" value="����" onclick="edit(${i.num})">
						<input type="button" value="����" onclick="del(${i.num})"></td>
				</tr>
			</c:if>

			<tr>
				<th>���</th>

				<td>
					<form action="${pageContext.request.contextPath }/addRepController"
						method="post">
						<input type="text" name="content"> 
						<input type="hidden" name="parentnum" value="${i.num }"> 
						<input type="hidden" name="writer" value="${sessionScope.loginId }"> 
						<input type="submit" value="�ۼ�">
					</form>

				</td>

			</tr>
			<tr>
				<th>��� ���</th>
				<td id="replist_${i.num }">
				<c:if test="${not empty i.reps }">
					<table>
						<tr>
							<th>ID</th><th>����</th><th>�ۼ���</th>
						</tr>
						<c:forEach var="r" items="${i.reps }">
							<tr>
								<td>${r.writer }: </td>
								<td style="width:220px;" id = "rep_cont${r.num }">${r.content }</td>
								<td>${r.wdate }</td>
								<td id ="buttonbox">
								<input type ="button" id="bt_edit"value="����" onclick="edit_rep(${r.num})">
								<input type ="button" id="bt_del" value="����" onclick="del_rep(${r.num})">
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