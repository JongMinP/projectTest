<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나무소셜</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/bootswatch.min.css"
	rel="stylesheet">
</head>
<script type="text/javascript">
	$(document).ready(function() {
		$('a[data-toggle="tab"]').on('hidden.bs.tab', function(e) {
		});
	});
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
					href="${pageContext.request.contextPath}/message/messageList.do">나무소셜</a>
			</div>
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a
						href="${pageContext.request.contextPath}/message/messageList.do">소셜
							홈</a></li>
					<li><a
						href="${pageContext.request.contextPath}/user/followingList.do">팔로잉(${followingNumber })</a></li>
					<li><a
						href="${pageContext.request.contextPath}/user/followerList.do">팔로워(${followerNumber })</a></li>
					<li><a href="#">공지사항</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="${pageContext.request.contextPath}/user/logout.do">로그아웃</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">관리 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">커뮤니티 관리센터</a></li>
							<li><a href="#">클럽 관리센터</a></li>
							<li><a href="#">팀 관리센터</a></li>
							<li class="divider"></li>
							<li><a href="#">홍보</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">설정 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">개인정보</a></li>
							<li><a href="#">모바일 환경설정</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Header ========================================================================================== -->
	<header>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="jumbotron">
					<h1>나무 소셜과 함께!</h1>
					<p>오늘은 어땠나요? 나무 소셜과 함께 대화를 시작하세요.</p>
				</div>
			</div>
		</div>
	</div>
	</header>

	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<%-- 				<!-- ★★★ Tab Menu -->href="${pageContext.request.contextPath}/message/messageList.do" --%>
				<%-- 				href="${pageContext.request.contextPath}/message/newestMessage.do" --%>
				<ul id="myTab" class="nav nav-tabs" style="margin-bottom: 15px;">
					<li class="active"><a data-target="#joined" data-toggle="tab">나의메시지</a></li>
					<li><a data-target="#new" data-toggle="tab">최신메시지</a></li>
				</ul>


				<!-- ★★★ Tab Panel -->
				<div id="communityList" class="tab-content">
					<!-- ★★★ 가입 커뮤니티 -->
					<div class="tab-pane fade active in" id="joined">
						<div class="page-header">
							<h3 id="container">오늘의 상태 업데이트</h3>
							<form class="form-search"
								action="${pageContext.request.contextPath}/message/register.do">
								<div class="input-group">
									<input type="text" name=contents class="form-control"
										placeholder="내용을 입력하세요"> <span class="input-group-btn">
										<button class="btn btn-primary">등록</button>
									</span>
								</div>
							</form>
						</div>

						<ul class="list-group">

							<c:forEach var="msg" items="${list}">
								<li class="list-group-item"><span class="badge">${msg.registDate}</span>
									<h4>
										<a href="#">${msg.writerId}</a>
									</h4>
									<p>${msg.contents}</p></li>
							</c:forEach>
						</ul>

						<button type="button" class="btn btn-default btn-lg btn-block">메시지
							목록 더보기</button>
					</div>

					<div class="tab-pane fade" id="new">

						<ul class="list-group">

							<c:forEach var="msg" items="${sortList}">
								<li class="list-group-item"><span class="badge">${msg.registDate}</span>
									<h4>
										<a href="#">${msg.writerId}</a>
									</h4>
									<p>${msg.contents}</p></li>
							</c:forEach>
						</ul>

					</div>



				</div>
			</div>
		</div>

		<!-- Footer ========================================================================================== -->
		<footer>
		<div class="row">
			<div class="col-lg-12">
				<ul class="list-unstyled">
					<li class="pull-right"><a href="#top">위로 이동</a></li>
					<li><a href="index.jsp">소셜 홈</a></li>
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