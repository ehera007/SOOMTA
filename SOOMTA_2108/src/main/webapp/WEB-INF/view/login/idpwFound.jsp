<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../include/mainStyle.css" media="all"
	type="text/css" />
<style>
/*중앙 구역 분할 */
*{margin: 0; padding:0;} /*idpwFind 마진, 패딩 준것*/

.main {
	width: 800px;
	margin: 0 auto;
	text-align:center;
	position:relative;
	top:30px;
	padding-bottom: 60px;
}

/*아이디 찾기*/

h1{
	color:#0F4C81;
	text-align:center;
}

h2{
	color:white;
	height:45px;
	position:relative;
	top:5px;
	left:23px;
}

table.idfindTable {
	width: 400px;
	height: 150px;
	margin: 0 auto;
}

table.pwfindTable {
	width: 400px;
	height: 100px;
	margin: 0 auto;
}

th{
	text-align:center;
}

.idFind{
	border: 2px solid #0F4C81;
	width: 600px;
	height: 330px;
	margin: 0 auto;
	text-align:center;
	box-shadow: 3px 3px 3px 3px #D5D5D5;
	border-radius: 12px;
}

.pwFind{
	border: 2px solid #0F4C81;
	width: 600px;
	height: 300px;
	margin: 0 auto;
	text-align:center;
	box-shadow: 3px 3px 3px 3px #D5D5D5;
	border-radius: 12px;
}

#idpwFindTitle{
	text-align:left;
	font-size:15px;
	background-color:#0F4C81;
	position:relative;
	width:602px;
	top:-1px;
	left:-1px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

#idFindForm{ /*id 찾기 input text위치*/
	position:relative;
	top:36px;
}

#pwFindForm{ /*pw 찾기 input text위치*/
	position:relative;
	top:56px;
}

#idpwFindInputValue{ /*input text박스 크기*/
	border: 1px solid black;
	width:250px;
	height:25px;
}

#findIdsubmit{
	margin-top:30px;
	border:none;
	background:none;
	color:#0F4C81;
}

#findPwsubmit{
	margin-top:23px;
	border:none;
	background:none;
	color:#0F4C81;
}

/*a태그 선&색바뀜 삭제*/
a:link{
	color:#0F4C81;
	text-decoration:none;
}
a:visited{
	color:#0F4C81;
	text-decoration:none;
}
a:active{
	color:#0F4C81;
	text-decoration:none;
}
a:hover{
	color:#0F4C81;
	text-decoration:none;
}

#blank{
	padding-top:2em;
}
</style>
<meta charset="UTF-8">
<title>아이디/비밀번호 찾기</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
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
	<!-- 중앙 : 검색바, 선택 -->
	<div class="main">
	<br/>
		<h1>아이디 / 비밀번호 찾기</h1>
		<br/><br/>
			<div class="idFind" >
		<div id="idpwFindTitle"><h2>아이디 찾기</h2></div>
		
		<div id="idFindForm">
			<form action="findId" method="post">
				<table class="idfindTable">
					<tr>
						<th>이름</th>
						<td><input type="text" name="memName" id="idpwFindInputValue"></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="date" name="memBirth" id="idpwFindInputValue"></td>
					</tr>
					<tr>
						<th>핸드폰</th>
						<td><input type="text" name="memPhone" id="idpwFindInputValue"/></td>
					</tr>
				</table>
				<input id="findIdsubmit" type="submit" value="ID 찾기"/>
			</form>
			</div>
		</div>
		<br/><br/><br/>
			<div class="pwFind">
			<a name="targetpw"></a>
		<div id="idpwFindTitle"><h2>비밀번호 찾기</h2></div>
		<div id="pwFindForm">
			<form action="findPw" method="post">
				<table class="pwfindTable">
					<tr>
						<th>아이디</th>
						<td><input type="text" name="memPhone" id="idpwFindInputValue"/></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="email" name="mememail" id="idpwFindInputValue"/></td>
					</tr>
				</table>
				<input id="findPwsubmit" type="submit" value="PW 찾기"/>
			</form>
			</div>
		</div>
		</div>
		<br/><br/><br/><br/>
			
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