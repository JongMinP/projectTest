<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나무소셜</title>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootswatch.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	padding-top: 100px;
	padding-bottom: 40px;
	background-color: #ecf0f1;
}

.info-header {
	max-width: 500px;
	padding: 15px 29px 25px;
	margin: 0 auto;
	background-color: #18bc9c;
	color: white;
	text-align: left;
	-webkit-border-radius: 15px 15px 0px 0px;
	-moz-border-radius: 15px 15px 0px 0px;
	border-radius: 15px 15px 0px 0px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.info-footer {
	max-width: 500px;
	margin: 0 auto 20px;
	padding-left: 10px;
}

.info-body {
	max-width: 500px;
	padding: 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	-webkit-border-radius: 0px 0px 15px 15px;
	-moz-border-radius: 0px 0px 15px 15px;
	border-radius: 0px 0px 15px 15px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.info-heading {
	margin-bottom: 15px;
}

.info-btn {
	text-align: center;
	padding-top: 20px;
}
</style>
</head>
<body>
	<div class="container">

		<!-- header -->
		<div class="info-header">
			<h2 class="info-heading">안내</h2>
		</div>

		<!-- body -->
		<div class="info-body">

			<h3>제목</h3>
			<p>가입을 환영합니다.</p>
			<form action="${pageContext.request.contextPath}/user/log.do">
				<div class="row info-btn">
					<button class="btn btn-large btn-default">홈으로 이동</button>
				</div>
			</form>
		</div>

		<!-- footer -->
		<div class="info-footer">
			<p>© NamooSori 2016.</p>
		</div>
	</div>

</body>
</html>