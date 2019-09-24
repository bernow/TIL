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
<c:if test="${!empty msg}">
		<script>
			alert("${msg}");	
		</script>
	</c:if>
<form method="post" action="/tst/log">
							<div class="form-label-group">
								<input type="email" id="inputEmail" class="form-control"
									placeholder="이메일" name="email"
									style="font-family: NanumBarunGothic" required autofocus>
							</div>
							<div class="form-label-group">
								<input type="password" id="inputPassword" class="form-control"
									placeholder="비밀번호" name="password" required
									style="font-family: NanumBarunGothic">
							</div>
							<div class="custom-control custom-checkbox mb-3">
								<input type="checkbox" class="custom-control-input"
									id="customCheck1">
							</div>
							<button
								class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2"
								type="submit" style="margin-bottom: 20px !important">로그인</button>
							
							<div class="text-center">
								<a class="small" href="/tst/main">메인으로 이동하기</a>
							</div>
						</form>
</body>
</html>