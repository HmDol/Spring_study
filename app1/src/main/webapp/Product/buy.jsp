<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<script>
	const c = () =>{
		let val = document.getElementById("amount").value;
		let amount = parseInt(val);
		let val2 = '${p.price}';
		let price = parseInt(val2);
		let result = amount * price;
		//alret(val + "/" + amount +"/"+result);
		let res =  document.getElementById("res");
		res.innerHTML = result + "��";
		
	}
	
	const b = () => {
		let consumer = '${sessionScope.loginId}';
		let prodName = '${p.name}';
		let amount = document.getElementById("amount").value;
		let res = document.getElementById("res").innerHTML;
		let txt = '�ֹ��� : ' + consumer + '\n';
		txt += '�ֹ���ǰ : ' + prodName + '\n';
	 	txt += '�ֹ����� : ' + amount + '\n';
		txt += '����ݾ� : ' + res + '\n';
		alert(txt);
		
	}
</script>

</head>
<body>
	<h3>���� ������</h3>
	<table border="1">
		<tr>
			<th>��ǰ��</th>
			<td>${p.name }</td>
		</tr>
		<tr>
			<th>����</th>
			<td>${p.price }</td>
		</tr>
		<tr>
			<th>�Ǹ���</th>
			<td>${p.seller }</td>
		</tr>
		<tr>
			<th>�ֹ�����</th>
			<td><input type="number" id="amount" onChange="c()"></td>
		</tr>
		<tr>
			<th>�����ݾ�</th>
			<td id="res"></td>
		</tr>
		<tr>
			<td><input type="submit" onclick="b()" value="��ð���"></td>
		</tr>

	</table>

</body>
</html>