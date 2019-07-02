<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.ProductVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
a{
background-image: linear-gradient(45deg, #ff3333, #ff9999, #ffccdd, #b3ccff );
font-size: 2em;
text-decoration: none;
}
</style>
</head>
<body>
<h1>선택된 상품 정보는 다음과 같습니다.(스크립트 태그)</h1>
<hr>
	<h2>선택된 사과의 개수 : ${ sessionScope.product1.apple }</h2>
	<h2>선택된 바나나의 개수 : ${ sessionScope.product2.banana }</h2> 
	<h2>선택된 한라봉의 개수 : ${ sessionScope.product3.orange }</h2> 
	<hr>
	<a href='${ header.referer }'>상품선택화면</a>
</body>
</html>