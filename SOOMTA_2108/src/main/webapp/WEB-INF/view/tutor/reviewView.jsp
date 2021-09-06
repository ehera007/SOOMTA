<!-- 클래스/밴드 리스트  -->
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
	font-size: 12px;
}


/*중앙 구역 분할 */
.reviewPageTitle {
	background-color: #0F4C81;
	color: white;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 15px;
}

.main {
	width: 800px;
	margin: 0 auto;
	z-index: 2;
	border:2px solid #0F4C81;
	display:inline;
}

/*후기 테이블*/
table{
	width:400px;
	height: 400px;
	border:2px solid #0F4C81;
	box-shadow: 5px 5px 5px 5px #D5D5D5;
	display:inline-block;
	margin-right:50px;
	margin-bottom: 50px;
	position: relative;
	left: 21%;
	top: 30px;
}

table td, th{
	padding:10px;
	vertical-align:top;
}

table th{
	width:100px;
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
</style>
<meta charset="UTF-8">
<title>마이클래스리스트</title>

</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA"
			onclick="location.href='/SOOMTA_2108/main'" />
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
	<!-- 메인 -->
	<div class="reviewPageTitle">
		<h1 align="center" style="font-size:160%;">${dto.className }</h1>
		<h1 align="center" style="font-size:160%;">
		<fmt:formatDate value="${dto.classStart }" pattern="yyyy-MM-dd"/>
		~ 
		<fmt:formatDate value="${dto.classEnd }" pattern="yyyy-MM-dd"/>
		</h1>
		<p align="center" style="font-size:12px;">수강생 수 : 10 / 리뷰 작성자 수 ${reviewCount }</p>
		<p align="center" style="font-size:12px;">평균 강의 만족도 : ${classSatisfyCount } / 평균 강사 만족도 : ${tutorSatisfyCount }</p>
	</div>
	<br/>

	<c:if test="${!empty list }" >
		<c:forEach items="${list }" var="dto" varStatus="cnt">
		<table>
			<tr>
				<th height=50px;>강의 만족도 </th>
				<td>${dto.classSatisfy }</td>
			</tr>
			<tr>
				<th height=50px;>강사 만족도</th>
				<td>${dto.tutorSatisfy }</td>
			</tr>
			<tr>
				<th height=200px;>후기 내용</th>
				<td>${dto.reviewContents }</td>	
			</tr>
		</table>
		<c:if test="${cnt.count % 2 == 0 }">
		<br/>
		</c:if>
		</c:forEach>
	</c:if>
		
		<c:if test="${empty list }">
		<div class="main">
			<h2>
			등록된 후기가 없습니다 !<br/>
			지금 바로 가입해보세요 :)
			</h2>
		</div>
		</c:if>
	
	<br/>
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