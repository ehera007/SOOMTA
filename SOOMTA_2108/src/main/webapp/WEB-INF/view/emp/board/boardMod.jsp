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
th {
    padding-top: 30px;
    width:25%;
vertical-align: top;
  }
  
  td{
    padding-top: 30px;
  width:75%;
  margin-right:10px;
  }
  
  .btn{
	height: 30px;
	background-color: transparent;
	color: #0F4C81;
	font-weight: bold;
	margin: 30px 10px 10px 10px;
	border: none;
}
.file{
	padding-bottom:10px;
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
<!-- select box e.value-->
<script>
function ctgrChange(){
	var soomta=["회사소개","서비스안내","인재채용"]
	var tutor=["공지사항", "이용안내", "자주묻는질문"];
	var member=["공지사항", "이용안내", "자주묻는질문"];
	var policy=["이용약관","개인정보처리방침","환불정책","사업자정보확인"]
	var target=document.getElementById("faq_ctgr2");
	
	if('${faq.faqCategory}'=="tutor") var d = tutor;
	else if('${faq.faqCategory}' == "member") var d = member;
	else if('${faq.faqCategory}' == "soomta") var d = soomta;
	else if('${faq.faqCategory}' == "policy") var d = policy;
	
	target.options.length = 0;
	
	for(x in d){
		var opt = document.createElement("option");
		opt.value=d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}
}
ctgrChange();
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
<title>게시글 수정</title>
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
<form action="boardModOk?faqNo=${faq.faqNo }" method="post" name="frm" enctype="multipart/form-data" onsubmit="return funcCon()"> 
<input type="hidden" name="faqNo" value="${faq.faqNo }"/>
<table align="center"><thead>
			<tr>
				<th colspan="2"
					style="background-color: #0F4C81; color: white; font-size: 25px; padding: 10px">관리자
					게시글 수정</th>
			</tr></thead>
			<tr>
				<th>No.</th>
				<td>${faq.faqNo}</td>
			</tr>
			<tr>
				<th>분류</th>
				<td>
				<select id="faq_ctgr1" name="faqCategory" onchange="ctgrChange(this)">
						<option value="soomta" <c:if test="${faq.faqCategory == 'soomta'}">selected</c:if> >숨타</option>
						<option value="tutor"  <c:if test="${faq.faqCategory == 'tutor'}">selected</c:if>>튜터안내</option>
						<option value="member" <c:if test="${faq.faqCategory == 'member'}">selected</c:if>>고객센터</option>
						<option value="policy" <c:if test="${faq.faqCategory == 'policy'}">selected</c:if>>하단정보</option>
				</select>
				<select id="faq_ctgr2" name="faqCtgrS" style="margin-left:5px;">
						<option value="option2">--세부--</option>
						<c:if test="${faq.faqCategory == 'soomta'}">
						<option value="회사소개" <c:if test="${faq.faqCtgrS == '회사소개'}">selected</c:if> >회사소개</option>
						<option value="서비스안내" <c:if test="${faq.faqCtgrS == '서비스안내'}">selected</c:if> >서비스안내</option>
						<option value="인재채용" <c:if test="${faq.faqCtgrS == '인재채용'}">selected</c:if> >인재채용</option></c:if>
						<c:if test="${faq.faqCategory == 'tutor'}">
						<option value="공지사항" <c:if test="${faq.faqCtgrS == '공지사항'}">selected</c:if> >공지사항</option>
						<option value="이용안내" <c:if test="${faq.faqCtgrS == '이용안내'}">selected</c:if> >이용안내</option>
						<option value="자주묻는질문" <c:if test="${faq.faqCtgrS == '자주묻는질문'}">selected</c:if> >자주묻는질문</option></c:if>
						<c:if test="${faq.faqCategory == 'member'}">
						<option value="공지사항" <c:if test="${faq.faqCtgrS == '공지사항'}">selected</c:if> >공지사항</option>
						<option value="이용안내" <c:if test="${faq.faqCtgrS == '이용안내'}">selected</c:if> >이용안내</option>
						<option value="자주묻는질문" <c:if test="${faq.faqCtgrS == '자주묻는질문'}">selected</c:if> >자주묻는질문</option></c:if>
						<c:if test="${faq.faqCategory == 'policy'}">
						<option value="이용약관" <c:if test="${faq.faqCtgrS == '이용약관'}">selected</c:if> >이용약관</option>
						<option value="개인정보처리방침" <c:if test="${faq.faqCtgrS == '개인정보처리방침'}">selected</c:if> >개인정보처리방침</option>
						<option value="환불정책" <c:if test="${faq.faqCtgrS == '환불정책'}">selected</c:if> >환불정책</option>
						<option value="사업자정보확인" <c:if test="${faq.faqCtgrS == '사업자정보확인'}">selected</c:if> >사업자정보확인</option></c:if>
				</select></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="faqTitle" value="${faq.faqTitle }"size="53" required/>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="faqContents"rows="20" cols="55" required>${faq.faqContents}</textarea></td>
			</tr>
			<tr>
				<th>기존 파일</th>
				<td>
				<c:forTokens items="${faq.faqImg  }" delims="," var="faqImg">
					<div class="file"><span id="fileName">${faqImg } </span> 
					<input type="button" id = "btn" value="삭제" 
						onclick = "fileDel(this)"/><br/></div>
				</c:forTokens></td></tr>
			<tr><th>삭제 파일</th><td><input type="text" name="fileDel1" id = "fileDel1" size="53"/></td></tr>
			<tr><th>파일 추가 </th><td><input type="file" name="faqImg" multiple="multiple"/></td>
			</tr>
			<tr>
				<th colspan="2"><div class="allbtn"><input class="btn" type="submit" value="수정완료"/> 
				<input class="btn" type="button" class="btn" value="수정취소"
					onclick="javascript:history.back();" /></div></th>
			</tr>
		</table>
</form></div>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
	function fileDel(btn){
			var delFile = $("#fileDel1").val()
			if($(btn).attr("value") == "삭제"){
				$(btn).attr("value","삭제취소");
				$("#fileDel1").val(
						$(btn).parent().children("#fileName").text().trim()+"," 
						+ delFile)
			}else{
				$(btn).attr("value","삭제");
				fileName = $(btn).parent().children("#fileName").text().trim()+",";
				$("#fileDel1").val(delFile.replace(fileName,""));
			}
	}
</script>
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