<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "vo.OnePersonVO, java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
table,td{
	border: 1px solid black;
	text-align: center;
}
</style>
</head>
<body>
<h2>1인 가구 정보</h2>
<hr>
<%
	OnePersonVO vo1 = (OnePersonVO)request.getAttribute("maxnum12");
	OnePersonVO vo2 = (OnePersonVO)request.getAttribute("maxnum1");
%>
<form method="get" action="/springedu/oneperson?action=order">
<input type="hidden" name="action" value="order">
<input type="submit" value="1인 가구가 많은 순으로 전체 출력">
</form><br>
<form method="get" action="/springedu/oneperson?action=grouparea1">
<input type="hidden" name="action" value="grouparea1">
<input type="submit" value="구별 1인 가구 명수 출력">
</form><br>
<form method="get" action="/springedu/oneperson?action=maxnum12">
<input type="hidden" name="action" value="maxnum12">
<input type="submit" value="1인 가구수가 제일 많은 동의 구 이름과 동 이름 출력">
</form><br>
<form method="get" action="/springedu/oneperson?action=maxnum1">
<input type="hidden" name="action" value="maxnum1">
<input type="submit" value="1인 가구수가 제일 많은 구 이름 출력">
</form><br>
<form method="get" action="/springedu/oneperson?action=search">
<input type="hidden" name="action" value="search">
점검하려는 구 이름 입력 : <input type="search" id="key" name="key">
<input type="submit" value="검색">
</form>
<br><hr>
    <c:choose>
	<c:when test="${ list1 != null }">  
	    <table>
   		 <tr>
    	<td>구</td>
   		 <td>동</td>
    	<td>1인 가구</td>
   		 </tr>
			<c:forEach var="data1"  items="${list1}">
			<tr>
	 		<td>${ data1.area1 }</td>
	 		<td>${ data1.area2 }</td>
	 		<td>${ data1.num }</td>
	 		</tr>			
			</c:forEach>
				<tr>
	</table>
	</c:when>
	<c:when test="${ list2 != null }">  
	    <table>
   		 <tr>
    	<td>구</td>
    	<td>1인 가구</td>
   		 </tr>
			<c:forEach var="data2"  items="${list2}">
			<tr>
	 		<td>${ data2.area1 }</td>
	 		<td>${ data2.num }</td>
	 		</tr>			
			</c:forEach>
				<tr>
	</table>
	</c:when>
	<c:when test="${ list3 != null }">  
	    <table>
   		 <tr>
    	<td>구</td>
   		 <td>동</td>
    	<td>1인 가구</td>
   		 </tr>
			<c:forEach var="data3"  items="${list3}">
			<tr>
	 		<td>${ data3.area1 }</td>
	 		<td>${ data3.area2 }</td>
	 		<td>${ data3.num }</td>
	 		</tr>			
			</c:forEach>
				<tr>
	</table>
	</c:when>
	<c:otherwise>  
			${msg}
	</c:otherwise>
	</c:choose>
<%
	if(vo1 != null){
%>
	<h5>구 이름 : <%= vo1.getArea1() %></h5>
	<h5>동 이름 : <%= vo1.getArea2() %></h5>
<%
	}if(vo2 != null){
%>
	<h5>구 이름 : <%= vo2.getArea1() %></h5>
<%
	}
%>
</body>
</html>