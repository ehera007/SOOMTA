<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/include/mainStyle.css'/>"
	media="all" type="text/css" />
<style type="text/css">
@charset "UTF-8";
/*중앙 main*/
.main {
	margin: 20px auto;
}
/* 테이블 스타일 */
table {
	border: 2px solid #0F4C81;
	border-radius: 12px;
	box-shadow: 3px 3px 3px 3px #D5D5D5;
	border-spacing: 0px;
	margin: 50px auto 70px auto;
	width: 650px;
}

thead th {
	height: 50px;
	background-color: #0F4C81;
	color: white;
	font-size: 25px;
	border-radius: 8px 8px 0px 0px;
}

tbody th {
	padding-top: 30px;
	width: 30%;
}

tbody td {
	padding-top: 30px;
	width: 70%;
}

tbody td a {
	font-size: 12px;
	color: #0F4C81;
	font-weight: bold;
	margin-left: 3px;
}

.btn {
	background-color: transparent;
	color: #0F4C81;
	font-weight: bold;
	margin: 0px 10px 10px 10px;
	border: none;
}

.allbtn {
	width: 180px;
	margin: 0 auto;
}
</style>
<!-- TOP아이콘 클릭 시 부드럽게 위로 올라가기 -->
<script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
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
<!-- 수정 확인 알림창 -->
<script type="text/javascript">
function funcCon(){
	var cfm = confirm('정말 수정하시겠습니까?\n*수정을 원하지 않으시면 취소를 눌러주세요.');
	if(cfm){
		document.getElementById('frm').submit();
	}else{
		return false;
	}
}
</script>
<meta charset="UTF-8">
<title>튜터 수정</title>
</head>
<body>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">

		<img class="logo" src="<c:url value='/images/soomta_logo.png'/>"
			alt="SOOMTA" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" />
		<div class="nav">
			<div class="nav-item">
				<a href="<c:url value='/emp/main'/>">마이페이지</a>
			</div>
			<div class="nav-item">
				<a href="<c:url value='/soomta/logOut'/>">로그아웃</a>
			</div>
		</div>
	</div>


	<!-- 중앙 -->
	<div class="main">
		<form action="tutorProfileModOk" method="post" name="frm" onsubmit="return funcCon()"> 
<input type="hidden" name="tutorId" value="${tutor.tutorId }"/>
		<table><thead>
			<tr style="background-color: #0F4C81; color: white; font-size: 25px; padding: 10px">
				<th colspan="2">튜터 '${tutor.tutorId }'의 프로필 수정</th>
			</tr></thead>
		<tbody>
			<tr><th>ID</th><td>${tutor.tutorId }</td></tr>
			<tr><th>자격증</th><td><input type="text" name="tutorCertification" value="${tutor.tutorCertification }" size="53"/></td></tr>
			<tr><th>경력</th><td><input type="text" name="tutorCareer" value="${tutor.tutorCareer }" size="53"/></td></tr>
			<tr><th>최종학력</th><td>
			<input type="text" name="tutorFinalEdu" value="${tutor.tutorFinalEdu }" size="53"/>
			</td></tr>
			<tr><th>응답가능시간</th><td><input type="text" name="tutorRespond" value="${tutor.tutorRespond }" size="53"/></td></tr>
			<tr><th>선호방식</th><td>
			<input type="text" name="tutorLikearea" value="${tutor.tutorLikearea}" size="53"/>
			</td></tr>
			<tr><th>소개</th><td><textarea name="tutorIntroduce" value="${tutor.tutorIntroduce}" rows="20" cols="55"/></textarea></td></tr>
			<tr><th>이미지</th><td><c:if test = "${tutor.tutorImage == null}" >미입력</c:if>
				 <c:if test = "${tutor.tutorImage != null}">${tutor.tutorImage}</c:if></td></tr>
			<tr>
				<th colspan="2"><div class="allbtn"><input class="btn" id="finish" type="submit" value="수정완료"/> 
				<input class="btn" type="button" class="btn" value="수정취소"
					onclick="javascript:history.back()" /></div></th>
			</tr></tbody>
		</table>
</form></div>

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