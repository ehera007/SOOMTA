

<!-- 관리자페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
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
	 width: 1000px;
   height: 1500px;
   margin: 0 auto;
}
/*---------------------------------수정 ------------------------------------*/
.maintop{
  height : 200px;
}
.maintop-img{
  height : 190px;
  width : 20%;
  background : gray;
  float  : left;
  border-radius: 50%;
  margin: 5px 5px 5px 5px;
  overflow: hidden;
}
.profile {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
.maintop-detail{
  height : 190px;
  width : 79%;
  float : right;
}
.bottom-time{
  width: 50%;
  float : left;
}
.bottom-qa{
  float : right;
  padding-right: 23%;
}
.mainmenu{
  height : 31px;
  padding-top: 30px;
}
.maincontent{
  height : 1250px;
}
.maincontent-left{
  float : left;
  width : 70%;
  height : 1250px;
}
.content-infor {
  height : 15%;
}
.content-infor-con {
  padding-left: 20px;
  height: 70%;
}
.content-tutorinfor{
  height : 35%;
}
.content-tutorinfor-con{
  padding-left: 20px;
  height: 70%;

}
.content-introduce{
  height: 25%;
}
.content-introduce-con{
  padding-left: 20px;
  height: 70%;
}
.content-review-con{
 padding-left: 20px;
  height: 70%;
}
.maincontent-right{
  background : #EEE9E9;
  float : right;
  width:29%;
  height : 1250px;
}

.list-name{
  padding-left: 50px;
}
.search {
   border: 1px solid black;
   height: 40px;
   margin: 30px;
}

/*..item {
   display: flex;
   margin: auto;
}

main-item {
   border: 1px solid black;
   width: 300px;
   height: 300px;
   margin: 50px;
}
*/
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
   margin:5px;
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

.footer-callTime li{
   margin-bottom:3px;
}

.footer-rightmenu li{
   margin-bottom:5px;
}

.footer-menu p {
   color: #0F4C81;
   font-size: 16px;
   font-weight: 900;
}
/*테이블 스타일*/
table, th, td {
    border: 1px solid #bcbcbc;
    border-right:none;
	border-left:none;
	border-top:none;
	border-bottom:none;
	width:116px;
  }
  table {
    width: 290px; text-align:center;
  }
.title_color{ background-color:#BEBEBE;}
/*버튼css*/
.button-4 {
			width: 100px;
			height: 30px;
			border: 1px solid #0F4C81;
			float: left;
			text-align: center;
			cursor: pointer;
			position: relative;
			box-sizing: border-box;
			overflow: hidden;
			margin: 0px 5px 0 0;
		}
.button-5 {
			width: 100px;
			height: 30px;
			border: 1px solid #0F4C81;
			float: left;
			text-align: center;
			cursor: pointer;
			position: relative;
			box-sizing: border-box;
			overflow: hidden;
			margin: 0px 5px 0 0;
      color : #fff;
      background-color : #0F4C81;
		}
		.button-4 a {
			font-family: arial;
			font-size: 16px;
			color: #0F4C81;
			text-decoration: none;
			line-height: 30px;
			transition: all .5s ease;
			z-index: 2;
			position: relative;
		}

		.eff-4 {
			width: 100px;
			height: 30px;
			left: -140px;
			background: #0F4C81;
			position: absolute;
			transition: all .5s ease;
			z-index: 1;
		}

		.button-4:hover .eff-4 {
			left: 0;
		}

		.button-4:hover a {
			color: #fff;
		}
  /*버튼css끝*/
</style>
<meta charset="UTF-8">
<title>SOOMTA</title>

</head>
<body>
   <!-- 상단 고정 : 로고 / 로그인,회원가입 -->
   <div class="header">
      <img class="logo" src="../images/soomta_logo.png" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
      <!-- 로그인 안된 경우 -->
      <div class="nav">
         <div class="nav-item">
            <a href="#">마이 페이지</a>
         </div>
         <div class="nav-item">
            <a href="#">로그아웃</a>
         </div>
      </div>
   </div>

   <!-- ----------------------------------강사 상세-------------------------------------- -->
   <div class="main">
    <div class="maintop">  <!--- 200 --->
      <div class="maintop-img">
        <img class="profile" src="#">
      </div>
      <div class="maintop-detail">
        <div class="topdetail-tutorname"><h1 style="padding-left: 50px">강사명</div>
        <div class="topdetail-satisfy">
          <div calss="satisfy-star">
            <span style="padding-left:50px; color:gold; font-size:20 ">★★★★☆ 
            </div>
        </div>
        <br>
        <div class="topdetail-bottom">
          <div class="bottom-time"> <span style="padding-left: 50px">응답가능시간 : 13:00~21:00 </div>
        </div>
      </div>
    </div>
       <hr style="border: solid 1px #0F4C81; margin-top :30px;">
    <div class="mainmenu"><!--- 41px --->
      <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="#"> 활동정보 </a>
          </div>
      <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="#"> 전문가정보 </a>
          </div>
         <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="#"> 소개 </a>
          </div> 
          <div class="button-4" >
            <div class="eff-4">
            </div>
            <a href="#"> 후기 </a>
          </div>
          <div class="button-5" >
              <div class="eff-4">
              </div>
              <a href="#" style="color : #fff;"> 문의하기 </a>
          </div>
    </div>
    <div class="maincontent"> <!--- 1200px --->
      <div class="maincontent-left">
        <div class="content-infor">
          <div class="content-infor-name"><h3>활동정보</div>
          <div class="content-infor-con">
            · 총 강의수 : 10개  <br>
            · 총 학생수 : 100명 <br>
            · 강의 만족도 : 4 <br>
            · 강사 만족도 : 2.5<br>
          </div>
        </div>
        <div class="content-tutorinfor">
          <div class="content-tutorinfor-name"><h3>튜터정보란</div>
          <div class="content-tutorinfor-con">
            · 회원 구분 : 일반 <br>
            · 연락 가능 시간 : 13 :00~ 21:00 <br>
            · 지역 : 서울<br>
            · 선호 강의 장소 : 카페 (협의가능)<br>
            · 경력 사항 : ~<br>
            · 학력(전공) : (미입력)<br>
            · 전문분야 및 상세분야 : ~<br>
            · 보유 기술 : ~<br>
          </div>
        </div>
        <div class="content-introduce">
          <div class="content-introduce-name"><h3>소개</div>
          <div class="content-introduce-con">동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세 <br>
          솰랴솰랴~~<br></div>
        </div>
        <div class="content-review">
          <div class="content-review-name"><h3> 후기</div>
          <div class="content-review-con">~~~~~~~~`</div>
        </div>
      </div>
      <div class="maincontent-right">
        <div class="list-name"><h3> 강의목록</div>
        <div class="list-content">
          <div class="list-item">
            <table style="" text-align:center;">
			      <tr>
				    <td width="200" height="200"><a href="#">
				    <img width="200" height="200" src="#" /><br /> 상품 500냥 </td>
			      </tr> <!-- 쇼핑물 페이지처럼 c:if문 돌려서 4개 가져오시면 될거 같습니다 챼햬잉씨꺼 -->
		        </table>
          </div>
        </div>
      </div>
   </div>
   <!------------------------------------- 하단 고정 --------------------------------------------->
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
                     <li>평일 10:30~18:00</li><li>점심 13:00~14:00</li><li>주말, 공휴일 제외</li>
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