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
		res.innerHTML = result + "원";
		
	}
	
	const b = () => {
		let consumer = '${sessionScope.loginId}';
		let prodName = '${p.name}';
		let amount = document.getElementById("amount").value;
		let res = document.getElementById("res").innerHTML;
		let txt = '주문자 : ' + consumer + '\n';
		txt += '주문상품 : ' + prodName + '\n';
	 	txt += '주문수량 : ' + amount + '\n';
		txt += '결재금액 : ' + res + '\n';
		alert(txt);
		
	}
</script>

</head>
<body>
	<h3>구매 페이지</h3>
	<table border="1">
		<tr>
			<th>상품명</th>
			<td>${p.name }</td>
		</tr>
		<tr>
			<th>가격</th>
			<td>${p.price }</td>
		</tr>
		<tr>
			<th>판매자</th>
			<td>${p.seller }</td>
		</tr>
		<tr>
			<th>주문수량</th>
			<td><input type="number" id="amount" onChange="c()"></td>
		</tr>
		<tr>
			<th>결제금액</th>
			<td id="res"></td>
		</tr>
		<tr>
			<td><input type="submit" onclick="b()" value="즉시결제"></td>
		</tr>

	</table>

</body>
</html>