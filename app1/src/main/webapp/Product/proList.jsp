<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	const a = () =>{
	
	let type = document.getElementById("sel").value;

	if(type == '1'){
		document.getElementById("span1").style.display="";
		document.getElementById("span2").style.display="none";

	}else if(type == '2'){
		document.getElementById("span1").style.display="none";
		document.getElementById("span2").style.display="";
	}
}
	
</script>


</head>
<body>

	<h3>상품 목록</h3>
	<h5>
		<a href="/app1/MyProdListController?seller=${sessionScope.loginId }">내
			상품 목록</a>
	</h5>
	<h5>
		<a href="/app1/ProListController">전체 상품 목록</a>
	</h5>

	<select id="sel" onchange="a()">
		<option value="1" selected>판매자</option>
		<option value="2">상품가격</option>
	</select>


	<span id="span1">
		<form action="/app1/MyProdListController" method="get">
			<input type="text" name="seller"> 
			<input type="submit" value="검색">

		</form>
	</span>

	<span id="span2" style="display: none">
		<form action="/app1/ListByPrice" method="get">
			<input type="number" name="p1"> ~ <input type="number" name="p2"> 
			<input type="submit" value="검색">

		</form>

	</span>

	<br> 상품번호 / 상품이름 / 상품수

	<ul>
		<c:forEach var="p" items="${list }">
			<li>${p.num }/<a href="/app1/DetailProdController?num=${p.num }">${p.name }</a>
				/ ${p.amount }<a href="/app1/BuyProduct?p=${p.num}">구매</a>
			</li>
		</c:forEach>
	</ul>

	<a href="/app1/ProdAddController">상품 추가</a>

</body>
</html>