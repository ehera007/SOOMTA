<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
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
.mypage{
padding-top: 80px;
	padding-bottom: 80px;
}
.item{
display:flex;
justify-content: space-evenly;
margin: 10px;
table-layout: fixed;
}
.main-item {
   border: 1px solid black;
   width: 380px;
   height: 380px;
   margin-left: 250px;
   table-layout: fixed;
   margin-right: 100px;
  
    
}
.mypageTitle {
	background-color: #0F4C81;
	color: white;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 15px;
}
.dropMenu {
   align-items: center;
   display:flex;
  
   justify-content: space-evenly;
   margin-right :100px;
}
.imgBox {
   width: 250px;
   height: 250px;
   background-color: #0F4C81;
   margin: 50px 20px;
   color: white;
   text-align:center;
   font-size: 30px;
   padding-top : 30px;
   
}
.imgTitle {
	border: 1px solid black;
	width: 200px;
	height: 200px;
  
}
.dropList li {
   text-align: center;
   margin-top: 12px;
   margin-bottom: 12px;
   font-size: 20px;
   list-style:none;
}

.dropList1 li {
   text-align: center;
   margin-top: 25px;
   margin-bottom: 10px;
   font-size: 20px;
   list-style:none;
}

.dropList a:link {
   color: white;
}
.dropList a:visited {
   color: white;
}
.dropList a:hover {
   color: white;
}
.dropMenu ul {
	
	display: none;
}

.dropList1 a:link {
   color: white;
}
.dropList1 a:visited {
   color: white;
}
.dropList1 a:hover {
   color: white;
}
.dropMenu ul {
	
	display: none;
}
.imgBox ul {
	display: block;
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
<title>tutorMypage</title>

</head>
<body>
	
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img src="../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
		<div class="nav">
			<div class="nav-item">
				<a href="#">마이페이지</a>
			</div>
			<div class="nav-item">
				<a href="#">로그아웃</a>
			</div>
		</div>
	</div>
	<div class="main">
		<div class="mypageTitle">
			<h1>안녕하세요, '${tutor.tutorId}'님!</h1>
			<p>숨타와 함께 즐거운 하루 되세요 :)</p>
		</div>
	 <div class=mypage>
      <div class="item">
      <div class="main-item">그래프</div>
      
		
			<div class="dropMenu">
				<div class="imgBox">
					<div class="dropList">
						<ul>
							<h1>내정보</h1>
							<li><a href="perData">개인 정보</a></li>
							<li><a href="promanage">프로필 관리</a></li>
							<li><a href="outCon">탈퇴하기</a></li>
						</ul>
					</div>
				</div>

				<div class="dropMenu">
					<div class="imgBox" >
					<div class="dropList1">
						<ul>
							<h1>강의 정보</h1>
							<li><a href="MylectureList">내 강의 목록</a></li>
							<li><a href="newClassOpened">강의 등록</a></li>
						</ul>
					</div>
				</div>
			</div>
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
                     <li><a href="<c:url value='/about/soomta'/>" target="_blank">회사소개</a></li>
                     <li><a href="<c:url value='/about/service'/>" target="_blank">서비스소개</a></li>
                     <li><a href="<c:url value='/about/hire'/>" target="_blank">인재채용</a></li>
                  </ul>
               </div>
               <div class="footer-menu">
                  <p>튜터안내</p>
                  <ul>
                     <li><a href="<c:url value='/help/tutorNotice'/>" target="_blank">공지사항</a></li>
                     <li><a href="<c:url value='/help/tutor'/>" target="_blank">이용안내</a></li>
                     <li><a href="<c:url value='/help/tutorQ'/>" target="_blank">자주 묻는 질문</a></li>
                  </ul>
               </div>
               <div class="footer-menu">
                  <p>고객센터</p>
                  <ul>
                     <li><a href="<c:url value='/help/memNotice'/>" target="_blank">공지사항</a></li>
                     <li><a href="<c:url value='/help/member'/>" target="_blank">이용안내</a></li>
                     <li><a href="<c:url value='/help/memQ'/>" target="_blank">자주 묻는 질문</a></li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
      <div class="footer-bottom">
         <div class="footer-bottommenu">
            <div class="footer-submenu">
               <a href="<c:url value='/policy/service'/>" target="_blank">이용약관 </a> 
               <a href="<c:url value='/policy/privacy'/>" target="_blank">개인정보처리방침 </a> 
                <a href="<c:url value='/policy/refund'/>" target="_blank">환불정책
               </a> <a href="<c:url value='/policy/info'/>" target="_blank">사업자정보확인 </a>
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