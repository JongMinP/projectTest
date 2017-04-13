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
					<li><a
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
					<h2>나의 팬들과 함께하세요~</h2>
				</div>
			</div>
		</div>
	</div>
	</header>

	<!-- Container ======================================================================================= -->
	<div class="container">
		<div class="row">

			<!-- ★★★ Contents -->
			<div class="col-lg-12">
				<div class="page-header2">
					<h3>팔로워 사용자 목록</h3>
				</div>

				<!-- ★★★ Tab Panel -->
				<div id="communityList" class="tab-content">
					<!-- ★★★ 전체회원 -->
					<div class="tab-pane fade active in" id="all">

						<!-- ★★★ 검색조건 -->
						<div class="panel panel-default">
							<div class="panel-body">
								<form class="form-search"
									action="${pageContext.request.contextPath}/user/followerSearch.do"
									method="POST">
									<div class="input-group">
										<input name="search" type="text" class="form-control"
											placeholder="회원명 또는 ID"> <span
											class="input-group-btn">
											<button class="btn btn-primary">검색</button>
										</span>
									</div>
								</form>
							</div>
						</div>

						<!-- ★★★ 회원목록 -->
						<div class="table-responsive">
							<table class="table table-striped table-bordered table-hover">
								<thead>
									<tr>
										<th class="text-center">번호</th>
										<th class="text-center">ID</th>
										<th class="text-center">회원명</th>
										<th class="text-center">이메일</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<c:if test="${empty users}">
											<td colspan="5" class="text-center">나를 추가한 팔로워가 없습니다.</td>
										</c:if>
									</tr>
									<c:forEach var="user" items="${users}" varStatus="status">
										<tr>
											<td class="text-center">${status.count }</td>
											<td class="text-center">${user.id}</td>
											<td class="text-center">${user.name }</td>
											<td class="text-center">${user.email }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

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