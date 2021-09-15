<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
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
.mypageTitle {
	background-color: #0F4C81;
	color: white;
	text-align: center;
	padding-top: 10px;
	padding-bottom: 15px;
}

.dropMenu {
	align-items: center;
	margin: 50px 0px;
	display: flex;
	justify-content: space-evenly;
}

.imgBox {
	border: 1px solid black;
	width: 200px;
	height: 310px;
	background-color: #0F4C81;
}

.imgTitle {
	border: 1px solid black;
	width: 200px;
	height: 200px;
}

.dropList li {
	background-color: #0F4C81;
	text-align: center;
	margin: 10px 0px;
	font-size: 15px;
}

.dropList a:link {
	color: white;
	background-color: #0F4C81;
}

.dropList a:visited {
	color: white;
	background-color: #0F4C81;
}

.dropList a:hover {
	color: white;
}

.dropMenu ul {
	display: none;
}

.imgBox:hover ul {
	display: block;
}

/*고정 외 중앙 테이블 스타일*/

.bandjoinForm a:visited {
	color: #0F4C81;
}
.bandjoinForm a:link {
	color: #0F4C81;
}
.bandjoinForm a:hover{
color: #0F4C81;
}

 table {
    border: 2px solid #0F4C81;
    border-radius: 12px;
    width: 500px;
    height:500px;
    margin:20px auto;
    box-shadow: 3px 3px 3px 3px #D5D5D5;
    border-spacing: 0px;
  }
  thead th {
   height: 35px;
   background-color: #0F4C81;
   color: white;
   font-size: 25px;
   border-radius: 8px 8px 0px 0px;
}
th{
	padding-left: 40px;
}
td{
	padding-left: 20px;
}
  
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">

			<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
		<div class="nav">
			<div class="nav-item">
				<a href="/member/myPage">마이페이지</a>
			</div>
			<div class="nav-item">
				<a href="/soomta/logOut'/">로그아웃</a>
			</div>
		</div> 
	</div>
  <!---------------------------------------------------------------------------------------->
	<div class="bandjoinForm">
		<form action="bandDetailJoinOk?bandNo=${dto.bandNo}" method="post" name="bandfrm" >
		<input type="hidden" name="bandNo" value="${dto.bandNo}" />
		<input type="hidden" name="bandPublic" value="${dto.bandPublic}" />
		<input type="hidden" name="memId" value="${memPerData.memId}" />
		<input type="hidden" name="memDob" value="<fmt:formatDate value='${memPerData.memDob}' 
		             pattern="yyyy-MM-dd"/>" />
		<input type="hidden" name="memGender" value="${memPerData.memGender}" />
		
		<table>
			<thead>
         		<tr style="background-color: #0F4C81; color: white; font-size: 25px;" > 
            	<th  colspan="2" style="padding: 10px 0px 10px 10px; "> 밴드 가입 </th>
         </tr></thead>

			<tr><th>이름</th>
				<td>${memPerData.memName}</td></tr>
			<tr><th>생년월일</th>
				<td><fmt:formatDate value="${memPerData.memDob}" 
		             pattern="yyyy-MM-dd"/></td></tr>
			<tr><th>성별</th>
				<td><c:if test="${memPerData.memGender == 'M'}">남성</c:if>
         			<c:if test="${memPerData.memGender == 'F'}">여성</c:if>
				</td></tr>
			<tr><th style="height:180px;">자기 소개</th>
				<td><input type="text" name="bandJoinIntro" style="width:270px; height:150px;"/></td></tr>
			
			<tr><th colspan="3"align="center" style="padding-left: 0px;padding-right: 20px;">
					<input type="submit" value="밴드가입" 
						style="border: none; font-size: 16px; background: transparent; color: #0F4C81; font-weight: bold;" />
            
					<input type="button"  value="취소" style="border: none;font-size: 16px;font-weight: bold;
					 	background: transparent; color: #0F4C81; padding-left: 30px;"
						onclick="javascript:history.back();" />
				</th></tr>
				
			</table> 
		</form>
	</div>

<!-- --------------------------------------------------->
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
							<li><a href="">회사소개</a></li>
							<li><a href="">서비스소개</a></li>
							<li><a href="">인재채용</a></li>
						</ul>

					</div>
					<div class="footer-menu">
						<p>튜터안내</p>
						<ul>
							<li><a href="">공지사항</a></li>
							<li><a href="">이용안내</a></li>
							<li><a href="">자주 묻는 질문</a></li>
						</ul>
					</div>
					<div class="footer-menu">
						<p>고객센터</p>
						<ul>
							<li><a href="">공지사항</a></li>
							<li><a href="">이용안내</a></li>
							<li><a href="">자주 묻는 질문</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottommenu">
				<div class="footer-submenu">
					<a href="#">이용약관 </a> <a href="#">개인정보처리방침 </a> <a href="#">환불정책
					</a> <a href="#">사업자정보확인 </a>
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