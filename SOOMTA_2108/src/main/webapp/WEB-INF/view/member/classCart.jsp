<!-- 클래스/밴드 리스트  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
.classCartTitle {
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
	text-align: center;
	padding-top: 60px;
	padding-bottom: 90px;
}

.classCartForm{
	border: 2px solid #0F4C81;
	padding:20px;
	width: 500px;
	height: 355px;
	display: inline-block;
}


.tagClassCart{
	padding-top: 130px;
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
/*테이블 css*/
table td,th{

	padding: 9px;
}
th{
	width: 250px;
}
td{
	width: 200px;
	text-align: left;
}
#cartbnt{
	position: relative;
	bottom: -26px;
}
#carbntOk{
	border:none;
	border-right:0px;
	border-top:0px;
	boder-left:0px;
	boder-bottom:0px;
	background:#fff;
	color: #0F4C81;
	font-size: 16px;
}
</style>
<meta charset="UTF-8">
<title>결제</title>

</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA"
			onclick="location.href='/SOOMTA_2108/main'" />
		<!-- 로그인 안된 경우 -->
		<!-- 멤버 -->
		<div class="nav">
					<div class="nav-item">
						<a href="<c:url value='/member/myPage'/>">마이페이지</a>
					</div>

				<!-- 로그아웃 -->
				<div class="nav-item">
					<a href="<c:url value='/soomta/logOut'/>">로그아웃</a>
			</div>
	</div>
	</div>
	<!-- 메인 -->
	<div class="classCartTitle">
		<h1 align="center" style="font-size:200%;">클래스 가입하기</h1>
		<p align="center" style="font-size:20px;">${dto.className }</p>
	</div>
	<div class="main">
		<form name="classCart" action="classCartOk" method="post">
		<input type="hidden" name="classNo" value="${dto.classNo }"/>
		<input type="hidden" name="tutorId" value="${dto.tutorId }"/>
		<div class="classCartForm">
			<table>
				<tr>
					<th>구매번호</th>
					<td id="tdvalue"><input name="purchaseNo" value="${purchaseNo }"/></td>
				</tr>
				<tr>
					<th>${dto.className }</th>
					<td colspan="2">${dto.classPrice } 원</td>
				</tr>
				<tr>
					<th>학습 기간 </th>
					<td><fmt:formatDate value="${dto.classStart }" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate value="${dto.classEnd }" pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr>
					<th>인원 </th>
					<td>${dto.classTotal } 명</td>
				</tr>
				<tr>
					<th>수업 방식 </th>
					<td> 
					<c:if test="${dto.classWay.trim() == 's'}">과외</c:if>
					<c:if test="${dto.classWay.trim() == 'g'}">그룹</c:if>
					<c:if test="${dto.classWay.trim() == 'n'}">비대면</c:if>
					</td>
				</tr>
				<tr>
					<th>결제 수단 </th>
					<td colspan="2"><!-- 결제수단선택 옵션 -->
						<select name="purchaseMethod">
							<option value="">선택</option>
							<option value="c">신용카드</option>
							<option value="m">무통장</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>결제 정보</th>
					<td colspan="2">
						<input type="text" name="purchaseInformation"/>
					</td>
				</tr>
			</table>
			<div id="cartbnt">
			<input id="carbntOk" type="submit" value="결제하기">&nbsp;&nbsp;&nbsp;<a href="javascript:history.back();">취소하기</a>
			</div>
		</div>
		</form>
	</div>
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