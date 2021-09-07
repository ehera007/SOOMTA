<!-- 클래스/밴드 리스트  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
.main {
	width: 800px;
	margin: 0 auto;
	z-index: 2;
	text-align:left;
	padding-top: 50px;
	padding-bottom: 60px;
}

#newClassTitle{
	text-align:left;
	font-size:15px;
	background-color:#0F4C81;
	position:relative;
	top:-19px;
	width:501px;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

h2{
	color:white;
	height:45px;
	position:relative;
	top:5px;
	left:23px;
}

.formSize{
	border: 2px solid #0F4C81;
	width: 500px;
	margin: 0 auto;
	padding-bottom: 30px;
	border-radius: 12px;
	box-shadow: 3px 3px 3px 3px #D5D5D5;

}

#title{
	width:100px;
	display:inline-block; /*span태그는 width 못주는게 맞는데 display를 이용해서 강제로 줌*/
	padding:12px;
	
}

#inputPrice{
	text-align:right;
}

.submitlocation{
	padding-left:350px;
}

#submitClass{
	margin-top: 40px;
	border:0;
	outline:0;
	border:none;
	background:none;
	color:#0F4C81;
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
</style>
<meta charset="UTF-8">
<title>클래스 생성</title>
<!-- 분류 옵션주는 script -->
<script>
	function classMainCategory(e) {
		var ctg1 = ["유아","초등","중등","입시/편입","기타"];
		var ctg2 = ["공무원","NCS","세무/회계","외국어","디자인"];
		var ctg3 = ["미술","스포츠","요리","음악","기타"];
		var ctg4 = ["부동산","주식","펀드"];
		var ctg5 = ["이력서","면접","인적성","기타"];
		var ctg6 = ["기타"];
		var target = document.getElementById("classSubCategory");
		
		if(e.value == "STUDY") var d = ctg1;
		else if(e.value == "TEST") var d = ctg2;
		else if(e.value == "ENT") var d = ctg3;
		else if(e.value == "ECONOMY") var d = ctg4;
		else if(e.value == "EMP") var d = ctg5;
		else if(e.value == "ETC") var d = ctg6;
		
		target.options.length = 0;
		
		for(x in d){
			var opt = document.createElement("option");
		    opt.value=d[x];
		    opt.innerHTML = d[x];
		    target.appendChild(opt);
		}
	}
	
	function classCityCategory(c) {
		var ctg1 = ["서초구","강남구","송파구","종로구","마포구"];
		var ctg2 = ["수원","평택","안성시","용인시","성남"];
		var target = document.getElementById("classAreaCategory");
		
		if(c.value == "SEOUL") var d = ctg1;
		else if(c.value == "GYEONGGIDO") var d = ctg2;

		target.options.length = 0;
		
		for(x in d){
			var opt = document.createElement("option");
		    opt.value=d[x];
		    opt.innerHTML = d[x];
		    target.appendChild(opt);
		}
	}
	
	function leadingZeros(n, digits) {
	    var zero = '';
	    n = n.toString();

	    if (n.length < digits) {
	        for (i = 0; i < digits - n.length; i++)
	            zero += '0';
	    }
	    return zero + n;
	}

		var rsvDate = document.getElementById("classStart");
		var now = new Date();
	if(rsvDate){
  	now = 
    	leadingZeros(now.getFullYear(), 4) + '-' +
    	leadingZeros(now.getMonth() + 1, 2) + '-' +
    	leadingZeros(now.getDate(), 2);
  	if(rsvDate > now){
  		alert("클래스 시작 날짜를 확인해주세요.");
  }
}
</script>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="header">
		<img class="logo" src="../images/soomta_logo.png" alt="SOOMTA"
			onclick="location.href='/SOOMTA_2108/main'" />
		<!-- 상단메뉴 -->
		<div class="nav">
			<div class="nav-item">
				<a href="myPage">마이페이지</a>
			</div>
			<div class="nav-item">
				<a href="../soomta/logOut">로그아웃</a></div>
			</div>
		</div>
	<!-- 메인 -->
	<div class="main">
		<section class="formSize">
			<div id="newClassTitle"><h2>강의 개설</h2></div>
			<form name="newClassOpened" action="newClassOpenedOk" enctype="multipart/form-data" method="post">
				<span id="title">클래스 번호</span>
           		<input name="classNo" value="${classNo}" readonly="readonly"/><br/>
				<span id="title">분류</span>
				<select onchange="classMainCategory(this)" name="classCategoryL">
					<option>대분류</option>
					<option value="STUDY">학업</option>
					<option value="TEST">자격증/시험</option>
					<option value="ENT">예체능</option>
					<option value="ECONOMY">재태크</option>
					<option value="EMP">취업</option>
					<option value="ETC">기타</option>
				</select>
				<select id="classSubCategory" name="classCategoryS">
					<option value="">소분류</option>
				</select><br/>
				<span id="title">지역</span>
				<select onchange="classCityCategory(this)" name="classCity">
					<option>대분류</option>
					<option value="SEOUL">서울</option>
					<option value="GYEONGGIDO">경기도</option>
				</select>
				<select id="classAreaCategory" name="classArea">
					<option value="">소분류</option>
				</select><br/>
				<span id="title">강의명</span>
				<input type="text" name="className" placeholder="강의명 입력"><br/>
				<span id="title">기간</span>
				<input type="date" onchange="leadingZeros(n, digits)" name="classStart" required pattern="yyyy-MM-dd"/> ~ <input type="date" name="classEnd" required pattern="yyyy-MM-dd"/><br/>
				<span id="title">정원</span>
				<input type="number" name="classTotal" min="1" max="30"/>명<br/>
				<span id="title">금액</span>
				<input id="inputPrice" type="text" name="classPrice"/>원<br/>
				<span id="title">수업방식</span>
				<select name="classWay">
					<option>선택</option>
        			<option value="s">과외</option>
        			<option value="g">그룹</option>
        			<option value="n">비대면</option>
				</select><br/>
				<span id="title">수강생 성별</span>
				<input type="radio" name="classGender" value="m">남자
				<input type="radio" name="classGender" value="w">여자
				<input type="radio" name="classGender" value="x">무관<br/>
				<span id="title">강의 내용</span>
				<input type="text" name="classIntroduce"><br/>
				<span id="title">클래스이미지</span>
				<input type="file" name="classImg" multiple="multiple"/><br/>
				<span id="title">클래스상세이미지</span>
				<input type="file" name="classImg2" multiple="multiple"/><br/>
				<div class="submitlocation">
					<input id="submitClass" type="submit" value="완료"/>
				</div>
			</form>
		</section>
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