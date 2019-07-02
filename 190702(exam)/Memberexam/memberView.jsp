<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="vo.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보(스크립트 태그)</h1>
	<hr>
	<ul>
		<%
			MemberVO vo = (MemberVO) request.getAttribute("result");
		%>
		<li>회원 이름 : <%=vo.getName()%></li>
		<li>회원 계정 : <%=vo.getId()%></li>
		<li>회원 암호 : <%=vo.getPw()%></li>
		<li>회원 전화번호 : <%=vo.getNumber()%></li>
	</ul>
	<hr>
	<jsp:useBean id="result" class="vo.MemberVO" scope="request"/>
	<h1>회원 정보(액션 태그)</h1>
	<hr>
	<ul>
		<li>회원 이름 : <jsp:getProperty property="name" name="result"/></li>
		<li>회원 계정 : <jsp:getProperty property="id" name="result"/></li>
		<li>회원 암호 : <jsp:getProperty property="pw" name="result"/></li>
		<li>회원 전화번호 : <jsp:getProperty property="number" name="result"/></li>
	</ul>
	<hr>
	<h1>회원 정보(EL)</h1>
	<hr>
	<ul>
		<li>회원 이름 : ${ requestScope.result.name }</li>
		<li>회원 계정 : ${ requestScope.result.id }</li>
		<li>회원 암호 : ${ requestScope.result.pw }</li>
		<li>회원 전화번호 : ${ requestScope.result.number }</li>
	</ul>
	<hr>
	<h1>회원 정보(더 간단하게)</h1>
	<hr>
	<ul>
	<!--scope 찾는 순서 : page->request->session->application을 자동으로 파악한다.-->
		<li>회원 이름 : ${ result.name }</li>
		<li>회원 계정 : ${ result.id }</li>
		<li>회원 암호 : ${ result.pw }</li>
		<li>회원 전화번호 : ${ result.number }</li>
	</ul>
</body>
</html>