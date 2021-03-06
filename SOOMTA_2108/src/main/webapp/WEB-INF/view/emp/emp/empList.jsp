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
	margin: 50px auto 70px auto;
}
.table{
width:800px;
margin:0 auto;
}
/* 테이블 스타일 */
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
/*검색 버튼 스타일*/
.btn {
	height: 30px;
	background-color: transparent;
	color: #0F4C81;
	font-weight: bold;
	border: none;
}
/*검색 부분*/
.search{
	margin: 0px auto;
	text-align: center;
}
/*등록 버튼 스타일*/
.joinbtn {
	background-color: transparent;
	color: #0F4C81;
	font-weight: bold;
	border: none;
	height: 30px;
	margin-left: 10px;
}

/*페이지 부분*/
.page{
margin-top:40px;
}
/*페이지 스타일*/
.page_wrap {
	text-align:center;
	font-size:0;
 }
.page_nation {
	display:inline-block;
}
.page_nation a {
	display:block;
	margin:0 3px;
	float:left;
	width:28px;
	height:28px;
	line-height:28px;
	font-size:15px;
	color:#42454c;
	text-decoration:none;
}
.page_nation span {
	display:block;
	margin:5px 3px 3px 3px;
	float:left;
	width:28px;
	height:28px;
	line-height:28px;
}
.page_nation a.active {
	color:#0F4C81;
	font-weight: bold;
	font-size:16px;
}
.page_nation a:hover:not(.active) {
	background-color: #F4F7F8;
	color: #0F4C81;
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
<!-- 관리자 id 클릭 시 관리자 정보 페이지로 이동 알림창 -->
<script>
$(document)
.ready(
		function() {
			$('.empInfo')
					.click(
							function() {
								alert('잠시 후 관리자 정보 페이지로 이동합니다.');
							});
		});
</script>
<!-- 관리자 등록 클릭 시 관리자 등록 페이지로 이동 알림창 -->
<script>
$(document)
.ready(
		function() {
			$('.joinbtn')
					.click(
							function() {
								alert('잠시 후 관리자 등록 페이지로 이동합니다.');
							});
		});
</script>
<!-- 모두 체크/해제 -->
<script type="text/javascript">
function allCheck(){
	if($("#allCk").is(":checked")){
		$("input[name=rowCk]").prop("checked",true);
	}else{
		$("input[name=rowCk]").prop("checked",false);
	}
}
</script>
<!-- 체크한 직원 일괄 삭제 -->
<script type="text/javascript">
function ckDel(){
	var empIds = '';
	var ck = $("input[name='rowCk']");
	for(var i=0; i<ck.length; i++){
		if(ck[i].checked){
			empIds += ck[i].value+",";
		}
	}
	if(empIds.length == 0){
		alert('선택된 관리자가 없습니다.\n삭제할 관리자를 선택하세요.');
	}else{
		var delCk = confirm("정말 삭제하시겠습니까?\n삭제 후 복구 할 수 없습니다.");
		if(delCk){
			location.href="empCkDel?empIds="+empIds;
		}else{
			return false;
		}
	}
}
</script>
<meta charset="UTF-8">
<title>관리자 리스트</title>
</head>
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
	<div class="table">
	<c:if test="${!empty empList }">
	<table><thead>
	<tr style="height:80px;">
				<th colspan="5" style="font-size: 25px; padding-right:100px; text-align:right; ">등록 된 관리자 리스트</th>
		<th style="text-align:right; color:#ffff; font-size:14px; font-weight:bolder; padding-right: 5px; padding-top:50px;">
		( 총 ${count }명 )</th></tr>		
		<tr style="padding-bottom:20px; height:40px;">
			<th width="3%"><input type="checkbox" id="allCk" onclick="allCheck();"></th>
			<th width="7%" style="text-align:left; margin-left:5px;">No.</th>
			<th width="30%">아이디</th>
			<th width="20%">이름</th>
			<th width="20%">담당 파트</th>
			<th width="20%">입사일</th>
		</tr></thead><tbody>
		<c:forEach items="${empList }" var="dto">
		<c:set var="i" value="${i+1}"/>
			<tr>
				<td><input type="checkbox" name="rowCk" id="rowCk" value="${dto.empId }"/></td>
				<td style="text-align:left; margin-left:5px;">${i+no-1 }</td>
				<td><a href="empInfo?empId=${dto.empId }" class="empInfo">${dto.empId }</a></td>
				<td>${dto.empName }</td>
				<td>${dto.empJob}</td>
				<td><fmt:formatDate value="${dto.hireDate }" type="date" pattern="yyyy-MM-dd"/></td>
			</tr>
		</c:forEach></tbody>
	</table></c:if>
	<c:if test="${empty empList }">
	등록된 직원 없습니다.</c:if>
	<div style="float:right; margin-bottom:10px;">
	<input type="button" class="btn" onclick="ckDel();" value="선택 삭제"/>
	<input type="button" class="joinbtn" value="관리자 등록" onclick="location.href='empJoin'" /></div>
	<div class="page">
			 <%@ include file="../../include/page.jsp" %></div>
	<!-- https://jg-han.tistory.com/38 참고해보기
				https://dotheright.tistory.com/218 참고해보기(페이징 포함)
			 -->
			<div class="search">
				<form>
				<select name="ctgr">
				<option value="id">ID</option>
				<option value="name">이름</option>
				<option value="job">담당 파트</option>
				</select>
				<input type = "text" name="search" value=""/>
				<input type="submit" class="btn" value="검색"/>
				</form>
			</div>
			</div>
	</div>

	
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