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

const cancel = (num, title,content) => {
	let title_td = document.getElementById("title_"+num);
	title_td.innerHTML = title;
	let cont_td = document.getElementById("cont_"+num);
	cont_td.innerHTML = content;
}

const del = (num) => {
	let flag = confirm(num+"�� ���� ���� �ϰڽ��ϱ�?");
	if(flag){
		location.href="${pageContext.request.contextPath }/dataroom/del?num="+num;
	}else{
		alert("���� ��ҵǾ����ϴ�.");
	}
	
}
</script>

</head>
<body>
	<form action="${pageContext.request.contextPath }/dataroom/edit" method="post" id="f" name="f" style="display: none">
		<input type="hidden" name="num">
	</form>

<h3>��������</h3>
<table border = "1">
<tr>  <th>�۹�ȣ</th> <td>${dr.num }</td>  </tr>
<tr>  <th>����</th> <td id="title_${dr.num }">${dr.title }</td>  </tr>
<tr>  <th>����</th> <td id="cont_${dr.num }" style="width : 300px; height:200px;">${dr.content }</td>  </tr>
<tr>  <th>�ۼ���</th> <td>${dr.writer }</td>  </tr>
<tr>  <th>�ۼ���</th> <td>${dr.wdate }</td>  </tr>
<tr>  <th>���ϸ�</th> <td>${dr.path }<input type="button" value="�ٿ�ε�" onclick="plus_cnt(${dr.num},${dr.cnt },${dr.path })">(${dr.cnt })</td>  </tr>
<tr>  <th>����</th> <td><input type="button" value="����" onclick="edit(${dr.num})"> <input type="button" value="����"onclick="del(${dr.num})"> </td>

</table>
</body>
</html>