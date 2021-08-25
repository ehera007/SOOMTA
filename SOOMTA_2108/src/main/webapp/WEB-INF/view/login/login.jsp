<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../include/mainStyle.css" media="all"
	type="text/css" />
<style type="text/css">
/*고정 외 중앙*/
.login {
	margin: 50px auto 100px auto;
}

.login h1,h3 {
	color: #0F4C81;
	text-align: center;
	margin:5px auto;
}
.login h1{
	font-size:40px;
}

.login a:visited {
	color: #0F4C81;
}

.login a:link {
	color: #0F4C81;
}

.login a:hover {
	color: #0F4C81;
}

table {
	border: 2px solid #0F4C81;
	width: 500px;
	height: 200px;
	border-radius: 5px;
	box-shadow: 3px 3px 3px 3px #D5D5D5;
	border-spacing: 0px;
	margin: 20px auto 100px auto;
	border-collapse: collapse;
}
th {
	border-top: 2px solid #0F4C81;
}

.id {
	padding-left: 50px;
	padding-top: 30px;
}
.pw {
	padding-left: 50px;
	padding-top:15px;
	padding-bottom: 30px;
}
tr p {
	font-size: 12px;
	color: #0F4C81;
	font-weight: bold;
	margin: 0 0;
}
.err{
	color: red;
	font-size: 12px;
	font-weight:bold;
}
tr input[type='text']{
	border: none;
	border-bottom: 1px solid #0F4C81;
	font-size: 15px;
}
tr input[type='password']{
	border: none;
	border-bottom: 1px solid #0F4C81;
	font-size: 15px;
}
tfoot{
font-size: 14px;
height:40px;
margin: 5px 5px;
}
.autoLogin {
	margin-left:10px;
	margin-right:20px;
	text-align: left;
}
/*이미지 사이즈 관련 스타일*/
img {
	width: auto;
	height: 100%;
}

</style>
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

<meta charset="UTF-8">
<title>LogIn</title>

</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="<c:url value='/images/soomta_logo.png'/>"
			alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" />
		<!-- 로그인 안된 경우 -->
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

	<!-- 중앙 : 로그인폼 -->
	<div class="login">
		<h1>로그인</h1><h3>숨타에 입장하기 :)</h3>
		<form:form action="login" method="post" name="frm"
			modelAttribute="logInCommand">
			<table>
				<colgroup>
					<col style="width: 25%">
					<col style="width: 25%">
					<col style="width: 30%">
					<col style="width: 30%">
				</colgroup>
				<tr>
					<td colspan="3" class="id"><p>ID</p>
					<form:input path="userId" value="${isId }" autofocus="true" size="30"/>
					<div class="err"> <form:errors path="userId" /> </div> 
					</td>
					<td rowspan="2"><input type="image" src="../images/login.png"
						alt="login" style="margin-right: 10px;" /></td>
				</tr>
				<tr>
					<td colspan="3"  class="pw"><p>PW</p> <form:password path="userPw" size="30"/>
						<div class="err">
							<form:errors path="userPw" />
						</div></td>
				</tr>
				<tfoot>
				<tr>
					<th colspan="2"><input type="checkbox" name="idStore" <c:if test="${!empty isId }">checked</c:if> />ID저장
					<span class="autoLogin"><input type="checkbox" name="autoLogin"/>자동로그인</span></th>
					<th colspan="2"><a href="<c:url value='/soomta/memJoin'/>">계정이 없으신가요?&nbsp;&nbsp;</a>
						<a href="searchIdPw" style="margin-right:10px;">&nbsp;&nbsp;ID/PW 찾기</a>
					
					</th>
				</tr></tfoot>
			</table>
		</form:form>
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
							<li><a href="<c:url value='/about/service'/>"
								target="_blank">서비스소개</a></li>
							<li><a href="<c:url value='/about/hire'/>" target="_blank">인재채용</a></li>
						</ul>
					</div>
					<div class="footer-menu">
						<p>튜터안내</p>
						<ul>
							<li><a href="<c:url value='/help/tutorNotice'/>"
								target="_blank">공지사항</a></li>
							<li><a href="<c:url value='/help/tutor'/>" target="_blank">이용안내</a></li>
							<li><a href="<c:url value='/help/tutorQ'/>" target="_blank">자주
									묻는 질문</a></li>
						</ul>
					</div>
					<div class="footer-menu">
						<p>고객센터</p>
						<ul>
							<li><a href="<c:url value='/help/memNotice'/>"
								target="_blank">공지사항</a></li>
							<li><a href="<c:url value='/help/member'/>" target="_blank">이용안내</a></li>
							<li><a href="<c:url value='/help/memQ'/>" target="_blank">자주
									묻는 질문</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottommenu">
				<div class="footer-submenu">
					<a href="<c:url value='/policy/service'/>" target="_blank">이용약관
					</a> <a href="<c:url value='/policy/privacy'/>" target="_blank">개인정보처리방침
					</a> <a href="<c:url value='/policy/refund'/>" target="_blank">환불정책
					</a> <a href="<c:url value='/policy/info'/>" target="_blank">사업자정보확인
					</a>
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