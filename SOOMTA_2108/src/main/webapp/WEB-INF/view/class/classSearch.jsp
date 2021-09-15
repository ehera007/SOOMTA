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
.main {
	width: 800px;
	margin: 0 auto;
	z-index: 2;
}

/*검색*/
.search {
	/*border: 1px solid black;*/
	height: 40px;
	margin: 30px;
	 position: relative;
}

.searchBar {
    width: 700px;
    height:25px;
    border-radius: 30px;
    border: 2px solid #bbb;
    margin: 10px 0;
    padding: 10px 15px 10px 30px;
    outline-style: none; 
    font-family: inherit;
}

.btn{
	position:absolute;
	top: 25px;
	right: 20px;
	text-align:center;
	background-color: transparent;
	color: #6D6D6D;
	font-weight: bold;
	border: none;
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
<title>SOOMTA</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="<c:url value='/images/soomta_logo.png'/>"
			alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" />
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
		<a href="<c:url value='/emp/main'/>">마이페이지</a></div></c:if>
	<!-- 튜터 -->
	<c:if test="${logIn.grade == 'tutor' }">
	<div class="nav-item">
	<a href="<c:url value='/tutor/myPage'/>">마이페이지</a></div></c:if>
	<!-- 멤버 -->
	<c:if test="${logIn.grade == 'mem' }">
	<div class="nav-item">
	<a href="<c:url value='/member/myPage'/>">마이페이지</a></div></c:if>
	<!-- 로그아웃 -->
	<div class="nav-item">
		<a href="<c:url value='/soomta/logOut'/>">로그아웃</a></div>	
	</div>
	</c:if>
	
	</div>
	<!-- 중앙 : 검색바, 선택(마우스오버 시 이미지 변경) -->
	<div class="main">
		<div class="search">
			<form action="classSearch" name="classSearch" method="post">
				<input type = "text" name="keyWord" value="" placeholder="검색어를 입력해주세요." class="searchBar"/>
				<input type="submit" class="btn" value="검색"/>
			</form>
		</div>
		<h2>CLASS 검색결과 입니다 :)</h2>
		<c:if test="${!empty clist }">
			<table style="margin: auto; text-align: center;">
			<tr style="vertical-align: bottom;">
			<c:forEach items="${clist }" var="clist" varStatus="cnt" begin="0" end="7">
				<td width="200" height="250" >
				<a href="classDetailPage?classNo=${clist.classNo }&tutorId=${clist.tutorId}"> 
				<img width="150" height="150" src="../tutor/upload/${clist.classImg.split(',')[0] }"/><br/>
				${clist.className}<br/>
				${clist.classPrice}원
				</a>
				</td> 
				<c:if test="${cnt.count % 4 == 0 }">
				</tr><tr>
				</c:if>
			</c:forEach>
			</tr>
		</table>
		</c:if>
		<c:if test="${empty clist }">
			검색 결과가 없습니다
		</c:if>
		</div>
	
	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;" href="#"
		class="Top"> <img src="<c:url value='/images/top.png'/>"
		alt="topicon" />
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