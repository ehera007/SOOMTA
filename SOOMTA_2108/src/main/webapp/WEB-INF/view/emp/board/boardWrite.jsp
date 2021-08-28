<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head><link rel="stylesheet" href="<c:url value='/include/mainStyle.css'/>" media="all"
	type="text/css" />
<style type="text/css">
@charset "UTF-8";

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
th {
    padding:10px;
    width:25%;
  }
  
  td{
    padding:10px;
  width:75%;
  margin-right:10px;
  }
  
  .btn{
	height: 30px;
	background-color: transparent;
	color: #0F4C81;
	font-weight: bold;
	margin: 10px 10px;
	border: none;
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
<!-- select box -->
<script>
function ctgrChange(e){
	var soomta=["회사소개","서비스안내","인재채용"]
	var tutor=["공지사항", "이용안내", "자주묻는질문"];
	var member=["공지사항", "이용안내", "자주묻는질문"];
	var policy=["이용약관","개인정보처리방침","환불정책","사업자정보확인"]
	var target=document.getElementById("faq_ctgr2");
	
	if(e.value=="tutor") var d = tutor;
	else if(e.value == "member") var d = member;
	else if(e.value == "soomta") var d = soomta;
	else if(e.value == "policy") var d = policy;
	
	target.options.length = 0;
	
	for(x in d){
		var opt = document.createElement("option");
		opt.value=d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}
</script>
		
<script>
$(document).ready(function(){
	$('#finish').submit(function(){
		alert('                                  게시글 등록 완료\n                     잠시 후 게시글 확인페이지로 이동합니다.');
	});
});
</script>

<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>

	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">

<img class="logo" src="<c:url value='/images/soomta_logo.png'/>" alt="SOOMTA" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
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
	<form action="boardInfo" method="post" name="frm"
		enctype="multipart/form-data">
		<table align="center">
		<thead>
			<tr>
				<th colspan="2"
					style="background-color: #0F4C81; color: white; font-size: 25px; padding: 10px">관리자
					게시글 작성</th>
			</tr></thead>
			<tr>
				<th>No.</th>
				<td>"${faq_No}"</td>
			</tr>
			<tr>
				<th>분류</th>
				<td>
				<select id="faq_ctgr1" onchange="ctgrChange(this)">
						<option value="soomta">숨타</option>
						<option value="tutor" >튜터안내</option>
						<option value="member" >고객센터</option>
						<option value="policy">하단정보</option>
				</select>
				<select id="faq_ctgr2" style="margin-left:5px;">
						<option value="option2">--세부--</option>
				</select></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" size="53" required/>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="faq_Contents" rows="20" cols="55" required></textarea></td>
			</tr>
			<tr>
				<th>파일</th>
				<td><input type="file" name="faq_Img " multiple="multiple" /></td>
			</tr>
			<tr>
				<th colspan="2">
				 <input type="reset" class="btn" value="내용 지우기" />
				<input class="btn" type="button" value="등록 취소" onclick="javascript:history.back()"/>
					<input class="btn" id="finish" type="submit"  value="게시글 등록" />
					</th>
			</tr>
		</table>
	</form>




	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;" href="#"
		class="Top"> <img src="../images/top.png" alt="topicon">
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