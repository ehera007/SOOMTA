<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="../../include/tags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/include/mainStyle.css'/>" media="all"
	type="text/css" />
<style type="text/css">
@charset "UTF-8";
.top{
width:800px;
margin: 30px auto 10px auto;
align-items:center;
text-align:center;
}
/*중앙 구역 분할 */
.main {
	width: 800px;
	margin: 0 auto;
}
.mainTitle {
	background-color: #0F4C81;
	color: white;
	text-align: center;
	padding-top: 10px;
}
.mainTitle p{
padding-bottom:15px;}
.mainTitle a{
color:white;
margin-left:15px;
margin-right:15px;
}
.content a{
color:black;}
.content a:visited{
coloc:black;}
.content a:hover{
color:black;}
.mainTitle a:visited{
color:white;
}

.mainTitle a:hover{
color:white;
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
<title>환불정책</title>
</head>
<body>
	<!-- 상단 고정 : 로고 / 로그인,회원가입 -->
	<div class="top">
	<img class="logo" src="<c:url value='/images/soomta_logo.png'/>" alt="SOOMTA" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'"/>
		
	</div>
	
	<!-- 중앙 -->
		<div class="main">
		<div class="mainTitle">
			<h1>환불정책</h1>
			<p>
				<a href="<c:url value='/policy/service'/>">이용약관</a> 
				<a href="<c:url value='/policy/privacy'/>">개인정보처리방침</a> 
				 <a href="<c:url value='/policy/refund'/>">환불정책</a>
				<a href="<c:url value='/policy/info'/>">사업자정보확인</a></p>
		</div>
		<div class="content">
	<ul id="lnb">
		<li id="i1" class="i1"><a href="service.html">이용약관</a></li>
		<li id="i2" class="i2"><a href="privacy.html">개인정보처리방침</a></li>
		<li id="i3" class="i3"><a href="youthpolicy.html">청소년보호정책</a></li>
		<li id="i4" class="i4"><a href="spamcheck.html">스팸메일정책</a></li>
		<li id="i5" class="i5"><a href="disclaimer.html">책임의 한계와 법적고지</a></li>
		<li id="i6" class="i6"><a href="search_policy.html">검색결과 수집에 대한 정책</a></li>
		<li id="i7" class="i7"><a href="iso27001.html">정보보호 인증</a></li>
		<li id="i8" class="i8"><a href="soc.html">SOC 인증</a></li>
	</ul>

    <div id="content" class="privacy">
        <div class="title">
            <h2>숨타 개인정보 처리방침 <span class="ver">(Ver.10.10)</span></h2>
            <p>숨타는 이용자 개인정보 보호를 여러 경영요소 가운데 최우선의 가치로 두고 있습니다.</p>
            <a href="/rules/privacy_v10_9.html" class="link">이전 개인정보처리방침 보기</a></div>
        <div class="index">
            <h3 class="sp">숨타에서만 제공하는 특별한 개인정보처리방침</h3>
            <div class="i1">
                <p class="sp"><strong>개인정보처리방침 ‘EASY버전’</strong> 쉽고 편하게 이해할 수 있는 개인정보처리방침</p>
                <a href="https://privacy.naver.com/policy_and_law/easy_version?menu=policy_personal_information_easyVersion" class="sp">‘EASY버전’ 바로가기</a></div>
            <div class="i2">
                <p class="sp"><strong>개인정보처리방침 ‘인포그래픽’</strong> 그림으로 쉽게 만나보는 개인정보처리방침</p>
                <a href="https://privacy.naver.com/policy_and_law/infographic?menu=policy_personal_information_infographic" class="sp">‘인포그래픽’ 바로가기</a></div>
        </div>
        <div class="section">
            <h3>네이버 개인정보처리방침</h3>
            <p>네이버주식회사(이하 ‘네이버’ 또는 회사’)는 서비스 기획부터 종료까지 개인정보보호법 등 국내의 개인정보 보호 법령을 철저히 준수합니다. 또한 OECD의 개인정보 보호 가이드라인 등 국제 기준을 준수하여 서비스를 제공합니다.</p>
            <div class="btn_area"><a href="https://www.law.go.kr/LSW/lsInfoP.do?efYd=20200805&amp;lsiSeq=213857#0000" class="sp btn0_2">‘개인정보보호법’ 바로가기</a> <a href="http://www.oecd.org/sti/ieconomy/oecdguidelinesontheprotectionofprivacyandtransborderflowsofpersonaldata.htm" class="sp btn0_3">‘OECD Guidelines(영문)’ 바로가기</a></div>
            <div class="shortcut">
                <p>본 개인정보처리방침의 목차는 아래와 같습니다.<br>관계법령이 요구하는 개인정보처리방침의 필수 사항과 네이버 자체적으로 이용자 개인정보 보호에 있어 중요하게 판단하는 내용을 포함하였습니다.</p>
                <ol class="sc1">
                    <li><i>1.</i><a href="#a1">개인정보처리방침의 의의</a></li>
                    <li><i>2.</i><a href="#a2">수집하는 개인정보 (필수 안내사항)</a></li>
                    <li><i>3.</i><a href="#a3">수집한 개인정보의 이용 (필수 안내사항)</a></li>
                    <li><i>4.</i><a href="#a4">개인정보의 제공 및 위탁 (필수 안내사항)</a></li>
                    <li><i>5.</i><a href="#a5">개인정보의 파기 (필수 안내사항)</a></li>
                </ol>
                <ol class="sc2">
                    <li><i>6.</i><a href="#a6">이용자 및 법정대리인의 권리와 행사 방법 (필수 안내사항)</a></li>
                    <li><i>7.</i><a href="#a7">개인정보보호를 위한 네이버의 노력 (필수 안내사항)</a></li>
                    <li><i>8.</i><a href="#a8">개인정보 보호책임자 및 담당자 안내 (필수 안내사항)</a></li>
                    <li><i>9.</i><a href="#a9">본 개인정보처리방침의 적용 범위</a></li>
                    <li><i>10.</i><a href="#a10">개정 전 고지 의무</a></li>
                </ol>
            </div>
        </div>
        <div id="a1" class="section">
            <h4>1. 개인정보처리방침의 의의</h4>
            <p><strong id="a1_1" class="b">네이버는 본 개인정보처리방침은 개인정보보호법을 기준으로 작성하되, 네이버 내에서의 이용자 개인정보 처리 현황을 최대한 알기 쉽고 상세하게 설명하기 위해 노력하였습니다.</strong><br>이는 쉬운 용어를 사용한 개인정보처리방침 작성 원칙인 ‘Plain Language Privacy Policy(쉬운 용어를 사용한 개인정보처리방침)’를 도입한 것입니다.</p>
            <div class="btn_area"><a href="http://centerforplainlanguage.org/5-steps-to-plain-language/" class="sp btn1_1">‘쉬운 용어를 사용한 개인정보처리방침 작성 체크리스트(영문)’ 바로가기</a></div>
            <p>개인정보처리방침은 다음과 같은 중요한 의미를 가지고 있습니다.</p>
            <ul class="bu">
                <li><i></i>네이버가 어떤 정보를 수집하고, 수집한 정보를 어떻게 사용하며, 필요에 따라 누구와 이를 공유(‘위탁 또는 제공’)하며, 이용목적을 달성한 정보를 언제·어떻게 파기하는지 등 ‘개인정보의 한살이’와 관련한 정보를 투명하게 제공합니다.</li>
                <li><i></i>정보주체로서 이용자는 자신의 개인정보에 대해 어떤 권리를 가지고 있으며, 이를 어떤 방법과 절차로 행사할 수 있는지를 알려드립니다. 또한, 법정대리인(부모 등)이 만14세 미만 아동의 개인정보 보호를 위해 어떤 권리를 행사할 수 있는지도 함께 안내합니다.</li>
                <li><i></i>개인정보 침해사고가 발생하는 경우, 추가적인 피해를 예방하고 이미 발생한 피해를 복구하기 위해 누구에게 연락하여 어떤 도움을 받을 수 있는지 알려드립니다.</li>
                <li><i></i>그 무엇보다도, 개인정보와 관련하여 네이버와 이용자간의 권리 및 의무 관계를 규정하여 이용자의 ‘개인정보자기결정권’을 보장하는 수단이 됩니다.</li>
            </ul>
        </div>
        <div id="a2" class="section">
            <h4>2. 수집하는 개인정보</h4>
            <p><strong id="a2_1" class="b">이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. <br>이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</strong></p>
            <ul class="sec">
                <li class="first">
                    <p><strong id="a2_2">회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.</strong></p>
                    <ul class="bu">
                        <li><i></i>회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. <span>그리고 선택항목으로 이메일 주소, 프로필 정보를 수집합니다.</span></li>
                        <li><i></i><span>단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.</span></li>
                    </ul>
                </li>
                <li>
                    <p><strong><a href="#tgl2-1" class="tgl_more">회원 가입 시 수집하는 개인정보에 대한 추가 설명 <i class="sp ico_tgl">내용 더보기/닫기</i></a></strong></p>
                    <dl class="tgl_cont" id="tgl2-1">
                        <dt>(1) 필수항목과 선택항목의 차이</dt>
                        <dd>필수항목이란 서비스의 본질적 기능을 수행하기 위해 필요한 정보이며, 선택항목이란 서비스 이용 자체에 영향을 미치지는 않으나 이용자에게 부가적인 가치를 제공하기 위해 추가로 수집하는 정보입니다. 회원가입 시에 수집하는 아이디, 비밀번호는 로그인을 위하여 필요한 정보이며 이름, 생년월일, 성별은 회원제 서비스 운영에 따르는 이용자 구분을 위하여 사용됩니다. 가입인증 휴대폰번호는 불법 광고 게시 등 부정한 목적으로 회원가입을 시도하는 경우, 이용제한 조치 등을 적용하기 위하여 수집합니다. 선택항목은 입력을 하지 않아도 회원 가입이나 서비스 이용에 제한이 없으며, 필요할 경우 ‘NAVER 내정보 &gt; 회원정보 &gt; 연락처’에서 사후에 언제든지 직접 입력하실 수 있습니다.</dd>
                        <dt>(2) 법정대리인 정보를 수집하는 이유</dt>
                        <dd>만 14세 미만 아동의 개인정보를 수집할 경우, 회사는 개인정보보호법에 따라 법정대리인(부모 등 아동의 보호자)의 동의를 받아야 합니다. 이에 따라 네이버는 만 14세 미만 아동의 개인정보 수집 시점에서 법정대리인의 동의를 받고 있으며, 이 과정에서 법정대리인의 이름, DI, 휴대폰번호(모바일 인증 시에만)를 수집합니다. 수집된 법정대리인의 정보는 아동이 성년이 되는 시점에서 파기하고 있습니다.</dd>
                        <dt>(3) 단체정보의 개인정보 인정 여부</dt>
                        <dd>개인정보보호법에서 정의하는 개인정보는 ‘살아있는 자연인에 대한 정보’를 말합니다. 따라서 단체명, 영업소 주소 및 전화번호, 대표자 성명 등과 같은 법인이나 단체에 관한 정보는 원칙적으로 개인정보에 해당하지 않습니다. 네이버 단체아이디로 회원 가입 시에 수집하는 대부분의 정보는 개인정보에 해당하지 않습니다. 하지만 개인 사업자 등의 경우 이를 단체정보로만 처리하기 모호한 측면이 있고, 관리자/담당자의 연락처 정보 등을 수집하기 때문에 본 개인정보처리방침에서는 단체정보의 수집 관련 내용을 기재하여 이용자의 이해를 돕고 있습니다.</dd>
                    </dl>
                </li>
                <li>
                    <p><strong id="a2_3">서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.</strong></p>
                    <p>네이버 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.</p>
                    <div class="btn_area"><a href="popup/privacy_agreement.html" target="_blank" class="sp btn2_1" onclick="window.open('popup/privacy_agreement.html','','width=880, height=780, scrollbars=yes, resizable=yes');return false;">이용자 동의 후 개인정보를 추가 수집하는 경우</a> <a href="https://nid.naver.com/user2/help/privacyInfo.nhn?returnUrl=https://privacy.naver.com/main?menu%3Dhome" class="sp btn2_2">‘개인정보 이용내역(내 정보)’ 확인하기</a></div>
                </li>
                <li>
                    <p><strong>서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다.<br>또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.</strong></p>
                    <p>구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며, 네이버에서 제공하는 위치기반 서비스에 대해서는 '네이버 위치정보 이용약관'에서 자세하게 규정하고 있습니다.<br>이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.</p>
                </li>
                <li>
                    <p><strong id="a2_4"><a href="#tgl2-2" class="tgl_more">생성정보 수집에 대한 추가 설명 <i class="sp ico_tgl">내용 더보기/닫기</i></a></strong></p>
                    <dl class="tgl_cont" id="tgl2-2">
                        <dt>IP(Internet Protocol) 주소란?</dt>
                        <dd>IP 주소는 인터넷 망 사업자가 인터넷에 접속하는 이용자의 PC 등 기기에 부여하는 온라인 주소정보 입니다. IP 주소가 개인정보에 해당하는지 여부에 대해서는 각국마다 매우 다양한 견해가 있습니다.</dd>
                        <dt>서비스 이용기록이란?</dt>
                        <dd>네이버 접속 일시, 이용한 서비스 목록 및 서비스 이용 과정에서 발생하는 정상 또는 비정상 로그 일체, 메일 수발신 과정에서 기록되는 이메일주소, 친구 초대하기 또는 선물하기 등에서 입력하는 휴대전화번호 등을 의미합니다.</dd>
                        <dt>기기정보란?</dt>
                        <dd>본 개인정보처리방침에 기재된 기기정보는 생산 및 판매 과정에서 기기에 부여된 정보뿐 아니라, 기기의 구동을 위해 사용되는 S/W를 통해 확인 가능한 정보를 모두 일컫습니다. OS(Windows, MAC OS 등) 설치 과정에서 이용자가 PC에 부여하는 컴퓨터의 이름, PC에 장착된 주변기기의 일련번호, 스마트폰의 통신에 필요한 고유한 식별값(IMEI, IMSI), AAID 혹은 IDFA, 설정언어 및 설정 표준시, USIM의 통신사 코드 등을 의미합니다. 단, 네이버는 IMEI와 같은 기기의 고유한 식별값을 수집할 필요가 있는 경우, 이를 수집하기 전에 네이버도 원래의 값을 알아볼 수 없는 방식으로 암호화 하여 식별성(Identifiability)을 제거한 후에 수집합니다.</dd>
                        <dt>쿠키(cookie)란?</dt>
                        <dd>쿠키는 이용자가 웹사이트를 접속할 때에 해당 웹사이트에서 이용자의 웹브라우저를 통해 이용자의 PC에 저장하는 매우 작은 크기의 텍스트 파일입니다. 이후 이용자가 다시 웹사이트를 방문할 경우 웹사이트 서버는 이용자 PC에 저장된 쿠키의 내용을 읽어 이용자가 설정한 서비스 이용 환경을 유지하여 편리한 인터넷 서비스 이용을 가능케 합니다. 또한 방문한 서비스 정보, 서비스 접속 시간 및 빈도, 서비스 이용 과정에서 생성된 또는 제공(입력)한 정보 등을 분석하여 이용자의 취향과 관심에 특화된 서비스(광고 포함)를 제공할 수 있습니다. 이용자는 쿠키에 대한 선택권을 가지고 있으며, 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 다만, 쿠키의 저장을 거부할 경우에는 로그인이 필요한 네이버 일부 서비스의 이용에 불편이 있을 수 있습니다.<br><a href="https://privacy.naver.com/knowledge/cookie?menu=knowledge_info_relation_cookie">쿠키에 관한 자세한 내용(네이버 프라이버시 센터) 알아보기</a></dd>
                    </dl>
                </li>
                <li class="last">
                    <p><strong id="a2_5">네이버는 아래의 방법을 통해 개인정보를 수집합니다.</strong></p>
                    <ul class="bu">
                        <li><i></i>회원가입 및 서비스 이용 과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력하는 경우, 해당 개인정보를 수집합니다.</li>
                        <li><i></i>고객센터를 통한 상담 과정에서 웹페이지, 메일, 팩스, 전화 등을 통해 이용자의 개인정보가 수집될 수 있습니다.</li>
                        <li><i></i>오프라인에서 진행되는 이벤트, 세미나 등에서 서면을 통해 개인정보가 수집될 수 있습니다.</li>
                        <li><i></i>네이버와 제휴한 외부 기업이나 단체로부터 개인정보를 제공받을 수 있으며, 이러한 경우에는 개인정보보호법에 따라 제휴사에서 이용자에게 개인정보 제공 동의 등을 받은 후에 네이버에 제공합니다.</li>
                        <li><i></i>기기정보와 같은 생성정보는 PC웹, 모바일 웹/앱 이용 과정에서 자동으로 생성되어 수집될 수 있습니다.</li>
                    </ul>
                </li>
            </ul>
        </div>
        <div id="a3" class="section">
            <h4>3. 수집한 개인정보의 이용</h4>
            <ul class="sec">
                <li class="first last">
                    <p><strong id="a3_1">네이버 및 네이버 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발·제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.</strong></p>
                    <ul class="bu">
                        <li><i></i>회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.</li>
                        <li><i></i>콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.</li>
                        <li><i></i>법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.</li>
                        <li><i></i>유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.</li>
                        <li><i></i>이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.</li>
                        <li><i></i>서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.</li>
                        <li><i></i>보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.</li>
                    </ul>
                </li>
            </ul>
        </div></div>
	</div>
	</div>
	
	
	<!-- TOP이동 -->
	<a style="position: fixed; bottom: 20px; right: 50px;"
		href="#" class="Top"> <img src="<c:url value='/images/top.png'/>" alt="topicon"/>
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
