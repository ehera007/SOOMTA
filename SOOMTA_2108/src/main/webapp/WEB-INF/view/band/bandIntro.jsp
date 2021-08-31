
<!-- 클래스/밴드 리스트  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>SOOMTA</title>

	</head>
	<style type="text/css">
	/**/
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

		.search {
			border: 1px solid black;
			height: 40px;
			width: 600px;
			margin: 0 auto;
			position: relative;
			/*본인 위치에서 175px만큼 왼쪽이동*/
			left: 175px;
			border-radius: 2em;
		}

		.nav {
			color: #0F4C81;
			display: flex;
			margin-left: auto;
		}

		.nav-item {
			margin: 15px;
			font-size: 12px;
		}

		/*중앙 구역 분할 */
		/*수정한부분 */
		.main {
			width: 100vw;
			margin: 0 auto;
		}

		.main_left {
			float: left;
			width: 20%;

		}

		.allcate {
			height: 30px;
		}

		.main_right {
			float: right;
			width: 60%;
			margin-right: 20%;
		}

		.allmain {
			height: 1500px;
		}

		.topcate {
			height: 30px;
		}

		.topcate-left {
			float: left;
			width: 12%;
		}

		.topcate-right {
			float: right;
			width: 88%;
		}

		.introtop {
			height: 300px;
		}

		.intro-detail1 {
      border : solid 1px;
			float: left;
			width: 48%;
			height: 300px;

		}

		.intro-detail2 {
      border : solid 1px;
			float: right;
			width: 48%;
			height: 300px;
		}

		.middle-button {
			height: 30px;
			padding: 20px 0 0 0;
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

		/*버튼 끝 */
		.classdetail {
			height: 300px;
      border : solid 1px;
		}

		.tutordetail {
			height: 300px;
      border : solid 1px;
		}

		.satisfyreview {
			height: 300px;
      border : solid 1px;
		}

		.bottom-button {
			height: 50px;
      padding : 10px 0 0 700px ;

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
	</style>

	<body>
		<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
		<div class="header">
			<img src="#" />SOOMTA
		<div class="search">검색바</div>
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
  <div class="main">
    <div class="allmain">
	    <div class="main_left" >
        <div class="allcate" style="color: #0F4C81;"> 전체카테고리 </div>
      </div>
	    <div class="main_right" >
        <div class ="topcate" > 
          <div class ="topcate-left" style="color: #0F4C81;"> 메인카테고리 </div>
          <div class ="topcate-right" style="color: #0F4C81;"> > 세부카테고리 </div>
        </div>
        <div class= "introtop">
          <div class="intro-detail1"> 강의사진</div>
          <div class="intro-detail2">
            <div class="intro-title">강의명 title </div>
            <div class="intro-price">10,000원 </div>
            <div class="intro-content1">소제목</div>
            <div class="intro-content2">내용</div>
            <div class="intro-during">학습기간</div>
            <div class="intro-memberno">수강생수</div>
            <div class="intro-classkind">수업방식</div>
            <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="bandDetail"> BAND상세홈 들어가기 </a>
            </div>
            <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="#"> 구매하기 </a>
            </div>
            </div>
        </div>
        <div class = "middle-button">
          <div class="button-4">
            <div class="eff-4">
            </div>
            <a href="#"> 강의설명 </a>
          </div>
          <div class="button-4">
            <div class="eff-4">
            </div>
            <a href="#"> 강사소개 </a>
          </div>
          <div class="button-4">
            <div class="eff-4">
            </div>
            <a href="#"> 만족도/후기 </a>
          </div>
        </div>
        <div class= "classdetail">강의 설명</div>
        <div class= "tutordetail">
          <div class= "tutordetail-main">강사소개</div>
          <div class= "tutordetail-content">강사내용</div>
          <div class= "tutordetail-time">강사응답시간</div>
          <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="#"> 강사에게 1:1 </a>
          </div>
        </div>
        <div class= "satisfyreview">만족도/후기 </div>
        <div class= "bottom-button">
            <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="#"> 문의하기 </a>
          </div>
            <div class="button-4">
            <div class="eff-4">
            </div>
            <a href="#"> 구매하기 </a>
          </div>
        </div>
	    </div>
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
  </div>
</body>
</html>