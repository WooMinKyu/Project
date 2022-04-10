<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <title>index.jsp</title>
    <link rel="stylesheet" href="">
    
    <!-- <link href="./css/bootstrap.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <!-- <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script src="js/jquery.cycle2.js"></script> -->
</head>
<style>
/* 링크 밑줄제거 */
a {text-decoration: none;}
/* 네비게이션바 가로로 만들기 */
li {
	float:left;
	list-style: none;
}
/* 초기화 */
* {
	padding:0;
	margin:0;
}

/* 상단 글자 기본색  */
.header-wrap a{
	color:#5e5e5e;
}
/* 최상단 항목 세부설정 */
/* box1 설정 */
.box1 .wrap {
	position:relative;
	width:994px;
	height:31px;
	margin:0 auto;
}
.box1 .wrap .login {
	font-size:12px;
	position:absolute;
	right:0;
	line-height: 12px;
	margin-top:15px;
}
/* 간격 및 구분선 설정 */
.box1 .wrap .login li {
	display: inline;
    padding-right: 10px;
    padding-left: 10px;
    border-right: 1px solid #c9c9c9;
}
.box1 .wrap .login li a {
	font-weight: bold;
}
.box1 .wrap .login li a:hover {
	color:#c5c5c5;
}
.box1 .wrap .login li.last {
	border-right:0px;
}

/* ------------------- */
/* box2 설정 */
.box2 {
	margin: 0 auto;
    position: relative;
    width: 1200px;
    height: 115px;
    margin-top:40px;
}
/* 로고부분 위치설정 */
.box2 .left {
	position: absolute;
	left:80px;
}
/* 로고 글자 크기 및 색 설정 */
.box2 .left a {
	font-size:45px;
	color:#1242b1;
}
/* 검색부분 위치설정 */
.box2 .search {
	position: absolute;
	left:400px;
	margin-top:15px;
}
.box2 .search input[type=text] {
	width:350px;
	height:30px;
	border-radius:12px ;
	padding:2px 12px;
	border-color:black;
}
input:focus {outline:none;}
.box2 .search input[type=image] {
	margin-top:4px;
	position: absolute;
	right:8px;
}

.box2 .right {
	position:absolute;
	right:130px;
	margin-top:10px;
}
.box2 .right li {
	display: inline;
    padding-right: 10px;
    padding-left: 10px;
}

.box2 .right li p {
	font-size:14px;
	margin-top:5px;
	font-weight: bold;
}
/* ------------------- */
/* box3 설정 */
.box3 {
	border-bottom:2px solid gray;
	padding-bottom:5px;
}
.box3 .wrap {
	margin: 0 auto;
    position: relative;
    width: 1200px;
    height:40px;
}
.box3 .menu {
	font-size:18px;
	position:absolute;
	left:0;
	line-height: 32px;
}
.box3 .menu li{
	display: inline;
    padding-right: 30px;
    padding-left: 30px;
}
.box3 .menu li.line {
	padding-right:90px;
	margin-right:60px;
}
/* 이미지 슬라이드 설정 */
.b_box1 {
	width:1200px;
	position:relative;
}
.b_box1 .imgslide .bxslider img {
	width:1200px;
	height:500px;
}
</style>
<script>
  
  $(function() {

	    $('.bxslider').bxSlider({ // 클래스명 주의!

	        auto: true, // 자동으로 애니메이션 시작

	        speed: 500,  // 애니메이션 속도

	        pause: 5000,  // 애니메이션 유지 시간 (1000은 1초)

	        mode: 'horizontal', // 슬라이드 모드 ('fade', 'horizontal', 'vertical' 이 있음)

	        autoControls: true, // 시작 및 중지버튼 보여짐

	        pager: true, // 페이지 표시 보여짐

	        captions: true, // 이미지 위에 텍스트를 넣을 수 있음

	    });

	});

</script>
<body>
<center>
    <jsp:include page="index_menu.jsp" />
    <div class="body-wrap">
    	<div class="b_box1">
    		<div class="imgslide">
			    <ul class="bxslider">
					<li>
						<a href="#">
							<img src="/Project3/img/gansik2-1.jpg" title="이미지1">
						</a>
					</li>
					<li>
						<a href="#">
							<img src="/Project3/img/pad-1.jpg" title="이미지2">
						</a>
					</li>
					<li>
						<a href="#">
							<img src="/Project3/img/ball-1.jpg" title="이미지3">
						</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="b_box2">
			
		</div>
    </div>
    
        <!-- <section>이벤트창
            
        </section>
        <section class="item">이벤트 상품들
            <article class="event">
                <h2>이벤트 상품</h2>
                <figure>
                    <a href="#"><img src="img/gansik2-1.jpg" alt="gan2">
                    <figcaption>[★★신상기념 10% 할인!!!!★★] 간식 6종세트</figcaption>
                    </a>
                </figure>
                <figure>
                    <a href="#"><img src="img/pad-1.jpg" alt="pad1">
                    <figcaption>[★★신상기념 10% 할인!!!!★★] 구독 고흡수 강아지 배변패드 100매</figcaption>
                    </a>
                </figure>
                <figure>
                    <a href="#"><img src="img/ball-1.jpg" alt="ball">
                    <figcaption>[★★★30% 할인★★★] 딩동펫 무독성 장난감 방울공</figcaption>
                    </a>
                </figure>
                </article>
                
                <article class="inki">
                    <div><h2>인기 상품</h2></div>
                <figure>
                    <a href="#"><img src="img/mok.jpg" alt="mok1">
                    <figcaption>5M 컬러자동목줄</figcaption>
                    </a>
                </figure>
                <figure>
                    <a href="#"><img src="img/ear.jpg" alt="ear1">
                    <figcaption>쏘아베 귀 세정제</figcaption>
                </figure>
                <figure>
                    <a href="#"><img src="img/brush2.jpg" alt="brush1">
                    <figcaption>강아지 브러쉬</figcaption>
                    </a>
                </figure>
                <figure>
                    <a href="#"><img src="img/sikgi.jpg" alt="sik1">
                    <figcaption>딩동펫 애견 베이직 원목 식기 2구</figcaption>
                    </a>
                </figure>
                <figure>
                    <a href="#"><img src="img/bari.jpg" alt="bari1">
                    <figcaption>리케이 클리퍼 k9 바리깡</figcaption>
                    </a>
                </figure>
                <figure>
                    <a href="#"><img src="img/baltop.jpg" alt="baltop1">
                    <figcaption>브리더 발톱깍이</figcaption>
                    </a>
                </figure>
            </article>
        </section> -->
     </center>
        <%-- <jsp:include page="index_footer.jsp" /> --%>
</body>
</html>