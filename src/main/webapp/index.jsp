<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <title>메인페이지</title>
    <link rel="stylesheet" href="/Project/css/style.css">
    
    <!-- <link href="./css/bootstrap.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script> -->
    <!-- <script src="js/jquery.cycle2.js"></script> -->
</head>
<style>

</style>
<script>
$(function() {
	    $('.bxslider').bxSlider({ // 클래스명 주의!
	        auto: true, // 자동으로 애니메이션 시작
	        speed: 500,  // 애니메이션 속도
	        pause: 5000,  // 애니메이션 유지 시간 (1000은 1초)
	        mode: 'fade', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)
	        autoControls: true, // 시작 및 중지버튼 보여짐
	        pager: true, // 페이지 표시 보여짐
	        captions: true // 이미지 위에 텍스트를 넣을 수 있음
	    });
});

</script>
<body>
    <jsp:include page="top.jsp" />
    <div class="body-wrap">

    		<div class="imgslide">
			    <ul class="bxslider">
					<li><a href="#"><img src="/Project/img/gansik2-1.jpg" title="이미지1"></a></li>
					<li><a href="#"><img src="/Project/img/pad-1.jpg" title="이미지2"></a></li>
					<li><a href="#"><img src="/Project/img/ball-1.jpg" title="이미지3"></a></li>
				</ul>
			</div>


			<div class="best">
				<div class="bestbox1">
					<p class="besttitle">베스트 상품</p>
					<div class="more"><a href="#">더보기 〉</a></div>
				</div>
				<div class="bestbox2">
					<div class="bestgoods">
						<ul >
							<li class="goods">
								<div class="thumnail">
								<a href="#"><img src="/Project/img/shampoo-1.jpg"/></a>
								</div>
								<div class="describe">
									<div class="title">
										<a href="#"><span>샴푸</span></a>
									</div>
									<div class="bestlogo">best</div>
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
					</div><!-- bestgoods -->
				</div><!-- bestbox2 -->
			</div><!-- best -->
			
			<div class="new">
				<div class="newbox1">
					<p class="newtitle">신상품</p>
					<div class="more"><a href="#">더보기 〉</a></div>
				</div>
				<div class="newbox2">
					<div class="newgoods">
						<ul >
							<li class="goods">
								<div class="thumnail">
								<a href="#"><img src="/Project/img/shampoo-1.jpg"/></a>
								</div>
								<div class="describe">
									<div class="title">
										<a href="#"><span>샴푸</span></a>
									</div>
									<div class="newlogo">new</div>
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
					</div><!-- newgoods -->
				</div><!-- newbox2 -->
			</div><!-- new -->
			
			<div class="sale">
				<div class="salebox1">
					<p class="saletitle">할인 상품</p>
					<div class="more"><a href="#">더보기 〉</a></div>
				</div>
				<div class="salebox2">
					<div class="salegoods">
						<ul >
							<li class="goods">
								<div class="thumnail">
								<a href="#"><img src="/Project/img/shampoo-1.jpg"/></a>
								</div>
								<div class="describe">
									<div class="title">
										<a href="#"><span>샴푸</span></a>
									</div>
									<div class="sale_late">40<span style="margin-right:10px">%</span></div>
									<ul class="price">
										<li >
											<span style="font-size: 20px;color: #000000;font-weight: bold;">10,000원</span>
										</li>
										<li style="margin-top:5px;">
											<span style="font-size: 15px;color: #cccccc;text-decoration: line-through;">10,000원</span>
										</li>
									</ul>
								</div>
							</li>
							<li class="goods"><a href="#"><img src="/Project/img/saryo2-1.jpg"/></a></li>
							<li class="goods"><a href="#"><img src="/Project/img/saryo2-1.jpg""/></a></li>
							<li class="goods"><a href="#"><img src="/Project/img/saryo2-1.jpg""/></a></li>
						</ul>
					</div><!-- salegoods -->
				</div><!-- salebox2 -->
			</div><!-- sale -->
    </div><!-- body-wrap -->
<jsp:include page="bottom.jsp" />
</body>
</html>