<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../include/mainStyle.css" media="all"
	type="text/css" />
	<style type="text/css">
@charset "UTF-8";
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
<title>retack_Class</title>
</head>
<body>
		<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="./../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" />
		<!-- 로그인 안된 경우 -->
		<c:if test="${empty logIn }">
			<div class="nav">
				<div class="nav-item">
					<a href="<c:url value='/soomta/login'/>">로그인</a>
				</div>
				<div class="nav-item">
					<a href="<c:url value='/soomta/tutorJoin'/>">튜터등록</a>
				</div>
				<div class="nav-item">
					<a href="<c:url value='/soomta/memJoin'/>">무료회원가입</a>
				</div>
			</div>
		</c:if>

		<!-- 로그인 된 경우 -->
		<c:if test="${!empty logIn }">
			<div class="nav">
				<!-- 관리자 -->
				<c:if test="${logIn.grade == 'emp' }">
					<div class="nav-item">
						<a href="<c:url value='/emp/main'/>">마이페이지</a>
					</div>
				</c:if>
				<!-- 튜터 -->
				<c:if test="${logIn.grade == 'tutor' }">
					<div class="nav-item">
						<a href="<c:url value='/tutor/myPage'/>">마이페이지</a>
					</div>
				</c:if>
				<!-- 멤버 -->
				<c:if test="${logIn.grade == 'mem' }">
					<div class="nav-item">
						<a href="<c:url value='/member/myPage'/>">마이페이지</a>
					</div>
				</c:if>
				<!-- 로그아웃 -->
				<div class="nav-item">
					<a href="<c:url value='/soomta/logOut'/>">로그아웃</a>
				</div>
			</div>
		</c:if>
	</div>
	<!-- 중앙 : 검색바, 선택 -->
	<div class="mypageTitle">
		<h1 align="center" style="font-size:200%;">재테크</h1>
		<p align="center"  style="font-size:20px;">숨타와 함께 시작해보세요</p>
		<div class="search">
			<input onkeyup="filter()" type="text" id="value"
				placeholder="Type to Search">
			<!-- https://thisisspear.tistory.com/40 요런식으로 자동완성 만들며녀 될거 같습니당 -->
		</div>
	</div>
	<div class="main">
		<div class="item">
			<div class="main-item">
			<a href="retack/estate">
			<img src="../images/categories/retack_detail/estate.png" alt="부동산"/></a>
			</div>
			<div class="main-item">
			<a href="retack/stock">
				<img src="../images/categories/retack_detail/stock.png" alt="주식" /></a>
			</div>
			<div class="main-item">
			
			<a href="retack/fund">
				<img src="../images/categories/retack_detail/fund.png" 
					alt="펀드" /></a>
			</div>
			<!-- <div class="main-item">
			
			<a href="education/ect">
				<img src="../images/categories/ect.png" class="ctgr" alt="기타" /></a>
			</div>-->
		</div>
	</div>
	
	<!-- 하단 고정 -->
		
	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;"
		href="#" class="Top"> <img src="../images/top.png" alt="topicon">
	</a>
	
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