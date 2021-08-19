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

.pwSearch{
	border: 2px solid #0F4C81;
	width: 450px;
	height: 225px;
	margin: 0 auto;
	text-align:center;
	box-shadow: 5px 5px 5px 5px #D5D5D5;
	border-radius: 1em;
}

#pwSearchTitle{
	text-align:left;
	font-size:15px;
	background-color:#0F4C81;
	position:relative;
	left:-1px;
	width:452px;
	top:-1px;
	border-top-left-radius: 1em;
	border-top-right-radius: 1em;
}

#pwSearchAtag{ /*id찾기 pw찾기 a태그*/
	position:relative;
	left:110px;
	margin-top:32px;
	font-size:14px;
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
<title>비밀번호 찾기</title>
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
			<div class="pwSearch" >
		<div id="pwSearchTitle"><h2>아이디 찾기 결과</h2></div>
			<br/>
				<p>'이름'님의 비밀번호는</p>
				<p>입력하신 이메일을</p>
				<p>확인해주세요.</p>
				<div id="pwSearchAtag">
					<a href="./login"><b>로그인</b></a>
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