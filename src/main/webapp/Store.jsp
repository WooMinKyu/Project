<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 페이지</title>
<link rel="stylesheet" href="/Project/css/style.css?ver=1">
<script type="text/javascript"
			src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<style>
.content-wrap .store{
	width:1200px;
	margin:0 auto;
	border:1px solid red;
}
.content-wrap .store .store-menu {
	width:700px;
	margin:0 auto;
	padding:90px 90px 100px 90px;
	border-radius:20px;
	background-color:#f4f4f4;
	box-shadow:1px 1px 3px black;
	text-align:center;
}
.content-wrap .store .store-menu li {
	margin:0 60px;
	font-size:14px;
}
.content-wrap .store .store-menu li a {
	color:black;
}.content-wrap .store .store-menu li a:hover {
	color:#1242b1;
}
.store .storegoods .goods {
	border:1px solid gray;
	margin:50px 4px;
	width:290px;
	height:370px;
}
.store .storegoods .thumnail {
	width:290px;
	height:290px;
	margin-bottom:20px;
	border-radius:20px;
	overflow:hidden;
}
.store .storegoods .thumnail img {
	width:290px;
	height:290px;
	margin-bottom:20px;
	overflow:hidden;
}
.store .storegoods .title span{
	font-weight:bold;
	color:black;
}

.store .storegoods .logo {
	display: inline-block;
	vertical-align: top;
	color:#FF0000;
	font-weight: bold;
	font-size:24px;
	margin-right:40px;
}
.store .storegoods .price{
	display: inline-block;
	height:27px;
	margin-top:3px;
}
</style>
<body>
<jsp:include page="top.jsp" />
	<div class="body-wrap">
		<div class="headertext"><h1>카테고리</h1></div>
			<div class="content-wrap">
				<div class="store">
					<ul class="store-menu">
						<li><a href="#">발톱 관리</a></li>
						<li><a href="#">샴푸</a></li>
						<li><a href="#">브러쉬</a></li>
						<li><a href="#">이발기</a></li>
					</ul>
					<div class="storegoods">
						<ul >
							<li class="goods">
								<div class="thumnail">
								<a href="#"><img src="/Project/img/shampoo-1.jpg"/></a>
								</div>
								<div class="describe">
									<div class="title">
										<a href="#"><span>샴푸</span></a>
									</div>
									<div class="logo">best</div>
									<ul class="price">
										<li >
											<span style="font-size: 20px;color: #000000;font-weight: bold;">10,000원</span>
										</li>
									</ul>
								</div>
							</li>
							<li class="goods"><a href="#"><img src="/Project/img/saryo2-1.jpg"/></a></li>
							<li class="goods"><a href="#"><img src="/Project/img/saryo2-1.jpg""/></a></li>
							<li class="goods"><a href="#"><img src="/Project/img/saryo2-1.jpg""/></a></li>
						</ul>
					</div>
				</div>
			</div>
	</div>
<jsp:include page="bottom.jsp" />
</body>
</html>