<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
<link rel="stylesheet" href="/Project/css/style.css?ver=1">
<script type="text/javascript"
			src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<style>
/* 마이페이지 설정 */
.content-wrap .mypage{
	width:1200px;
	margin:0 auto;
	padding:50px;
	border:1px solid red;
}
/* 마이페이지 사이드메뉴 설정 */
.content-wrap .mypage .my_left {
	width:200px;
	border-radius:20px;
	background-color:#f4f4f4;
	box-shadow:1px 1px 3px black;
}
.content-wrap .mypage .my_left li {
	padding:20px;
	float:none;
	text-align:center;
	color:black;
	font-size:14px;
}
.content-wrap .mypage .my_left li.first {
	padding-top:35px;
}
.content-wrap .mypage .my_left li.last {
	padding-bottom:35px;
}
.content-wrap .mypage .my_left li a {
	color:black;
}
.content-wrap .mypage .my_left li a:hover {
	color:gray;
}
/* 마이페이지 컨텐츠부분 설정 */
.content-wrap .mypage .my_right {
	width:800px;
	float:right;
	padding:0 200px 100px 0;
}
.content-wrap .mypage .my_right .canmsg {
	text-align:center;
	margin-top:70px;
	margin-bottom:20px;
	padding-right:50px;
}
.content-wrap .mypage .my_right #canhome {
	background-color:#1242b1;
	width:60px;
	height:30px;
	color:#ffffff;
	border:none;
	border-radius:5px;
	text-align:center;
	margin-right:50px;
}
.content-wrap .mypage .my_right #canhome:hover {
	background-color:#1230a1;
}
</style>
<script>
$(function() {
	$('#canhome').click(function() {
		location.href="/Project/index.jsp"
	})
})
</script>
<body>
<jsp:include page="top.jsp" />
	<div class="body-wrap">
		<div class="headertext"><h1>마이페이지</h1></div>
			<div class="content-wrap">
				<div class="mypage">
					<div class="my_right">
						<h3 class="canmsg">회원탈퇴가 완료되었습니다.</h3>
						<div style="text-align:center;">
							<button type="button" id="canhome">홈으로</button>
						</div>
					</div>
					<ul class="my_left">
						<li class="first"><a href="#">구매내역</a></li>
						<li><a href="#">내가 쓴 Q&A</a></li>
						<li><a href="/Project/MyMemCheck.jsp?member=update" id="update" >회원정보수정</a></li>
						<li class="last"><a href="/Project/MyMemCheck.jsp?member=cancel" id="cancel" style="color:#1242b1;font-weight:bold;">회원탈퇴</a></li>
					</ul>
					
				</div>
		</div>
	</div>
<jsp:include page="bottom.jsp" />
</body>
</html>