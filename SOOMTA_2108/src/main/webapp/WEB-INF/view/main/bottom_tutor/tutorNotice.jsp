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

.top {
	width: 800px;
	margin: 30px auto 10px auto;
	align-items: center;
	text-align: center;
}
/*중앙 구역 분할 */
.main {
	width: 800px;
	margin: 0 auto;
}

.mainTitle {
	background-color: #0F4C81;
	color: white;
	text-align: center;
	padding-top: 10px;
}

.mainTitle p {
	padding-bottom: 15px;
}

.mainTitle a {
	color: white;
	margin:0 15px;
}

.content a {
	color: black;
}

.content a:visited {
	coloc: black;
}

.content a:hover {
	color: black;
}

.mainTitle a:visited {
	color: white;
}

.mainTitle a:hover {
	color: white;
}
/*이미지 사이즈 관련 스타일*/
img {
	width: auto;
	height: 100%;
}
/* 테이블 스타일 */
.table{
margin:20px auto 25px auto;}
table {
    width: 100%;
    border-top: 2px solid #0F4C81;
    border-collapse: collapse;
  }
  
thead{
 background-color: #0F4C81; 
 color: white; 
}
tbody  th, td {
    border-bottom: 1px solid #0F4C81;
    padding: 5px;
    text-align: center;
  }

  tbody tr:nth-child(2n) {
    background-color:#F4F7F8; 
    
  }
td a {
	font-weight:bold;
	color:black;
}
td a:hover {
	font-weight:bold;
	color:black;
}
td a:link {
	font-weight:bold;
	color:black;
}
td a:visited {
	font-weight:bold;
	color:black;
}
td a:active {
	font-weight:bold;
	color:black;
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
<title>튜터안내</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="top">
		<img class="logo" src="<c:url value='/images/soomta_logo.png'/>"
			alt="SOOMTA" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" />
	</div>

	<!-- 중앙 -->
	<div class="main">
		<div class="mainTitle">
			<h1>공지사항</h1>
			<p>
				<a href="<c:url value='/help/tutorNotice'/>">공지사항</a> <a
					href="<c:url value='/help/tutor'/>">이용안내</a> <a
					href="<c:url value='/help/tutorQ'/>">자주 묻는 질문</a>
			</p>
		</div>
	<div class="table">
	<table><thead>
		<tr style="padding:10px; height:30px;">
			<th width="10%">No.</th>
			<th width="55%">제목</th>
			<th width="25%">작성일</th>
			<th width="10%">조회수</th>
		</tr></thead><tbody>
		<c:if test="${!empty tNotice }">
		<c:forEach items="${tNotice }" var="dto">
		<c:set var="i" value="${i+1 }"/>
			<tr>
				<td>${i }<input type="hidden" value="${dto.faqNo }"/></td>
				<td><a href="tutorNoticeC?faqNo=${dto.faqNo }">${dto.faqTitle }</a></td>
				<td><fmt:formatDate type="date" pattern="yyyy-MM-dd" value="${dto.faqDate}"/></td>
				<td>${dto.faqHit }</td>
			</tr></c:forEach></c:if>
	<c:if test="${empty tNotice }"><tr><th colspan="4">등록된 공지사항이 없습니다.</th></tr></c:if></tbody>
	</table>
	</div>
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