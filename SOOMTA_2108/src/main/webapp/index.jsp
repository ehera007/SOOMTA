<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<style>
body {
	font-family: '맑은 고딕', 'Malgun Gothic', 'sans-serif';
	color: #0F4C81;
	text-align: center;
}
.main{
margin:50px auto;
text-align:center;
}
/*로고 이미지*/
.logo {
	height: 40px;
	width: auto;
}
</style>
<body>

	<div class="main">
		<img class="logo" src="<c:url value='/images/soomta_logo.png'/>"
			alt="SOOMTA" alt="SOOMTA" onclick="location.href='/SOOMTA_2108/main'" /><br/>
		<h1>SOOMTA에 오신 것을 환영합니다.</h1>
		<h2>잠시만 기다려 주세요.</h2>
	</div>
	<script type="text/javascript">
		location.href = "main"
	</script>
</body>
</html>
