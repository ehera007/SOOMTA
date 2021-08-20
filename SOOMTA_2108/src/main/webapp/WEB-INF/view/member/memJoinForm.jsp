<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

.joinForm a:visited {
	color: #0F4C81;
}
.joinForm a:link {
	color: #0F4C81;
}
.joinForm a:hover{
color: #0F4C81;
}

 table {
    border: 2px solid #0F4C81;
    border-radius: 12px;
    width: 600px;
    height:700px;
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
	padding-left: 70px;
}
td{
	padding-left: 40px;
}
.detail {
	color: grey;
	font-size: 12px;
	font-style: italic;
	text-align: left;
}
</style>

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
<title>회원가입</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
		<!-- 로그인 안된 경우 -->
		<div class="nav">
			<div class="nav-item">
				<a href="soomta/login">로그인</a>
			</div>
			<div class="nav-item">
				<a href="soomta/tutorJoin">튜터등록</a>
			</div>
			<div class="nav-item">
				<a href="soomta/memJoin">무료회원가입</a>
			</div>
		</div>
	</div>
	<div class="joinForm">
		<form action="memJoinOk" method="get" name="frm" 
					enctype="multipart/form-data">
		<table>
			<thead>
         		<tr style="background-color: #0F4C81; color: white; font-size: 25px;" >
            	<th  colspan="2" style="padding: 10px 0px 10px 10px; ">무료 회원가입 </th>
         </tr></thead>
			
			<tr><th>ID</th>
				<td style="padding-top: 12px;">
					<input type="text" name="memId"style="width:200px;"
					pattern="^([a-z0-9]){4,15}$" size="30"/>
					<input type="button" value="중복확인">
					<div class="detail">* 4~15자 영문/숫자 사용</div>
					</td></tr>
						
			<tr><th style="padding-bottom: 15px;">PW</th>
				<td><input type="password" name="memPw"style="width:200px;"
				pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#$%&^*]).[A-Za-z\d!@#$%&^*]{8,15}$" />
				<div class="detail">* 8~15자 영어/숫자/특수문자 1자씩 사용</div></td></tr>
			
			<tr><th>PW확인</th>
				<td><input type="password" name="memPwCon"style="width:200px;"/>
				</td></tr>
			
			<tr><th style="padding-bottom: 15px;">이름</th>
				<td><input type="text" name="memName"style="width:200px;"/>
				<div class="detail">* 성 포함 입력</div></td></tr>
			
			<tr><th>생년월일</th>
				<td><input type="date" name="memDob"style="width:200px;"/></td></tr>
			
			<tr><th>성별</th>
				<td>
					<input type="radio" name="memGender" value="M" checked/>남
					<input type="radio" name="memGender" value="F"/>여
				</td></tr>
			
			<tr><th style="padding-bottom: 15px;">핸드폰</th>
				<td><input type="text" name="memPhone"style="width:200px;"/>
				<div class="detail">* ex) 01012341234</div></td></tr>
			
			<tr><th style="padding-bottom: 15px;">이메일</th>
				<td><input type="text" name="memEmail"style="width:200px;"/>
				<div class="detail">* ex) soomta@email.com</div></td></tr>
			
			<tr><th>약관 동의</th>
				<td><input type="checkbox" name="agree1" >서비스 이용약관에 동의합니다.(필수)<br />
					<input type="checkbox" name="agree2" >이벤트, 할인 등 이메일 수신에 동의(선택)<br />
				</td></tr>
			
			<tr><th colspan="3"align="center" style="padding-right: 70px; padding-bottom: 15px;">
					<input type="submit" value="회원가입" 
						style="border: none; font-size: 16px; background: transparent; color: #0F4C81; font-weight: bold;" />
					<input type="button"  value="취소" style="border: none;font-size: 16px;font-weight: bold;
					 	background: transparent; color: #0F4C81;"
						onclick="javascript:history.back();" />
				</th></tr>
				
			</table> 
		</form>
	</div>
	<a href="<c:url value='/member/joinOk'/>">회원 가입 완료 후 확인페이지</a>
<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;"
		href="#" class="Top"> <img src="../images/top.png" alt="topicon">
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