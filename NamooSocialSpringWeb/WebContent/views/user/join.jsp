<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나무소셜</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootswatch.min.css"
	rel="stylesheet">
</head>

<script type="text/javascript">
// 	$(documnet).ready(function() {

// 		$("btn_join").click(function() {

// 			if ($("#id").val() == "") {
// 				alert("아이디를 입력하세요");
// 				$("#id").focus();
// 			} else if ($("#name").val() == "") {
// 				alert("이름을 입력하세요")
// 				$("#name").focus();
// 			} else if ($("#email").val() == "") {
// 				alert("이메일을 입력하세요")
// 				$("#email").focus();
// 			} else if ($("#password").val() == "") {
// 				alert("비밀번호를 입력하세요")
// 				$("#password").focus();
// 			} else if ($("#pwd").val() == "") {
// 				alert("비밀번호를 입력하세요")
// 				$("#pwd").focus();
// 			} else if ($("#password").val() != $("#pwd").val()) {
// 				alert("비밀번호와 비밀번호 확인이 일치하지않습니다.");
// 				$("#password").val("");
// 				$("#pwd").val("");
// 				$("#password").focus();
// 			}

// 		});

// 	});
</script>
<body>

	<!-- Main Navigation ========================================================================================== -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand"
					href="${pageContext.request.contextPath}/user/log.do">나무소셜</a>
			</div>
		</div>
	</div>

	<!-- Header ========================================================================================== -->
	<header>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="jumbotron">
					<h1>나무소셜과 함께!</h1>
					<p>나무 소셜과 함께 특정 취미와 관심사, 특정 그룹 또는 조직에 관한 대화를 시작하세요.</p>
				</div>
			</div>
		</div>
	</div>
	</header>

	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">

				<div class="page-header">
					<h2 id="container">회원 가입하기</h2>
				</div>
				<div class="well">
					<p>회원가입을 위해 아래 내용들을 작성해 주세요.</p>
					<form class="form-horizontal"
						action="${pageContext.request.contextPath}/user/joinPermition.do"
						method="POST">
						<fieldset>
							<div class="form-group">
								<label class="col-lg-2 control-label">아이디</label>

								<div class="col-lg-10">
									<input name="id" type="text" class="form-control"
										placeholder="아이디">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이름</label>

								<div class="col-lg-10">
									<input name="name" type="text" class="form-control"
										placeholder="이름">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">이메일</label>

								<div class="col-lg-10">
									<input name="email" type="text" class="form-control"
										placeholder="이메일">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호</label>

								<div class="col-lg-10">
									<input name="password" type="password" class="form-control"
										placeholder="비밀번호">
								</div>
							</div>
							<div class="form-group">
								<label class="col-lg-2 control-label">비밀번호 확인</label>

								<div class="col-lg-10">
									<input name="pwd" type="password" class="form-control"
										placeholder="비밀번호 확인">
								</div>
							</div>
							<div class="form-group">
								<div class="col-lg-10 col-lg-offset-2">
									<button type="submit" id="btn_join" class="btn btn-primary">확인</button>
									<button class="btn btn-default">취소</button>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

		</div>

		<!-- Footer ========================================================================================== -->
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<ul class="list-unstyled">
					<li class="pull-right"><a href="#top">위로 이동</a></li>
					<li><a href="#">소셜 홈</a></li>
					<li><a href="#">RSS</a></li>
					<li><a href="#">이용약관</a></li>
					<li><a href="#">도움말</a></li>
					<li><a href="#">회원탈퇴</a></li>
				</ul>
				<p>© NamooSori 2016.</p>
			</div>
		</div>
		</footer>
	</div>

</body>
</html>