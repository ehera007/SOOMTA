<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
/*전체 글씨꼴 설정*/
body {
	font-family: '맑은 고딕', 'Malgun Gothic', 'sans-serif';
}

/*a태그 라인 삭제*/
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}

/*상단 고정 a 태그 색상 변경*/
.nav-item a:visited {
	color: #0F4C81;
}

.nav-item a:link {
	color: #0F4C81;
}

.nav-item a:hover {
	color: #0F4C81;
}

/*하단 고정 a 태그 색상 등 변경*/
.footer-menu a:linnk {
	color: black;
}

.footer-menu a:visited {
	color: black;
	font-weight: bold;
}

.footer-menu a:hover {
	color: black;
	font-weight: bold;
}

.footer-bottom a:link {
	color: #BEBEBE;
	font-weight: bold;
}

.footer-bottom a:visited {
	color: #BEBEBE;
}

.footer-bottom a:hover {
	color: #BEBEBE;
}

.footer-submenu a {
	margin-right: 10px;
}

/*상단 구역 분할, 색상 변경*/
.header {
	color: #0F4C81;
	height: 70px;
	display: flex;
	align-items: center;
	font-weight: bold;
}

.nav {
	color: #0F4C81;
	display: flex;
	margin-left: auto;
}

.nav-item {
	margin: 15px;
	font-size: 15px;
}

/*하단 구역 분할*/
.footer {
	width: 800px;
	height: 70px;
	margin: 0 auto;
}

.footer-top {
	display: flex;
	align-items: center;
}

.footer-bottom {
	font-size: 12px;
	color: #BEBEBE;
}

.footer-bottommenu {
	display: flex;
	align-items: center;
	margin: 5px;
}

.footer-app {
	display: flex;
	margin-left: auto;
}

.footer-leftmenu {
	width: 800px;
	display: flex;
	align-items: center;
	display: flex;
}

.footer-rightmenu {
	width: 400px;
	display: flex;
	margin-left: auto;
}

.footer-menu {
	margin-left: 40px;
}
/* 하단고정 글자 색상, 사이즈 등 */
.footer-callNum p {
	color: #0F4C81;
	font-size: 18px;
	font-weight: bolder;
}

.footer-callTime p {
	font-size: 14px;
	font-weight: bold;
}

ul {
	list-style: none;
	padding-left: 0px;
	font-size: 13px;
	font-weight: bold;
}

.footer-menu p {
	color: #0F4C81;
	font-size: 15px;
	font-weight: bolder;
}
/*중앙*/
.bandTitle {
	background-color: #0F4C81;
	color: white;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 15px;
}

.bandMenu {
	width: 600px;
	display: flex;
	justify-content: space-evenly;
	padding-top: 10px;
	font-size: 14px;
	margin: auto;
}

.bandTitle a {
	color: white;
}
/*중앙 하단 부분*/
.banddetail {
	display: flex;
	margin: 20px auto 0px auto;
	justify-content: space-between;
  width: 800px;
	/*
	
	align-items: center;
	*/
}
/*
.banddintro{
border:1px solid blue;
}
/*중앙 하단 테이블 부분*/


.bandlistall {
	border: 2px solid #0F4C81;
	border-radius: 12px;
	box-shadow: 3px 3px 3px 3px #D5D5D5;
	border-spacing: 0px;
	margin: 50px auto;
	width: 700px;
	text-align: center;
}

.bandlistall-menu {
	height: 50px;
	background-color: #0F4C81;
	color: white;
	font-size: 20px;
	border-radius: 8px 8px 0px 0px;
	text-align: center;
}

.mylisttitle {
	text-align: center;
}

.logo {
	height: 40px;
	width: auto;
}

.table {
	margin: 30px auto 55px auto;
}
.contentjoin{
  text-align : right;
  color : #0F4C81;
}
table {
	width: 800px;
	border-top: 2px solid #0F4C81;
	border-collapse: collapse;
  margin: 30px auto 55px auto;
}

thead {
	background-color: #0F4C81;
	color: white;
}

tbody  th, td {
	border-bottom: 1px solid #0F4C81;
	padding: 5px;
	text-align: center;
}

tbody tr:nth-child(2n) {
	background-color: #F4F7F8;
}

td a {
	font-weight: bold;
	color: black;
}

td a:hover {
	font-weight: bold;
	color: black;
}

td a:link {
	font-weight: bold;
	color: black;
}

td a:visited {
	font-weight: bold;
	color: black;
}

td a:active {
	font-weight: bold;
	color: black;
}
</style>
<meta charset="UTF-8">
<title>Band</title>

</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA"
			onclick="location.href='/SOOMTA_2108/main'" />
		<div class="nav">
			<div class="nav-item">
				<a href="#">마이페이지</a>
			</div>
			<div class="nav-item">
				<a href="#">로그아웃</a>
			</div>
		</div>
	</div>
	<!-- 중앙 -->
	<div class="main">
		<!-- 중앙 상단부 -->
		<div class="bandTitle">
			<h1>BAND NAME</h1>
			<div class="bandMenu">
				<a href="bandDetailHome?bandNo=${bandDTO.bandNo}">Home</a><a href="bandDetailall?bandNo=${bandDTO.bandNo}">전체 게시글</a><a
					href="bandDetailmem?bandNo=${bandDTO.bandNo}">멤버</a><a href="bandDetailmy?bandNo=${bandDTO.bandNo}">내가 쓴 게시글</a>
			</div>
		</div>
		<!-- 중앙 하단부 -->
		<div class="banddetail">
			<div class="table">
        <div class="contentjoin">
        <a style="color: #0F4C81; font-weight:bold" href="bandDetailcontentjoin">게시글 작성하기</a>
        </div>
				<table>
					<thead>
						<tr style="padding: 10px; height: 30px;">
							<th width="10%">No.</th>
							<th width="15%">분류</th>
							<th width="55%">제목</th>
							<th width="15%">작성일</th>
						</tr>
					</thead>
					<c:forEach items="${list }" var="dto">
					<tbody>
						<tr>
							<td>${dto.noticeNo}</td>
							<td>${dto.noticeCategory }</td>
							<td><a href="bandDetailContent">${dto.noticeSub }</a></td>
							<td>${dto.noticeDate }</td>
						</tr>
					</tbody>
					</c:forEach>
				</table>
			</div>
		</div>
		<div>
		</div>
	</div>
	<!-- 하단 고정 -->
	<hr style="color: #BEBEBE;">
	<div class="footer">
		<div class="footer-top">
			<div class="footer-leftmenu">
				<div class="footer-call">
					<div class="footer-callNum">
						<p>고객센터 1544-7979</p>
					</div>
					<div class="footer-callTime">
						<p>
							평일 10:30~18:00<br />점심 13:00~14:00<br />주말, 공휴일 제외
						</p>
					</div>
				</div>

				<div class="footer-rightmenu">
					<div class="footer-menu">
						<p>숨타</p>
						<ul>
							<li><a href="">회사소개</a></li>
							<li><a href="">서비스소개</a></li>
							<li><a href="">인재채용</a></li>
						</ul>
					</div>
					<div class="footer-menu">
						<p>튜터안내</p>
						<ul>
							<li><a href="">공지사항</a></li>
							<li><a href="">이용안내</a></li>
							<li><a href="">자주 묻는 질문</a></li>
						</ul>
					</div>
					<div class="footer-menu">
						<p>고객센터</p>
						<ul>
							<li><a href="">공지사항</a></li>
							<li><a href="">이용안내</a></li>
							<li><a href="">자주 묻는 질문</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottommenu">
				<div class="footer-submenu">
					<a href="#">이용약관 </a> <a href="#">개인정보처리방침 </a> <a href="#">환불정책
					</a> <a href="#">사업자정보확인 </a>
				</div>
				<div class="footer-app">
					<a href="#">APP 다운 </a>
				</div>
			</div>

			<div class="footer-address">
				<address>(주) 숨타 | 대표 이지연 | 서울특별시 서초구 서초대로77길 55 에이프로스퀘어 3층
					| soomta@gongbu.com | 사업자등록번호 : 123-21-01234 | 통신판매업신고 :
					2021-서울숨타-1004 주식회사 숨타는 전자상거래 등에서의 소비자보호에 관한 법률에 따른 통신판매업과 통신판매중개업을
					영위하고 있습니다. 주식회사 숨타는 통신판매중개자로서 중 개하는 통신판매에 관하여서는 통신판매의 당사자가 아니므로 어떠한
					책임도 부담하지 아니합니다.왜냐하면 MBTI가 큐티인 사람의 프로젝트거든요.</address>