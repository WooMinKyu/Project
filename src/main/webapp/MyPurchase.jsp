<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매내역</title>
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
.content-wrap .mypur{
	width:800px;
	margin:0 auto;
	padding:0 50px;
}
.content-wrap .mypur h2{

	margin:0 auto;
}
.content-wrap .mypur table {
	width:800px;
	margin:40px auto;
	margin-top:40px;
	text-align:center;
	font-size:14px;
}
.content-wrap .mypur table td{
	border-bottom:1px solid gray;
}
.content-wrap .mypur table td.mypur-sub {
	text-align:left;
	padding-left:20px;
	
}
.content-wrap .mypur table td.mypur-sub a {
	color:black;
}
.content-wrap .mypur table td.mypur-sub a:hover {
	color:#ccc;
}
</style>
<body>
<jsp:include page="top.jsp" />
	<div class="body-wrap">
		<div class="headertext"><h1>마이페이지</h1></div>
			<div class="content-wrap">
				<div class="mypage">
					<div class="my_right">
						<div class="mypur">
							<h2>나의 구매내역</h2>
							<div>
								<table cellspacing="0">
									<tr height="30px" bgcolor="#f4f4f4">
										<th width="20%">구매번호</th>
										<th width="10%">이미지</th>
										<th width="30%">이름</th>
										<th width="15%">배송비</th>
										<th width="18%">총금액</th>
									</tr>
									<tr class="mypurlist">
										<td>123123123123</td>
										<td >
											<img src="/Project/img/ball.jpg" width="70px" height="70px" />
										</td>
										<td class="mypur-sub"><a href="#">장난감 공</a></td>
										<td>3,000원</td>
										<td><span id="mypurtotal"><b>20,000원</b></span></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					<ul class="my_left">
						<li class="first"><a href="#" style="color:#1242b1;font-weight:bold;">구매내역</a></li>
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