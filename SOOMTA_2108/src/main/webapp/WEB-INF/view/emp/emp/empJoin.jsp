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
/*중앙 구역 분할 */
.main {
	width: 800px;
	margin: 0 auto;
}

/* 테이블 스타일 */
table {
	border: 2px solid #0F4C81;
	border-radius: 12px;
	box-shadow: 3px 3px 3px 3px #D5D5D5;
	border-spacing: 0px;
	margin: 50px auto 70px auto;
	width: 600px;
}

thead th {
	height: 50px;
	background-color: #0F4C81;
	color: white;
	font-size: 25px;
	border-radius: 8px 8px 0px 0px;
}

tbody th {
	padding-top: 30px;
	width: 30%;
}

tbody td {
	padding-top: 30px;
	width: 70%;
}

tbody td a {
	font-size: 12px;
	color: #0F4C81;
	font-weight: bold;
	margin-left: 3px;
}
.btn {
	height: 30px;
	background-color: transparent;
	color: #0F4C81;
	font-weight: bold;
	margin: 30px 10px 10px 10px;
	border: none;
}

.allbtn {
	height: 50px;
	width: 300px;
	margin: 10px auto 0 auto;
}

.detail {
	color: grey;
	font-size: 8px;
	font-style: italic;
	text-align: left;
}

input {
	display: inline-block;
	float: left;
	margin-right: 5px;
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
    if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
        if(document.getElementById('pw').value==document.getElementById('pw2').value){
            document.getElementById('check').innerHTML='PW 일치';
            document.getElementById('check').style.color='#0F4C81';
            document.getElementById('check').style.fontSize='15px';
            document.getElementById('check').style.fontWeight='900';
        }
        else{
            document.getElementById('check').innerHTML='PW 불일치';
            document.getElementById('check').style.color='red';
            document.getElementById('check').style.fontSize='15px';
            document.getElementById('check').style.fontWeight='900';
        }}}
</script>
<!-- id 중복 확인 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	var idCk = 0;
	function ck(){
		var id = $("#empId").val();
		$.ajax({
			type : 'POST',
			data : {"id": id} ,
			url : "idcheck",
			dataType : "html",
			success : function(data){
				if (Number(data.trim()) > 0){
					document.getElementById('idCkMsg').innerHTML='중복된 ID';
					document.getElementById('idCkMsg').style.color='red';
			        document.getElementById('idCkMsg').style.fontSize='15px';
			        document.getElementById('idCkMsg').style.fontWeight='900';
					alert("이미 사용중인 ID입니다. \n 다른 ID를 입력해주세요");
				}else{
			        idCk = 1;
					document.getElementById('idCkMsg').innerHTML='사용 가능 ID';
					document.getElementById('idCkMsg').style.color='#0F4C81';
			        document.getElementById('idCkMsg').style.fontSize='15px';
			        document.getElementById('idCkMsg').style.fontWeight='900';
				}
			},
			error : function(error){
				alert("error : " + error);
			}
		});
	}
</script>
<!-- email 중복 확인 -->
<script type="text/javascript">
	function emailCk(){
		var email = $("#empEmail").val();
		$.ajax({
			type : 'POST',
			data : {"email": email} ,
			url : "emailCheckE",
			dataType : "html",
			success : function(data){
				if (Number(data.trim()) > 0){
					document.getElementById('emailCkMsg').innerHTML='중복된 메일';
					document.getElementById('emailCkMsg').style.color='red';
			        document.getElementById('emailCkMsg').style.fontSize='15px';
			        document.getElementById('emailCkMsg').style.fontWeight='900';
					alert("이미 사용중인 메일입니다. \n 다른 메일을 입력해주세요");
				}else{
			        idCk = 1;
					document.getElementById('emailCkMsg').innerHTML='사용 가능 메일';
					document.getElementById('emailCkMsg').style.color='#0F4C81';
			        document.getElementById('emailCkMsg').style.fontSize='15px';
			        document.getElementById('emailCkMsg').style.fontWeight='900';
				}
			},
			error : function(error){
				alert("error : " + error);
			}
		});
	}
</script>
<!-- 불일치 정보/등록 확인 알림창 -->
<script type="text/javascript">
	$(document).ready(function(){
		var str1 = '사용 가능 ID';
		var str2 = '사용 가능 메일';
		$("#frm").submit(function(){
		if(document.getElementById('idCkMsg').innerHTML != str1){
				alert('사용할 수 없는 아이디입니다. \n ID를 확인해주세요');
				var offset = $('#empId').offset();
				$('html').animate({scrollTop : offset.top}, 400);
				return false;
			}
			if(document.getElementById('pw').value!=document.getElementById('pw2').value){
			alert('일치하지 않거나 사용할 수 없는 정보가 있습니다. \n PW 확인을 확인 해주세요');
			var offset = $('#pw').offset();
			$('html').animate({scrollTop : offset.top}, 400);
			return false;
			}
			if(document.getElementById('emailCkMsg').innerHTML != str2){
				alert('사용할 수 없는 이메일입니다. \n 이메일을 확인해주세요');
				var offset = $('#empEmail').offset();
				$('html').animate({scrollTop : offset.top}, 400);
				return false;
			}if(document.getElementById('idCkMsg').innerHTML == str1 && document.getElementById('emailCkMsg').innerHTML == str2 && document.getElementById('pw').value==document.getElementById('pw2').value){
				var cfm = confirm('정말 등록하시겠습니까?\n*기존 페이지로 돌아가시려면 취소를 눌러주세요.');
				if(cfm){
					document.getElementById('frm').submit();
				}else{
					return false;
				}
			}
		});
	});
</script>
<meta charset="UTF-8">
<title>관리자 등록</title>
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
		<form action="empJoinOk" method="post" name="frm" id="frm">
			<div class="table">
				<table>
					<thead>
						<tr>
							<th colspan="2">관리자등록</th>
						</tr>
					</thead>
					<tbody>
						<tr class="first_tr">
							<th>아이디</th>
							<td><input type="text" name="empId" id="empId" value="${empId }"
								autofocus required pattern="^([a-z0-9]){4,15}$" size="30" onblur="ck();" />
								 &nbsp;<span id="idCkMsg"></span>
								<div class="detail">* 4~15자 영문/숫자 사용</div>
								</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" name="empPw" value="${empPw }"
								size="30" required
								pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&^])[A-Za-z\d$@$!%*#?&^]{8,15}$"
								class="pw" id="pw"/>
								<div class="detail">* 8~15자 영문/숫자/특수문자 포함</div></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td><input type="password" name="empPwCon" value="${empPwCon }" required
								size="30"
								pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&^])[A-Za-z\d$@$!%*#?&^]{8,15}$"
								class="pw" id="pw2" onkeyup="check_pw()"/>
	&nbsp;<span id="check"></span></td>

						<tr>
							<th>이름</th>
							<td><input type="text" name="empName" value="${empName }" minlength="2" required
								size="30" />
								<div class="detail">* 성 포함 입력</div></td>
						</tr>
						<tr>
							<th>담당 파트</th>
							<td><input type="text" name="empJob" value="${empJob }" minlength="2" maxlength="15" required
								size="30" />
								<div class="detail">* 담당하는 일을 입력</div></td>
						</tr>
						<tr>
							<th>입사일</th>
							<td><input type="date" name="hireDate" value="${hireDate }" size="55" required
								size="30" /></td>
						</tr>
						<tr>
							<th>전화번호</th>
							<td><input type="text" name="empPhone" value="${empPhone }" minlength="11"
								required size="30" maxlength="11" />
								<div class="detail">* ex) 01012341234</div></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="email" name="empEmail" value="${empEmail }" id="empEmail"
								size="30" onblur="emailCk();" required/>&nbsp;<span id="emailCkMsg"></span>
								<div class="detail">* ex) email@email.com</div></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input type="text" name="empAddr" value="${empAddr }" required size="30"
								id="sample4_roadAddress" /> <a
								href="javascript:sample4_execDaumPostcode();">주소 검색</a></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<th colspan="2"><div class="allbtn">
									<input type="reset" class="btn" value="내용 지우기" />
									<input class="btn" type="submit" class="btn" value="관리자 등록" />
									<input class="btn" type="button" value="등록 취소" onclick="javascript:history.back()" /> 
								</div></th>
						</tr>
					</tfoot>
				</table>
			</div>
		</form>
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
							<li><a href="<c:url value='/about/service'/>"
								target="_blank">서비스소개</a></li>
							<li><a href="<c:url value='/about/hire'/>" target="_blank">인재채용</a></li>
						</ul>
					</div>
					<div class="footer-menu">
						<p>튜터안내</p>
						<ul>
							<li><a href="<c:url value='/help/tutorNotice'/>"
								target="_blank">공지사항</a></li>
							<li><a href="<c:url value='/help/tutor'/>" target="_blank">이용안내</a></li>
							<li><a href="<c:url value='/help/tutorQ'/>" target="_blank">자주
									묻는 질문</a></li>
						</ul>
					</div>
					<div class="footer-menu">
						<p>고객센터</p>
						<ul>
							<li><a href="<c:url value='/help/memNotice'/>"
								target="_blank">공지사항</a></li>
							<li><a href="<c:url value='/help/member'/>" target="_blank">이용안내</a></li>
							<li><a href="<c:url value='/help/memQ'/>" target="_blank">자주
									묻는 질문</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottommenu">
				<div class="footer-submenu">
					<a href="<c:url value='/policy/service'/>" target="_blank">이용약관
					</a> <a href="<c:url value='/policy/privacy'/>" target="_blank">개인정보처리방침
					</a> <a href="<c:url value='/policy/refund'/>" target="_blank">환불정책
					</a> <a href="<c:url value='/policy/info'/>" target="_blank">사업자정보확인
					</a>
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