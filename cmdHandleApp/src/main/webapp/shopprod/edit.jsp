<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
img{
width: 150px;
height: 150px;
}
</style>
</head>
<body>
<h3>${sp.name }</h3>
<form action="${pageContext.request.contextPath }/shopprod/edit.do" method="POST">

<table border="1">
<tr><th>name</th><td><input tpye="text" name="num" value="${sp.num }"></td></tr>
<tr><th>name</th><td><input tpye="text" name="name" value="${sp.name }"></td></tr>
<tr><th>content</th><td><input tpye="text" name="content" value="${sp.content }"></td></tr>
<tr><th>price</th><td><input tpye="text" name="price" value="${sp.price }"></td></tr>
<tr><th>amount</th><td><input tpye="text" name="amount" value="${sp.amount }" readonly></td></tr>
<tr><th>seller</th><td><input tpye="text" name="seller" value="${sp.seller }" readonly></td></tr>
<tr><th>����1</th><td><img src="/shopprod/${sp.img1 }" alt="��ǰ���� ����"> 
<input type="button" class="imgedit" value="����" val="img1"></td></tr>  
<tr><th>����2</th><td><img src="/shopprod/${sp.img2 }" alt="��ǰ���� ����"> 
<input type="button" class="imgedit" value="����"val="img2"></td></tr>
<tr><th>����3</th><td><img src="/shopprod/${sp.img3 }" alt="��ǰ���� ����"> 
<input type="button" class="imgedit" value="����"val="img3"></td></tr>
<tr><th>����4</th><td><img src="/shopprod/${sp.img4 }" alt="��ǰ���� ����"> 
<input type="button" class="imgedit" value="����"val="img4"></td></tr>
<tr><th>����</th><td><input type="submit" value="�����Ϸ�" ></td></tr>
</table>

</form>
</body>
</html>