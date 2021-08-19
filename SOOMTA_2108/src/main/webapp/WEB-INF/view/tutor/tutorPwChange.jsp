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

 table {
    border: 2px solid #0F4C81;
    width: 500px;
    height:200px;
    margin:20px auto;
    border-radius: 12px;
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
	padding-left: 24px;
}
td{
	padding-left: 40px;
}
  
  

  
</style>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		if($("#newPw").val()==""){
			alert("변경 비밀번호를 입력하세요");
			$("#newPw").focus();
			return false;
		}
		if($("#newPwCon").val()==""){
			alert("변경비밀번호확인을 입력하세요");
			$("#newPwCon").focus();
			return false;
		}else{
			if($("#newPw").val() != $("#newPwCon").val()){
				alert("비밀번호확인의 값이 다릅니다.");
				$("#newPw").val("");
				$("#newPwCon").val("");
				$("#newPw").focus();
				return false;
			}
		}
		$("#frm").submit();
	});
});
</script>

<meta charset="UTF-8">
<title>pwChange</title>
</head>
<body>

<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img src="../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
		<div class="nav">
			<div class="nav-item">
				<a href="#">마이페이지</a>
			</div>
			<div class="nav-item">
				<a href="#">로그아웃</a>
			</div>
		</div>
	</div>
	<div class="main">
		<div class="mypageTitle">
			<h1>비밀번호 변경 페이지입니다.</h1>
		</div>
	</div>
	<!-- 중앙 : 비밀번호 변경 폼 -->
		<form action="PwChagne" method="post" name="frm"> 
			<table>
					<thead>
         		<tr style="background-color: #0F4C81; color: white; font-size: 25px;" >
            	<th  colspan="2" style="padding: 12px 5px 12px 10px;">비밀번호 변경</th>
         </tr></thead>
         
				<tr><th>변경 비밀번호</th>
					<th><input type="password" name="newPw" id="newPw"/><br /></th>
				
				<tr><th>변경 비밀번호 확인</th>
					<th><input type="password" name="newPwCon" id="newPwCon"/><br /></th>
					
				<tr><td colspan="2" align="center">
					<input type="button" value="비밀변호 변경" id="btn"
					style="border: none; background: transparent; color: #0F4C81;"/>
						</td></tr>
					
				
			</table>
		</form>		
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
