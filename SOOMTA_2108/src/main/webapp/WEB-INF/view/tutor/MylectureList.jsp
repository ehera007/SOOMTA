<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../include/tags.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.myClassTitle {
   background-color: #0F4C81;
   color: white;
   text-align: center;
   padding-top: 10px;
   padding-bottom: 10px;
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

/* 테이블 스타일 */
table {
    width: 100%;
    border-top: 2px solid #0F4C81;
    border-collapse: collapse;
  }
  
thead{
 background-color: #0F4C81; 
 color: white; 
}
tbody  th, td {
    border-bottom: 1px solid #0F4C81;
    padding: 5px;
    text-align: center;
  }

  tbody tr:nth-child(2n) {
    background-color:#F4F7F8; 
    
  }
td a {
   font-weight:bold;
   color:black;
}
td a:hover {
   font-weight:bold;
   color:black;
}
td a:link {
   font-weight:bold;
   color:black;
}
td a:visited {
   font-weight:bold;
   color:black;
}
td a:active {
   font-weight:bold;
   color:black;
}
/*버튼 스타일*/
.btn {
   height: 30px;
   background-color: white;
   color: #0F4C81;
   font-weight: bold;
   margin: 10px 10px;
   border: none;
   float:right;
   /*border:1px solid #0F4C81;
   border-radius:4px;*/
}
</style>
<meta charset="UTF-8">
<title>My Class List</title>
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
   
   <div class="myClassTitle">
         <h1>''님의 강의 목록</h1>
         <p>숨타에서 총 n개의 강의를 개설하셨슴돠</p>
      </div>
      <!-- 타이틀 -->
   <table>
   <thead>
      <tr style="padding-bottom:20px; height:40px;">
         <th width="10%">No.</th>
         <th width="15%">대분류/소분류</th>
         <th width="25%">강의명</th>
         <th width="20%">기간</th>
         <th width="10%">상태</th>
         <th width="10%">상세</th>
         <th width="10%">후기</th>
      </tr>
      </thead>
      <c:forEach items="${list }" var="dto">
      <tbody>
      <tr>
         <td>${dto.classNo }</td>
         <td>
         	<c:if test="${dto.classCategoryL == 'STUDY' }">학업</c:if>
			<c:if test="${dto.classCategoryL == 'TEST' }">자격증&시험</c:if>
			<c:if test="${dto.classCategoryL == 'ENT' }">예체능</c:if>
			<c:if test="${dto.classCategoryL == 'ECONOMY' }">재태크</c:if>
			<c:if test="${dto.classCategoryL == 'EMP' }">취업</c:if>
			<c:if test="${dto.classCategoryL == 'ETC' }">기타</c:if> / 
			${dto.classCategoryS }</td>
         <td>${dto.className }</td>
         <td>
         	<fmt:formatDate value="${dto.classStart }" pattern="yyyy-MM-dd"/>
         	~
         	<fmt:formatDate value="${dto.classEnd }" pattern="yyyy-MM-dd"/>
         </td>
         <td>상태</td>
         <td><a href="classCheck?classNo=${dto.classNo}">상세</a></td>
         <td><a href="reviewView">후기</a></td>
      </tr>
      </tbody>
      </c:forEach>
      </table>
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