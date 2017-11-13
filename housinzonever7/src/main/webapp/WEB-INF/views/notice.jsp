<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="${pageContext.request.contextPath}/resources/js/jquery.js" type="text/javascript"></script>
<link href="${pageContext.request.contextPath}/resources/css/common.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/reset.css"	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/css/board.css"	rel="stylesheet" type="text/css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>

</head>
<body>
	<div class="wrapper">
		<header>
			<div class="ci">
				<a href="index.html"><img
					src="${pageContext.request.contextPath}/resources/img/ci/ci.png"
					alt="" class="logoimg"></a>
			</div>
			<nav>
				<ul>
					<li class="home"><a href="index.html">HOME</a></li>
					<li class="about"><a href="about.html">ABOUT US</a></li>
					<li class="service"><a href="service.html">SERVICE</a></li>
					<li class="gallery"><a href="gallery.html">GALLERY</a></li>
					<li class="contactus"><a href="contactus.html">CONTACT US</a></li>
					<li class="board"><a href="board.html">BOARD</a></li>
					<li class="band"><a href="band.html">BAND</a></li>
				</ul>
			</nav>
		</header>


		<div class="contentsWrapper">
			<div class="board2">
				<h2 class="notice">공지사항</h2>
				<table class="table table-striped">
					<c:forEach var="notice" items="${list}">
						<tr>
							<td>${notice.no}</td>
							<td><a href="content?no=${notice.no}">${notice.subject}</a></td>
							<td>${notice.writer}</td>
							<td>${notice.regdate}</td>
						</tr>
					</c:forEach>
				</table>
				<div class="text-center">
					<ul class="pagination">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
					</ul>
				</div>
			</div>

		</div>

		<footer>
			<div class="footer_wrap">
				<div class="footer1">
					<p>
						상호 : 하우징존 | 대표 : 윤원필 | 사업자번호 : 127-44-96902 | 이메일 : <span>jy7058@naver.com</span>
					</p>
					<p>
						전화 : <span>031-840-2628</span> | 팩스 : 031-624-0131 | 핸드폰 : <span>010-4124-0131</span>
					</p>
					<p>경기도 의정부시 용민로 16 용현동 상가 402호</p>
				</div>
				<div class="footer2">
					<p>
						housingzone.co.kr &copy; 2012 Privacy Policy <a href="admin/admin"
							class="admin">관리자</a>
					</p>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>