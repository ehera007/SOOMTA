
<!-- 클래스/밴드 리스트  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SOOMTA</title>
<!-- TOP아이콘 클릭 시 부드럽게 위로 올라가기 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('.Top').click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 400);
			return false;
		});
	});
</script>
</head>
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
	height: 50px;
	display: flex;
	align-items: center;
	font-weight: bold;
	padding-bottom: 30px;
}

/*.search {
	border: 1px solid black;
	height: 40px;
	width: 600px;
	margin: 0 auto;
	position: relative;
	본인 위치에서 175px만큼 왼쪽이동
	left: 175px;
	border-radius: 2em;
}*/

.nav {
	color: #0F4C81;
	display: flex;
	margin-left: auto;
}

.nav-item {
	margin: 15px;
	font-size: 15px;
}

/*중앙 구역 분할 */
/*전체 카테고리*/
.allCtgr {
	left: 20px;
	position: relative;
	display: inline;
	z-index: 1;
	bottom: 3px;
}

.mainmenu {
	padding: 8px;
	font-size: 14px;
	border: none;
	width: 130px;
}

.submenu {
	display: none;
	position: absolute;
	width: 130px;
	font-size: 15px;
	text-align: center;
	background-color: white;
}

.ctgr {
	border: 3px solid #0F4C81;
	margin-bottom: 5px;
	list-style: none;
}

.allCtgr:hover .submenu {
	display: block;
}

.titlemainmenu {
	font-size: 20px;
	color: #0F4C81;
}

/*------------*/
.ctgr>li {
	position: relative;
}

.ctgr>li:hover .titleSubmenu {
	left: 100%;
}

.ctgr>li a, .titleSubmenu>li a {
	border-radius: 10px;
	margin: 10px;
	color: #0F4C81;
}

.titleSubmenu {
	position: absolute;
	top: -3px;
	width: 80%;
	left: -10000px;
	list-style: none;
	text-align: center;
	margin: 0 auto;
	color: #0F4C81;
}

.titleSubmenu>li a:hover {
	color: #085820;
}

#titleSubLine {
	border: 3px solid #0F4C81;
	width: 100px;
	margin: 3px;
}

.titleSubLineIcon{
	list-style-image: url("./../images/ctgricon.png");
	position: absolute;
    left: 14px;
    top: 5px;
    width:18px;
    height:18px
}

/*수정한부분 */
.main {
	width: 100%;
	margin: 0 auto;
}

.main_left {
	float: left;
	width: 20%;
}


.main_right {
	float: right;
	width: 60%;
	margin-right: 20%;
}

.allmain {
	height: 2250px;
}

.topcate {
	height: 30px;
	padding-bottom: 5px;
	padding-left: 50px;
}

.topcate-left {
	float: left;
	width: 12%;
}


.introtop {
	height: 300px;
}

.intro-detail1 {
	float: left;
	width: 48%;
	height: 300px;
}

.intro-detail2 {
	/*border: solid 1px;*/
	float: right;
	width: 48%;
	height: 300px;
	/*text-align: center;*/
}

.middle-button {
	height: 30px;
	padding-bottom: 8px;
	margin-top:55px;
	position:relative;
	left: 49px;
}

/*강의 간단 정보*/
#titleName {
	display: inline-block;
	margin-top: 8px;
	margin-bottom: 6px;
}
/*강사소개*/
.tutorImg{
	width: 150px;
    height: 150px; 
    border-radius: 70%;
    overflow: hidden;
}
.tutordetail{
	padding-right: 100px;
	padding-top: 50px;
	text-align: center;
	height: 200px;
	position: relative;
	left: 50px;
}
.profile {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.tutorPro{
	position: relative;
	left: 200px;
	bottom: 147px;
}
/*버튼 css  1*/
.button-4 {
	width: 100px;
	height: 30px;
	border: 1px solid #0F4C81;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 0 5px 0 0;
}

.button-4 a {
	font-family: arial;
	font-size: 16px;
	color: #0F4C81;
	text-decoration: none;
	line-height: 30px;
	transition: all .5s ease;
	z-index: 2;
	position: relative;
}

.eff-4 {
	width: 100px;
	height: 30px;
	left: -140px;
	background: #0F4C81;
	position: absolute;
	transition: all .5s ease;
	z-index: 1;
}

.button-4:hover .eff-4 {
	left: 0;
}

.button-4:hover a {
	color: #fff;
}

.button-5{
	width: 100px;
	height: 30px;
	border: 1px solid #0F4C81;
	float: left;
	text-align: center;
	cursor: pointer;
	position: relative;
	box-sizing: border-box;
	overflow: hidden;
	margin: 0 5px 0 0;
	left: 200px;
	bottom: 125px;
}

#subbtn{
	text-align: center;
	background: #0F4C81;
	color: #fff;
	font-size:16px;
	border:none;
	border-right:0px;
	border-top:0px;
	boder-left:0px;
	boder-bottom:0px;

}

/*버튼 끝 */
.classdetail {
 	display: inline-block;
	height: 950px;
	width: 920px;
	text-align : center;
}

.imgsize{
   display: inline-block;
   width: 90%;
   height: auto;
  object-fit: cover;
}


.satisfyreview {
	height: 280px;
	width:999px;
}

.bottom-button {
	height: 50px;
	padding: 10px 0 0 700px;
}

/* 0----*/
.DetailTag {
	position: relative;
	left: 40px;
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

/*하단 고정 버튼*/
.bottomFixButton {
	width: 100px;
	height: 28px;
	text-align: center;
	background: #0F4C81;
	color: #fff;
	padding-top: 7px;
}
.TopButton {
	display:inline-block;
	width: 100px;
	height: 28px;
	text-align: center;
	background: #0F4C81;
	color: #fff;
	padding-top: 2px;
}
.subButton{
	display:inline-block;
	width: 100px;
	height: 32px;
	text-align: center;
	background: #0F4C81;
	color: #fff;
	font-size:16px;
	border:none;
	border-right:0px;
	border-top:0px;
	boder-left:0px;
	boder-bottom:0px;
}
.WishButton {
	display:inline-block;
	width: 100px;
	height: 28px;
	text-align: left;
	color: #fff;
	padding-top: 2px;
	position: relative;
	bottom: -5px;
	left: 5px;
}

header a:visited {
	color: #fff;
}

header a:hover {
	text-decoration: none !important
}

.reviewTable{
	position: relative;
	left:65px;
	width:770px;
	height: 220px;
	margin-top: 20px;
	border-collapse:collapse;
}
.reviewTable th{
	background-color: #0F4C81;
	color: #fff;
}
.reviewTable td{
	
	border-bottom: 1px solid #0F4C81;
	height: 53px;
}
/*후기 테이블
.reviewTable{
	width:250px;
	height: 250px;
	border:2px solid #0F4C81;
	box-shadow: 5px 5px 5px 5px #D5D5D5;
	display:inline-block;
	float: left;
	margin-right: 30px;
	position: relative;
	right: 50px;
	top:40px;
}

.reviewTable td, th{
	padding:1px;
	vertical-align:top;
}

.reviewTable table th{
	width:40px;
}*/
.moreReview{
	position: relative;
	right: -790px;
	bottom: -10px;
}
a:link {
	color: black;
	}
a:visited {
	color: black;
}
</style>
<script type="text/javascript">
	function classJoin() {
		var id ='${logIn.grade}';
		//alert("삭제하시겠습니까?");
		if(id == 'mem'){
			alert("구매하시겠습니까?");
			javascript:location.href='../member/classCart?classNo=${dto.classNo}&tutorId=${dto.tutorId}';
		}else{
			alert("일반 회원으로 로그인해주세요.");
			return false;
		}
	}
	function wish1(){		
		//location.href="wish?classNo=${dto.classNo}&tutorId=${dto.tutorId}";
			var id ='${logIn.grade}';
		$.ajax({
			type : "post",
			url : "wish",
			dataType : "html",
			data : "classNo=${dto.classNo}&tutorId=${dto.tutorId}" ,
			success : function(result){
				if(id == 'mem'){
					if(result.trim() == "1"){
						$("#wish1").attr("src","../images/heart_filled.png");
					} else{
						$("#wish1").attr("src","../images/hreat_empty.png");
					}
				}else{
					alert("일반 회원으로 로그인해주세요.");
					return false;
				}
			},
			error: function(){
				alert("일반 회원으로 로그인해주세요.");
				return;
			}
		});
	}
</script>

<body>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA"
			onclick="location.href='/SOOMTA_2108/main'" />
		<!-- <div class="search">검색바</div> -->
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
	<div class="main">
		<div class="allmain">
			<div class="main_left">
				<div class="allCtgr">
					<button class="mainmenu">전체카테고리</button>
					<div class="submenu">
						<b class="titlemainmenu">CLASS</b>
						<div class="ctgr">
							<li><a href="#">학업</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="../class/education/child">유아</a></li>
									<li id="titleSubLine"><a
										href="../class/education/elementary">초딩</a></li>
									<li id="titleSubLine"><a href="../class/education/medium">중등</a></li>
									<li id="titleSubLine"><a
										href="../class/education/employeement">입시/편입</a></li>
									<li id="titleSubLine"><a href="../class/education/ect">기타</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">자격증/시험</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a
										href="../class/ctificate/publicOfficer">공무원</a></li>
									<li id="titleSubLine"><a href="../class/ctificate/NCS">NCS</a></li>
									<li id="titleSubLine"><a
										href="../class/ctificate/taxation">세무/회계</a></li>
									<li id="titleSubLine"><a href="../class/ctificate/foreign">외국어</a></li>
									<li id="titleSubLine"><a href="../class/ctificate/design">디자인</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">예체능</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="../class/art/art">미술</a></li>
									<li id="titleSubLine"><a href="../class/art/sports">스포츠</a></li>
									<li id="titleSubLine"><a href="../class/art/cook">요리</a></li>
									<li id="titleSubLine"><a href="../class/art/music">음악</a></li>
									<li id="titleSubLine"><a href="../class/art/ect">기타</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">재태크</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="../class/retack/estate">부동산</a></li>
									<li id="titleSubLine"><a href="../class/retack/stock">주식</a></li>
									<li id="titleSubLine"><a href="../class/retack/fund">펀드</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">취업</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a
										href="../class/employement/intertview">이력서</a></li>
									<li id="titleSubLine"><a
										href="../class/employement/resume">면접</a></li>
									<li id="titleSubLine"><a
										href="../class/employement/personality">인적성</a></li>
									<li id="titleSubLine"><a href="../class/education/ect">기타</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<a href="#">기타</a>
						</div>
						<b class="titlemainmenu">BAND</b>
						<div class="ctgr">
							<li><a href="#">학업</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="./../band/education/child">유아</a></li>
									<li id="titleSubLine"><a href="./../band/education/elementary">초딩</a></li>
									<li id="titleSubLine"><a href="./../band/education/medium">중등</a></li>
									<li id="titleSubLine"><a href="./../band/education/employeement">입시/편입</a></li>
									<li id="titleSubLine"><a href="./../band/education/ect">기타</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">자격증/시험</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="./../band/ctificate/publicOfficer">공무원</a></li>
									<li id="titleSubLine"><a href="./../band/ctificate/NCS">NCS</a></li>
									<li id="titleSubLine"><a href="./../band/ctificate/taxation">세무/회계</a></li>
									<li id="titleSubLine"><a href="./../band/ctificate/foreign">외국어</a></li>
									<li id="titleSubLine"><a href="./../band/ctificate/design">디자인</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">예체능</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="./../band/art/art">미술</a></li>
									<li id="titleSubLine"><a href="./../band/art/sports">스포츠</a></li>
									<li id="titleSubLine"><a href="./../band/art/cook">요리</a></li>
									<li id="titleSubLine"><a href="./../band/art/music">음악</a></li>
									<li id="titleSubLine"><a href="./../band/art/ect">기타</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">재태크</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="./../band/retack/estate">부동산</a></li>
									<li id="titleSubLine"><a href="./../band/retack/stock">주식</a></li>
									<li id="titleSubLine"><a href="./../band/retack/fund">펀드</a></li>
									<li id="titleSubLine"><a href="./../band/retack/ect">기타</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<li><a href="#">취업</a>
								<ul class="titleSubmenu">
								<img src="./../images/ctgricon.png" class="titleSubLineIcon"/>
									<li id="titleSubLine"><a href="./../band/employement/intertview">이력서</a></li>
									<li id="titleSubLine"><a href="./../band/employement/resume">면접</a></li>
									<li id="titleSubLine"><a href="./../band/employement/personality">인적성</a></li>
									<li id="titleSubLine"><a href="./../band/education/etc">기타</a></li>
								</ul></li>
						</div>
						<div class="ctgr">
							<a href="#">기타</a>
						</div>
					</div>
				</div>
			</div>

			
			<div class="main_right">
			<form action="../member/classCart" method="post">
					<input type="hidden" name="classNo" value="${dto.classNo }"/>
					<input type="hidden" name="tutorId" value="${dto.tutorId }"/>
				<div class="topcate">
					<div class="topcate-left" style="color: #0F4C81;">
					<c:if test="${dto.classCategoryL == 'STUDY' }">학업</c:if>
					<c:if test="${dto.classCategoryL == 'TEST' }">자격증</c:if>
					<c:if test="${dto.classCategoryL == 'ENT' }">예체능</c:if>
					<c:if test="${dto.classCategoryL == 'ECONOMY' }">재태크</c:if>
					<c:if test="${dto.classCategoryL == 'EMP' }">취업</c:if>
					<c:if test="${dto.classCategoryL == 'ETC' }">기타</c:if>
					> ${dto.classCategoryS }</div>
				</div>
				<div class="introtop">
					<div class="intro-detail1" style="text-align : center;"><img width="300" height="300" src="./../tutor/upload/${dto.classImg.split(',')[0] }"/></div>
					<div class="intro-detail2">
						<span id="titleName">강의명 : </span> ${dto.className }<br />
						<span id="titleName">가격 : </span> ${dto.classPrice } 원<br />
						<span id="titleName">성별 : </span>
						<c:if test="${dto.classGender == 'm' }">남자</c:if>
						<c:if test="${dto.classGender == 'w' }">여자</c:if>
						<c:if test="${dto.classGender == 'x' }">무관</c:if>
						<br /> <span id="titleName">내용 : </span> ${dto.classIntroduce }<br />
						<span id="titleName">학습기간 : </span>
						<fmt:formatDate value="${dto.classStart }" pattern="yyyy-MM-dd" />
						~
						<fmt:formatDate value="${dto.classEnd }" pattern="yyyy-MM-dd" />
						<br /> <span id="titleName">수강생수 : </span> ${dto.classTotal } 명<br />
						<span id="titleName">수업방식 : </span>
						<c:if test="${dto.classWay.trim() == 's'}">과외</c:if>
						<c:if test="${dto.classWay.trim() == 'g'}">그룹</c:if>
						<c:if test="${dto.classWay.trim() == 'n'}">비대면</c:if>
						<br />
						<div class="subButton" style="margin-top:10px;">
							<input class="subButton" type="button" value="가입하기" onclick="classJoin()" />
							<!-- <input type="submit" value="가입하기"/> -->
						</div>
						<div class="TopButton" >
							<a style="color: #fff;" class="TopButton" href="#"> 문의하기 </a>
						</div>
						<div class="WishButton">
						<c:if test="${dto.classWish == false }">
						<a href="javascript:wish1();"><img id="wish1" src="../images/hreat_empty.png"/></a></c:if>
						<c:if test="${dto.classWish == true }">
						<a href="javascript:wish1();"><img id="wish1" src="../images/heart_filled.png"/></a></c:if>
						</div>

					</div>
				</div>
				</form>
				<!-- a태그 화면 내에서 이동 -->
				<div class="middle-button">
					<div class="button-4">
						<div class="eff-4"></div>
						<a href="#classDetail"> 강의설명 </a>
					</div>
					<div class="button-4">
						<div class="eff-4"></div>
						<a href="#tutorDetail"> 강사소개 </a>
					</div>
					<div class="button-4">
						<div class="eff-4"></div>
						<a href="#satisfyreView"> 만족도/후기 </a>
					</div>
				</div>
				<a name="classDetail">
					<div class="classdetail" >
					<img class="imgsize" src="./../tutor/upload/${dto.classImg2.split(',')[0] }"/>
					</div>
				</a><br /> <a name="tutorDetail"></a>
				<!-- 강사소개위치 이동 -->
				<hr color="black" />
				<div class="tutordetail">
					<div class="tutorImg">
   						 <c:if test = "${dto1.tutorImage == null}"><img class="profile" src="./../images/main_class.png"/></c:if>
   						  <c:if test = "${dto1.tutorImage != null}"><img class="profile" src="../tutor/upload/${dto1.tutorImage}" /></c:if>
   					</div>
   					<div class="tutorPro">
   						<table >
   							<tr style="font-size:23px; float: left;"><td colspan=3><a href="#">${dto1.tutorId}</a></td></tr>
   							<tr><td>총 강의 수</td><td>&nbsp;|&nbsp;</td><td>만족도</td><td>&nbsp;|&nbsp;</td><td>연락 가능 시간</td></tr>
   							<tr align="center">
   							<td>
   							<c:if test = "${classCount != null}">${classCount }개</c:if>
   							<c:if test = "${classCount == null}">-</c:if>
   							
   							</td>
   							<td>&nbsp;|&nbsp;</td>
   							<td>
   							<c:if test = "${tutorSatisTfyAllCount != null}">${tutorSatisTfyAllCount }개</c:if>
   							<c:if test = "${tutorSatisTfyAllCount == null}">-</c:if>
   							</td>
   							<td>&nbsp;|&nbsp;</td>
   							<td>${dto1.tutorRespond }</td>
   							</tr>
   						</table>
					</div>
					<div class="button-5">
						<div class="eff-4"></div>
						<a href="#"> 강사에게 1:1 </a>
					</div>
				</div>
				<br /> <a name="satisfyreView"></a>
				<!-- 후기위치 이동 -->
				<hr color="black" />
				<h2>클래스 후기</h2>
				<div class="satisfyreview">
		<c:if test="${!empty list }" >
		<table class="reviewTable">
			<tr>
				<th style="width: 20%;">강의 만족도</th>
				<th style="width: 20%;">강사 만족도</th>
				<th style="width: 50%;">후기</th>
			</tr>
			<c:forEach items="${list }" var="dto2"  begin="0" end="2">
			<tr>
				<td style="text-align: center;">${dto2.classSatisfy }</td>
				<td style="text-align: center;">${dto2.tutorSatisfy }</td>
				<td>${dto2.reviewContents }</td>	
			</tr>
			</c:forEach>
		</table>
			<a  class="moreReview" href="../tutor/reviewView?classNo=${dto.classNo }">> 더보기</a>
	</c:if>
		
		<c:if test="${empty list }">

			<table class="reviewTable">
				<tr>
				<th style="width: 20%; height: 45px;">강의 만족도</th>
				<th style="width: 20%;">강사 만족도</th>
				<th style="width: 50%;">후기</th>
				</tr>
				<tr>
					<td colspan="3" style="height: auto;">
					아직 등록된 후기가 없습니다 :)<br/>
					지금 바로 클래스에 등록해 후기를 남겨보세요 !
					</td>
				</tr>
			</table>

			</c:if>
				</div>
			</div>
		</div>
	</div>

	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 3px; right: 17px;" href="#"
		class="Top"> <img src="../images/top.png" alt="topicon">
	</a>
	<!-- 하단 문의하기/구매하기 고정 -->
	<header>
		<div class="bottomFixButton"
			style="position: fixed; bottom: 3px; right: 170px;">
			<input id ="subbtn" type="button" value="가입하기" onclick="classJoin()" />
			
		</div>
		<div class="bottomFixButton"
			style="position: fixed; bottom: 3px; right: 60px;">
			<a style="color: #fff;" href="#">문의하기</a>
		</div>
	</header>
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
	</div>
</body>
</html>