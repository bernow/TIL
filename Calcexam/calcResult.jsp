<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>연산 요청 결과</h1>
<hr>
결과 : <span style="color: red;"><%= request.getAttribute("result") %></span>
<br>
<a href='${ header.referer }'>입력화면</a>
<hr>
<h1>연산 요청 결과</h1>
<hr>
결과 : <span style="color: red;"> ${ result }</span>
<br>
<a href='${ header.referer }'>입력화면</a>
</body>
</html>
