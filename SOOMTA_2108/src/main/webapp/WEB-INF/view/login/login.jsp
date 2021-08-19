<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../include/mainStyle.css" media="all"
	type="text/css" />
<style type="text/css">
/*고정 외 중앙 테이블 스타일*/
.login{
  margin:50px auto;
}
.login h1{
 color:#0F4C81; 
 text-align:center;
 font-size:40px;
 }
.login a:visited {
	color: #0F4C81;
}
.login a:link {
	color: #0F4C81;
}
.login a:hover{
color: #0F4C81;}
table {
	border: 2px solid #0F4C81;
	 width: 500px;
    height:200px;
	border-radius: 12px;
	box-shadow: 3px 3px 3px 3px #D5D5D5;
	border-spacing: 0px;
	margin: 50px auto 70px auto;
	 border-collapse: collapse;
}

  th{
    border-top: 2px solid #0F4C81;
  }
  .id{
  	position:relative; 
   left:50px;
   top:10px;
  }
  .pw{
  	position:relative; 
   left:50px;
   bottom:10px;
  }
  tr p{
  font-size:10px;
  color:#BEBEBE;
  }
  /*이미지 사이즈 관련 스타일*/
img{
width:auto;
height:100%;
}
</style>
<!-- TOP아이콘 클릭 시 부드럽게 위로 올라가기 -->
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
<title>LogIn</title>

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
				<a href="#">튜터등록</a>
			</div>
			<div class="nav-item">
				<a href="#">무료회원가입</a>
			</div>
		</div>
	</div>
	<!-- 중앙 : 로그인폼 -->
	<div class="login">
	<h1>로그인</h1>
	<form:form action="#" method="get" name="frm">
		<table>
		<colgroup>
		<col style="width:20%">
		<col style="width:20%">
		<col style="width:40%">
		<col style="width:30%">
		</colgroup>
		<tr>
			<td colspan="3" class="id"><p>ID</p><input type="text" value="usrId"/></td>
			<td rowspan="2"><input type="image" src="../images/login.png"alt="login" style="margin-right:10px;"/></td></tr>
		<tr class="pw"><td colspan="3"><p>PW</p><input type="password" value="userPw"/></td></tr>
		<tr style="font-size:14px;"><th style="text-align:right;"><input type="checkbox"/>ID저장</th>
		<th><input type="checkbox"/>자동로그인</th>
		<th style="text-align:right;"><a href="join">계정이 없으신가요?</a></th>
		<th><a href="searchIdPw">ID/PW 찾기</a></th>
		</tr>
		</table>
		</form:form>
	</div>
	<!-- 하단 고정 -->
		<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;"
		href="#" class="Top"> <img src="../images/top.png" alt="topicon">
	</a>
	<hr style="color: #BEBEBE;">
	<div class="footer">
		<div class="footer-top">
			<div class="footer-leftmenu">
				<div class="footer-call">
					<div class="footer-callNum">
						<p>고객센터 1544-7979</p>
					</div>
					<div class="footer-callTime">
						<p>
							평일 10:30~18:00<br />점심 13:00~14:00<br />주말, 공휴일 제외
						</p>
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