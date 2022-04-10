<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

<link rel="stylesheet" href="/Project/css/style.css?ver=1">
<script type="text/javascript"
			src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>

</style>
<script>
$(function() {
	$('.loginbtn').click(function() {
		if($('#m_id').val()=='') {
			$('#l_confirm').html('<b>아이디</b>를 입력해주세요.')
			$('#m_id').focus();
			return false;
		}	
		if($('#m_pw').val()=='') {
			$('#l_confirm').html('<b>비밀번호</b>를 입력해주세요.')
			$('#m_pw').focus();
			return false;
		}
		document.getElementById('logform').submit();
	})
	
})
</script>
</head>
<body>
<jsp:include page="top.jsp" />
		<div class="body-wrap">
			<div class="headertext"><h1>회원 로그인</h1></div>
			<div class="content-wrap">
				<form action="" method="post" id="logform">
					<div class="login">
						<h2>로그인</h3>
						<div>
							<input type="text" id="m_id" name="m_id" placeholder="아이디" />
							<input type="password"  id="m_pw" name="m_pw" placeholder="비밀번호" /><span id="l_confirm"></span>
						</div>
						<div class="findmember">
							<ul>
								<li><a href="">아이디 찾기</a></li>
								<li><a href="">비밀번호 찾기</a></li>
							</ul>
						</div>
						<button type="button" class="loginbtn">로그인</button>
						<button type="button">회원가입</button>
					</div>
				</form>
			</div>
		</div>
	<jsp:include page="bottom.jsp" />
</body>
</html>