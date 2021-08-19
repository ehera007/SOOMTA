<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
@charset "UTF-8";
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
	height: 50px;
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
	font-size: 20px;
	font-weight: 900;
}

.footer-callTime ul {
	list-style: none;
	padding-left: 0px;
	font-size: 14px;
	font-weight: bold;
}

.footer-rightmenu ul {
	list-style: none;
	padding-left: 0px;
	font-size: 14px;
	font-weight: bold;
}

.footer-callTime li {
	margin-bottom: 3px;
}

.footer-rightmenu li {
	margin-bottom: 5px;
}

.footer-menu p {
	color: #0F4C81;
	font-size: 16px;
	font-weight: 900;
}
/*로고 이미지*/
.logo {
	height: 40px;
	width: auto;
	margin-left: 20px;
}
/*중앙 구역 분할 */
.mypageTitle {
	background-color: #0F4C81;
	color: white;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 15px;
}

.main {
	width: 800px;
	margin: 0 auto;
	backgrand-color: #0F4C81;
}

.item {
	display: flex;
	margin: 0 auto;
	flex-wrap: wrap; /*메뉴3개씩 정렬*/
	justify-content: space-around;
}

.main-item {
	width: 180px;
	height: 180px;
	margin: 30px;
}

/*이미지 사이즈 관련 스타일*/
img{
width:auto;
height:100%;
}
</style>
<!-- TOP아이콘 클릭 시 부드럽게 위로 올라가기 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
    $(document).ready(function(){
    	$( '.Top' ).click( function() {
        	$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
        	return false;
        } );
    });
    
    </script>
<meta charset="UTF-8">
<title>Education_Band</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
				<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
		<!-- 로그인 안된 경우 -->
		<div class="nav">
			<div class="nav-item">
				<a href="#">로그인</a>
			</div>
			<div class="nav-item">
				<a href="#">튜터등록</a>
			</div>
			<div class="nav-item">
				<a href="#">무료회원가입</a>
			</div>
		</div>
	</div>
	<!-- 중앙 : 검색바, 선택 -->
	<div class="mypageTitle">
		<h1 align="center" style="font-size:200%;">학업</h1>
		<p align="center" style="cont-size:20px">숨타를 통해 모여 보세요</p>
		<div class="search">
			<input onkeyup="filter()" type="text" id="value"
				placeholder="Type to Search">
			<!-- https://thisisspear.tistory.com/40 요런식으로 자동완성 만들며녀 될거 같습니당 -->
		</div>
	</div>
	<div class="main">
		<div class="item">
			<div class="main-item">
			<a href="education/child">
			<img src="../images/categories/education_detail/child.png" alt="유아"/></a>
			</div>
			<div class="main-item">
			<a href="education/elementary">
				<img src="../images/categories/education_detail/elementary.png" alt="초등" /></a>
			</div>
			<div class="main-item">
			
			<a href="education/medium">
				<img src="../images/categories/education_detail/medium.png" 
					alt="중등" /></a>
			</div>
			<div class="main-item">
			<a href="education/employeement">
				<img src="../images/categories/education_detail/college.png" 
					alt="입시/편입" /></a>
			</div>
			<div class="main-item">
			
			<a href="education/ect">
				<img src="../images/categories/ect.png" class="ctgr" alt="기타" /></a>
			</div>
		</div>
	</div>
	
	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;"
		href="#" class="Top"> <img src="../images/top.png" alt="topicon">
	</a>
	
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
						<ul>
							<li>평일 10:30~18:00</li>
							<li>점심 13:00~14:00</li>
							<li>주말, 공휴일 제외</li>
						</ul>
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
			</div>
		</div>
	</div>
</body>
</html>