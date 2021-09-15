<!-- 클래스/밴드 리스트  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

/*검색창*/
.search {
	height: 40px;
	position: relative;
	left: 130px;
}
.searchBar {
    width: 700px;
    height:20px;
    border-radius: 30px;
    border: 2px solid #bbb;
    margin: 10px 0;
    padding: 10px 15px 10px 30px;
    outline-style: none; 
    font-family: inherit;
}
.btn{
	position:absolute;
	top: 20px;
	right: 20px;
	text-align:center;
	background-color: transparent;
	color: #6D6D6D;
	font-weight: bold;
	border: none;
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

/*전체카테고리 보기*/
.allCtgr {
	left: 20px;
	position: relative;
	display: inline;
	z-index: 1;
}

.mainmenu {
	padding: 8px;
	font-size: 15px;
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
	border: 2px solid #0F4C81;
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
	border: 2px solid #0F4C81;
	width: 100px;
	margin: 3px;
}

.titleSubLineIcon {
	list-style-image: url("../../images/ctgricon.png");
	position: absolute;
	left: 14px;
	top: 5px;
	width: 18px;
	height: 18px
}

/*중앙 구역 분할 */
.main {
	width: 800px;
	margin: 0 auto;
	z-index: 2;
}

.DetailTag {
	position: relative;
	left: 100px;
	width: 700px;
	height: 200px;
	align-items: center;
}

/*페이징*/
.page {
	text-align: center;
	width: 50%;
	margin: 0 auto;
	padding-top: 15px;
}

.pagination {
	list-style: none;
	display: inline-block;
	padding: 0;
	margin-top: 20px;
}

.pagination li {
	display: inline;
	text-align: center;
}

.pagination a {
	float: left;
	display: block;
	font-size: 14px;
	text-decoration: none;
	padding: 5px 12px;
	color: #0F4C81;
	line-height: 1.5;
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

a:link {
	color: #0F4C81;
	text-decoration: none;
}

a:visited {
	color: #0F4C81;
	text-decoration: none;
}

a:active {
	color: #0F4C81;
	text-decoration: none;
}

a:hover {
	color: #0F4C81;
	text-decoration: none;
}
.detailtagbtn{
	border:none;
	background:none;
	font-size: 10px;
}
</style>
<meta charset="UTF-8">
<title>SOOMTA</title>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>

	function DetailTag(){
		$("#frm").submit();
	}
</script>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../../images/soomta_logo.png" alt="SOOMTA"
			onclick="location.href='/SOOMTA_2108/main'" />
		<div class="search">
			<form action="./../bandSearch" name="bandSearch" method="post">
				<input type = "text" name="keyWord" value="" placeholder="검색어를 입력해주세요." class="searchBar"/>
				<input type="submit" class="btn" value="검색"/>
			</form>
		</div>
		<!-- 로그인 안된 경우 -->
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
						<a href="<c:url value='../member/myPage'/>">마이페이지</a>
					</div>
				</c:if>
				<!-- 로그아웃 -->
				<div class="nav-item">
					<a href="<c:url value='../soomta/logOut'/>">로그아웃</a>
				</div>
			</div>
		</c:if>
	</div>
	<!---------------------------------------------------------- 중앙 : 검색바, 선택----------------------------------------------------- -->
	<div class="allCtgr">
		<button class="mainmenu">전체카테고리</button>
		<div class="submenu">
			<b class="titlemainmenu">CLASS</b>
			<div class="ctgr">
				<li><a href="#">학업</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../../class/education/child">유아</a></li>
						<li id="titleSubLine"><a
							href="../../class/education/elementary">초딩</a></li>
						<li id="titleSubLine"><a href="../../class/education/medium">중등</a></li>
						<li id="titleSubLine"><a
							href="../../class/education/employeement">입시/편입</a></li>
						<li id="titleSubLine"><a href="../../class/education/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">자격증/시험</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a
							href="../../class/ctificate/publicOfficer">공무원</a></li>
						<li id="titleSubLine"><a href="../../class/ctificate/NCS">NCS</a></li>
						<li id="titleSubLine"><a
							href="../../class/ctificate/taxation">세무/회계</a></li>
						<li id="titleSubLine"><a href="../../class/ctificate/foreign">외국어</a></li>
						<li id="titleSubLine"><a href="../../class/ctificate/design">디자인</a></li>
						<li id="titleSubLine"><a href="../../class/ctificate/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">예체능</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../../class/art/art">미술</a></li>
						<li id="titleSubLine"><a href="../../class/art/sports">스포츠</a></li>
						<li id="titleSubLine"><a href="../../class/art/cook">요리</a></li>
						<li id="titleSubLine"><a href="../../class/art/music">음악</a></li>
						<li id="titleSubLine"><a href="../../class/art/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">재태크</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../../class/retack/estate">부동산</a></li>
						<li id="titleSubLine"><a href="../../class/retack/stock">주식</a></li>
						<li id="titleSubLine"><a href="../../class/retack/fund">펀드</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">취업</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a
							href="../../class/employement/intertview">이력서</a></li>
						<li id="titleSubLine"><a
							href="../../class/employement/resume">면접</a></li>
						<li id="titleSubLine"><a
							href="../../class/employement/personality">인적성</a></li>
						<li id="titleSubLine"><a href="../../class/employement/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<a href="#">기타</a>
			</div>
			<b class="titlemainmenu">BAND</b>
			<div class="ctgr">
				<li><a href="#">학업</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../education/child">유아</a></li>
						<li id="titleSubLine"><a href="../education/elementary">초딩</a></li>
						<li id="titleSubLine"><a href="../education/medium">중등</a></li>
						<li id="titleSubLine"><a href="../education/employeement">입시/편입</a></li>
						<li id="titleSubLine"><a href="../education/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">자격증/시험</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../ctificate/publicOfficer">공무원</a></li>
						<li id="titleSubLine"><a href="../ctificate/NCS">NCS</a></li>
						<li id="titleSubLine"><a href="../ctificate/taxation">세무/회계</a></li>
						<li id="titleSubLine"><a href="../ctificate/foreign">외국어</a></li>
						<li id="titleSubLine"><a href="../ctificate/design">디자인</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">예체능</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../art/art">미술</a></li>
						<li id="titleSubLine"><a href="../art/sports">스포츠</a></li>
						<li id="titleSubLine"><a href="../art/cook">요리</a></li>
						<li id="titleSubLine"><a href="../art/music">음악</a></li>
						<li id="titleSubLine"><a href="../art/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">재태크</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../retack/estate">부동산</a></li>
						<li id="titleSubLine"><a href="../retack/stock">주식</a></li>
						<li id="titleSubLine"><a href="../retack/fund">펀드</a></li>
						<li id="titleSubLine"><a href="../retack/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<li><a href="#">취업</a>
					<ul class="titleSubmenu">
						<img src="../../images/ctgricon.png" class="titleSubLineIcon" />
						<li id="titleSubLine"><a href="../employement/intertview">이력서</a></li>
						<li id="titleSubLine"><a href="../employement/resume">면접</a></li>
						<li id="titleSubLine"><a href="../employement/personality">인적성</a></li>
						<li id="titleSubLine"><a href="../employement/ect">기타</a></li>
					</ul></li>
			</div>
			<div class="ctgr">
				<a href="#">기타</a>
			</div>
		</div>
	</div>
	<!-- -------------------------------------------------------------------------------------------------------------------- -->

	<div class="main">
		<table style="margin-top: 25px;">
			<tr style="color: #0F4C81;">
				<td><a href="./../../band/mainCtgr">Band </a>></td>
				<td><a href="./../../../SOOMTA_2108/band/education">
					<c:if test="${list[0].bandCategoryL == 'STUDY' }">학업</c:if>
					<c:if test="${list[0].bandCategoryL == 'TEST' }">자격증</c:if>
					<c:if test="${list[0].bandCategoryL == 'ENT' }">예체능</c:if>
					<c:if test="${list[0].bandCategoryL == 'ECONOMY' }">재태크</c:if>
					<c:if test="${list[0].bandCategoryL == 'EMP' }">취업</c:if>
					<c:if test="${list[0].bandCategoryL == 'ETC' }">기타</c:if>
				</a>></td>
				<td>${list[0].bandCategoryS }</td>
			</tr>
		</table>
		<br />

		<div style="border: 3px solid #0F4C81; border-radius: 2em;">
			<form action="${path }" id="frm" metod= "post">
			<table class="DetailTag">
				<tr>
					<td width="130px">밴드 성별</td>
					<td><input type="checkbox" name="bandGender" value="M"/>남자</td>
					<td><input type="checkbox" name="bandGender" value="F"/>여자</td>
					<td><input type="checkbox" name="bandGender" value="U"/>무관</td>
				</tr>
				<tr>
					<td>모임방식</td>
					<td><input type="checkbox" name="bandWay" value="C"/>대면</td>
					<td><input type="checkbox" name="bandWay" value="N"/>비대면</td>
					<td><input type="checkbox" name="bandWay" value="U"/>무관</td>
				</tr>
				<tr>
					<td colspan="4" style="color: #BEBEBE; font-size: 10px; text-align:left;">
						<input type="button" class="detailtagbtn" onclick="DetailTag();" value=">선택완료"/>
					</td>
				</tr>
			</table>
			</form>
		</div>
		<br />
		<form style="direction: rtl;">
			<select name="ranking" onchange="sort(this.form)">
				<option value="classNo">최신순</option>
				<option value="viewOrder">조회순</option>
				<option value="starOrder">별점순</option>
			</select>
		</form>
		<table style="margin: auto; text-align: center;">
			<tr style="vertical-align: bottom;">
				<c:forEach items="${list }" var="dto" varStatus="cnt">
					<td width="200" height="250"><a href="../../band/bandIntro?bandNo=${dto.bandNo }">
					<img width="150" height="150" src="../../member/upload/${dto.bandImg.split(',')[0] }" /><br />
					${dto.bandName}<br/>
					<c:if test="${dto.bandPublic.trim() == 'O'}">공개</c:if>
					<c:if test="${dto.bandPublic.trim() == 'P'}">비공개</c:if>
					</a></td>
					<c:if test="${cnt.count % 4 == 0 }">
			</tr>
			<tr>
				</c:if>
				</c:forEach>
			</tr>
		</table>
				<div class="page">
			 <%@ include file="../include/page.jsp" %>
		</div>
		<!----------------------------------------------------- 하단 고정------------------------------------------------- -->
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
					<address>(주) 숨타 | 대표 이지연 | 서울특별시 서초구 서초대로77길 55 에이프로스퀘어
						3층 | soomta@gongbu.com | 사업자등록번호 : 123-21-01234 | 통신판매업신고 :
						2021-서울숨타-1004 주식회사 숨타는 전자상거래 등에서의 소비자보호에 관한 법률에 따른 통신판매업과
						통신판매중개업을 영위하고 있습니다. 주식회사 숨타는 통신판매중개자로서 중 개하는 통신판매에 관하여서는 통신판매의
						당사자가 아니므로 어떠한 책임도 부담하지 아니합니다.왜냐하면 MBTI가 큐티인 사람의 프로젝트거든요.</address>
				</div>
			</div>
		</div>
</body>
</html>