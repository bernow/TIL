<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.nav-item {
	font-family: "NanumMyeongjo";
	font-weight: bold;
}

.footer {
	background-color: #595959;
	text-align: center;
	height: 50px;
}

.footertxt {
	padding-top: 10px;
	color: white;
}
</style>
</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="/project/parking/main"
				style="padding-top: 0 !important; padding-bottom: 0 !important; margin-right: 0 !important;">
				<img src="/project/resources/images/title1.png"
				style="width: 200px !important;">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link"
						href="/project/parking/report">신고하기</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/project/parking/stat">통계</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/project/parking/parkinglot">주차장</a></li>
					<li class="nav-item"><a class="nav-link"
						href="/project/parking/qna">Q&amp;A</a></li>
				</ul>
			</div>
			<c:if test="${empty user}">
				<a href="/project/parking/login"><button type="button"
						class="btn btn-secondary" style="margin-left: 10px;">Login</button></a><
			</c:if>
			<c:if test="${!empty user}">
				<!-- <li class="nav-item"><a class="nav-link"
							 href="/project/parking/logout">로그아웃</a></li> -->
				<div class="btn-group">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></button>
					<div class="dropdown-menu dropdown-menu-right">
						<button class="dropdown-item" type="button">마이페이지</button>
						<a href="/project/parking/logout"><button
								class="dropdown-item" type="button">로그아웃</button></a>
					</div>
				</div>
			</c:if>
		</div>
	</nav>





	<div class="container-fluid center">
		<div class="text-center" style="height: 300px">
			<div style="padding-top: 100px">
				<div class="inner-contents02 info-text">
					<!-- !inner-contents Start -->
					<p class="inner-title">
						회원님의 <span>회원정보 확인</span>을 위해 비밀번호를 한번 더 입력해 주세요.
					</p>
					<ul class="inner-copy">
						<li>비밀번호가 타인에게 노출되지 않도록 주의하시기 바랍니다.</li>
						<li>비밀번호에는 개인정보를 포함하거나 아이디를 포함한 비밀번호, 집전화, 휴대폰 번호 , 영문 성명등 <br>타인이
							유추할 수 있는 비밀번호는 사용 하지 않는 것이 좋습니다.
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<hr>




	<div class="container">
		<form method="post" action="/project/parking/report/write"
			enctype="multipart/form-data">
			<input type="hidden" name="email" value="${user.password}">

			<div class="form-group row">
				<label class="col-sm-2 col-form-label" style="text-align: center">비밀번호:</label>
				<div class="col-sm-10">
					<div class="input-group mb-3">
						<input type="password" class="form-control"
							placeholder="비밀번호를 입력하세요" aria-label="Recipient's username"
							aria-describedby="button-addon2">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button"
								id="button-addon2">확인</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<script>
		$("#button-addon2").click(function() {
			location.href = "/project/parking/mypage";
		});
	</script>
	<!-- FOOTER -->
	<div class="footer">
		<footer>
			<p class="footertxt">Copyright @ 그자리아냐</p>
		</footer>
	</div>
</body>
</html>