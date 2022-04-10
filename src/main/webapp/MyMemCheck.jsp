<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
.content-wrap .mypage .my_right #mycheckform {
	width:210px;
	margin:0 auto;
	margin-top:70px;
}
.content-wrap .mypage .my_right #mycheckform input[type=password] {
	padding:3px 5px;
	margin-top:20px;
}
.content-wrap .mypage .my_right #mycheckform #pwCheck {
	width:40px;
	height:25px;
	background-color:#1242b1;
	color:#ffffff;
	border:none;
	border-radius:5px;
}
.content-wrap .mypage .my_right #mycheckform #pwCheck:hover {
	background-color:#1230a1;
}
</style>
<script>
$(function() {
	if(${param.member.equals('update')}) {
		$('#update').css('color','#1242b1').css('font-weight','bold');
	}
	if(${param.member.equals('cancel')}) {
		$('#cancel').css('color','#1242b1').css('font-weight','bold');
	}
	$('#pwCheck').click(function() {
		if($('#m_pw').val()=='') {
			alert('비밀번호를 입력해주세요.')
			$('#m_pw').focus();
		}else {
			
		}
		$.ajax({
			url:'/Project/PwCheck.jsp', 
			type:'post',	   
			data:{m_pw:$('#m_pw').val()},
			success:function(args) {

			}
		})
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
						
						<form action="" method="post" id="mycheckform">
							<h4>비밀번호를 입력해주세요.</h4>
							<input type="password" name="m_pw" id="m_pw" size="15" placeholder="비밀번호" />
							<button type="button" id="pwCheck">확인</button>
							<span id="checkmsg"></span>
						</form>
					</div>
					<ul class="my_left">
						<li class="first"><a href="#">구매내역</a></li>
						<li><a href="#">내가 쓴 Q&A</a></li>
						<li><a href="/Project/MyMemCheck.jsp?member=update" id="update">회원정보수정</a></li>
						<li class="last"><a href="/Project/MyMemCheck.jsp?member=cancel" id="cancel">회원탈퇴</a></li>
					</ul>
					
				</div>
		</div>
	</div>
<jsp:include page="bottom.jsp" />
</body>
</html>