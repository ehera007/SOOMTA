<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/include/mainStyle.css'/>"
	media="all" type="text/css" />
<style type="text/css">
/*중앙*/
.main {
	width: 800px;
	margin: 0 auto;
}
.main h1{
text-align:center; 
color:#0F4C81;
margin:50px auto 15px auto;
}
table {
    border: 2px solid #0F4C81;
    border-radius: 12px;
    box-shadow: 3px 3px 3px 3px #D5D5D5;
    border-spacing: 0px;
    margin: 0 auto 70px auto;
    width: 600px;
  }
thead th {
	height: 40px;
   background-color: #0F4C81;
   color: white;
   font-size: 20px;
   border-radius: 8px 8px 0px 0px;
}
tbody{
	height: 140px;
	font-size: 18px;
	vertical-align: center;
}
tfoot{
	height: 40px;
}
tfoot a{
	color: #0F4C81;
	font-weight: bold;
	padding-left: 490px;
}
tfoot a:hover{
	color: #0F4C81;
	font-weight: bold;
	padding-left: 490px;
}
tfoot a:link{
	color: #0F4C81;
	font-weight: bold;
	padding-left: 490px;
}
tfoot a:visited{
	color: #0F4C81;
	font-weight: bold;
	padding-left: 490px;
}
.id {
	color: #0F4C81;
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
<title>환영합니다</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
			<img class="logo" src="<c:url value='/images/soomta_logo.png'/>"
			alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" />
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
	</div>
	<!-- 중앙 : 회원가입 확인 -->
		<div class="main">
			<h1>숨타와 함께 튜터 활동을 해보세요!</h1>
			<table>
			<thead><tr>
               <th>튜터등록 완료</th>
         	</tr></thead>
         	<tbody><tr>
				<th rowspan="2">
			'<span class="id">${dto.tutorId }</span>'님  환영합니다<br/>
				튜터 등록이 완료되었습니다! <br/> 강의 등록은 이메일 인증 후 할 수 있어요 :) </th></tr>
				<tr></tr>
    			</tbody>
    		<tfoot><tr>
    			<td>
				<a href="<c:url value='/soomta/login'/>">로그인 하기</a></td>
			</tr></tfoot>
			</table>
			</div>
  	
	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;" href="#" class="Top">
		<img src="<c:url value='/images/top.png'/>" alt="topicon"/>
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