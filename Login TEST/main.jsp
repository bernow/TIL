<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>TEST</h2>
<c:if test="${empty user}">
				<a href="/tst/log"><button type="button"
						class="btn btn-secondary" style="margin-left:10px;">로그인</button></a>
			</c:if>
			<c:if test="${!empty user}">
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="/tst/logout"><button
								class="dropdown-item" type="button">로그아웃</button></a>
					</div>
				</div>
			</c:if>
</body>
</html>