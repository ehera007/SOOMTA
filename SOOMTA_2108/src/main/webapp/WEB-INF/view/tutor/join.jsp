<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/include/mainStyle.css'/>"
	media="all" type="text/css" />
<style type="text/css">
/*중앙*/
.main {
	width: 800px;
	margin: 0 auto;
}
.main h1{
text-align:center; 
color:#0F4C81;
margin:50px auto 15px auto;
}
table {
    border: 2px solid #0F4C81;
    border-radius: 12px;
    box-shadow: 3px 3px 3px 3px #D5D5D5;
    border-spacing: 0px;
    margin : 0 auto 70px auto;
    width: 600px;
  }
thead th {
	height: 40px;
   background-color: #0F4C81;
   color: white;
   font-size: 20px;
   border-radius: 8px 8px 0px 0px;
}
tbody th{
	padding-top:30px;
	width:30%;
}
tbody td{
	padding-top:35px;
	width:70%;
}
tbody td a{
	color: #0F4C81;
	font-weight: bold;
	text-decoration: underline;
}
tbody td a:hover{
	color: #0F4C81;
	font-weight: bold;
	text-decoration: underline;
}
tbody td a:link{
	color: #0F4C81;
	font-weight: bold;
	text-decoration: underline;
}
tbody td a:visted{
	color: #0F4C81;
	font-weight: bold;
	text-decoration: underline;
}
.btn{
	background-color: transparent;
	color: #0F4C81;
	font-size:15px;
	font-weight: bold;
	border:none;
	margin: 30px 10px 10px 10px;
}
.ck{
	font-size:13px;
	margin:5px 0;
}
.required{
	color: red;
	font-weight: bold;
}
.detail{
	color: grey;
	font-size: 8px;
	font-style: italic;
	text-align: left;
}
#emailSuc, #emailFail{
	display: none; 
	font-size: 15px;
	font-weight:bold;
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
<!-- 다음 주소 -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById("sample4_roadAddress").value = roadAddr;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}
</script> 
<!-- 비밀번호 확인 -->
<script>
function check_pw(){
    if(document.getElementById('pw1').value !='' && document.getElementById('pw2').value!=''){
        if(document.getElementById('pw1').value==document.getElementById('pw2').value){
            document.getElementById('pw_ck_msg').innerHTML='PW 일치';
            document.getElementById('pw_ck_msg').style.color='#0F4C81';
            document.getElementById('pw_ck_msg').style.fontSize='15px';
            document.getElementById('pw_ck_msg').style.fontWeight='900';
        }
        else{
            document.getElementById('pw_ck_msg').innerHTML='PW 불일치';
            document.getElementById('pw_ck_msg').style.color='red';
            document.getElementById('pw_ck_msg').style.fontSize='15px';
            document.getElementById('pw_ck_msg').style.fontWeight='900';
        }}};
</script>
<!-- 이메일 확인 -->
<script>
function check_mail(){
    if(document.getElementById('mail1').value !='' && document.getElementById('mail2').value!=''){
        if(document.getElementById('mail1').value==document.getElementById('mail2').value){
            document.getElementById('mail_ck_msg').innerHTML='메일 일치';
            document.getElementById('mail_ck_msg').style.color='#0F4C81';
            document.getElementById('mail_ck_msg').style.fontSize='15px';
            document.getElementById('mail_ck_msg').style.fontWeight='900';
        }
        else{
            document.getElementById('mail_ck_msg').innerHTML='메일 불일치';
            document.getElementById('mail_ck_msg').style.color='red';
            document.getElementById('mail_ck_msg').style.fontSize='15px';
            document.getElementById('mail_ck_msg').style.fontWeight='900';
        }}};
</script>
<!-- 선생님 이메일 체크 -->
<!-- 필수체크 확인 알림창 & 이메일체크 값 넘기기 -->
<script type="text/javascript">
	$(document).ready(function(){
		$("#frm").submit(function(){
			if(!$("#agree").is(":checked")){
				alert('필수 항목입니다.', {title:'경고!'});
				return false;
			}else if($("#tutorEmailCk").prop("checked")){
				$("#tutorEmailCk").val('Y');	
			}else if(!$("#tutorEmailCk").is(":checked")){
				$("#tutorEmailCk").val('N');
			}	
		});
	});
</script>
<meta charset="UTF-8">
<title>튜터등록</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
			<img class="logo" src="<c:url value='/images/soomta_logo.png'/>"
			alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" />
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
   
   <!-- 중앙 -->
   <div class="main">
   <h1>튜터 등록하고 숨타와 함께 하세요!</h1>
      <form action="tutorJoined" method="post" id="frm">
      <input type="hidden" name="tutorSince" value="${tutorSince }"/>
      <table>
         <thead>
               <tr>
               <th colspan="2">튜터등록</th>
         </tr></thead>
         <tbody>
         <tr><th>ID</th>
             <td><input type="text" name="tutorId" minlength="4" maxlength="15" autofocus size="30" pattern="^([a-z0-9]){4,15}$" required/>
             <input type="button" value="중복확인" style="align:left;">
				 <div class="detail">* 4~15자 영문/숫자 사용</div>
               </td></tr>      
         <tr><th>PW</th>
            <td><input type="password" name="tutorPw" size="30" id="pw1" minlength="8" maxlength="15"
            	pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&^])[A-Za-z\d$@$!%*#?&^]{8,15}$" required/>
				<div class="detail">* 8~15자 영문/숫자/특수문자 포함</div></td></tr>
         <tr><th>PW확인</th>
            <td><input type="password" name="tutorPwCon" size="30" id="pw2" onkeyup="check_pw()"  minlength="8" maxlength="15"
            	pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&^])[A-Za-z\d$@$!%*#?&^]{8,15}$" required/>
				&nbsp;<span id="pw_ck_msg"></span></td></tr>
         <tr><th>이름</th>
            <td><input type="text" name="tutorName" value="${tutorName }" required minlength="2" size="30"/>
         <tr><th>생년월일</th>
            <td><input type="date" name="tutorDob" required/></td></tr>
         <tr><th>성별</th>
            <td>
               <input type="radio" name="tutorGender" value="M" checked="checked"/>남자
               <input type="radio" name="tutorGender" value="F"/>여자
               <div class="detail">* 본인이 변경 할 수 없으니 정확히 체크해주세요.</div>
            </td></tr>
         <tr><th>핸드폰</th>
            <td><input type="text" name="tutorPhone" value="${tutorPhone }" size="30" minlength="11" maxlength="11" required />
				<div class="detail">* ex) 01012341234</div></td></tr>
         <tr><th>이메일</th>
            <td><input type="email" name="tutorEmail" value="${tutorEmail }" size="30" class="email" id="mail1" required/>
				<div class="detail">* 이메일 인증에 필요하니 정확히 입력해주세요. ex) email@email.com</div></td></tr>
             <tr><th>이메일 확인</th>
            <td><input type="email" name="tutorEmailCon" value="${tutorEmailCon }" size="30" class="email" id="mail2" onkeyup="check_mail()" required/>
				&nbsp;<span id="mail_ck_msg"></span>
            	</td></tr>

          <tr><th>주소</th><td>
			<input type="text" name="tutorArea" value="${tutorArea}" id="sample4_roadAddress" size="30" required/>
			<a href="javascript:sample4_execDaumPostcode();">주소검색</a>
			<div class="detail">* 활동할 지역의 주소를 입력해주세요.</div></td></tr>
         <tr><th>약관 동의</th>
            <td rowspan="2">
            <input type="checkbox" id="agree" checked>
            	<span class="ck">서비스 <a href="<c:url value='/policy/service'/>" target="_blank">이용약관</a>에 동의합니다. 
           		<span class="required"> (필수)</span></span><br/>
           <input type="checkbox" id="tutorEmailCk" name="tutorEmailCk" checked><span class="ck">이벤트, 할인 등 이메일 수신에 동의  (선택)</span><br/>
            <span style="text-align:right; font-size:10px;"><a href="<c:url value='/soomta/memJoin'/>">회원 가입</a>을 원하시나요?</span></td></tr>
            <tr><th></th></tr><tr><th></th></tr></tbody>
         <tfoot>
         <tr><th colspan="2"><div class="allbtn">
               <input type="submit" value="튜터등록" class="btn" onclick="emailCk()"/>
               <input type="reset"  value="취소" onclick="javascript:history.back();" class="btn"/></div>
            </th></tr></tfoot>
         </table> 
        
      </form>
   </div>
  

   	
	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;" href="#" class="Top">
		<img src="<c:url value='/images/top.png'/>" alt="topicon"/>
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