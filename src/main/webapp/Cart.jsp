<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link rel="stylesheet" href="/Project/css/style.css?ver=2">
<script type="text/javascript"
			src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
/* 장바구니페이지 설정 */
.content-wrap .cart{
	width:1000px;
	margin:0 auto;
	padding:50px;

}
.content-wrap .cart table {
	width:1000px;
	text-align:center;
}
.content-wrap .cart table th{
	font-size:12px;
	border-top:1px solid #ccc;
	border-bottom:1px solid #ccc;
}
.content-wrap .cart .cartlist td{
	border-bottom:1px solid #ccc;
	font-size:12px;
	padding:10px 0;
}
.content-wrap .cart .cartlist .cart-sub {
	text-align:left;
	padding-left:5px;
}
.content-wrap .cart .amount {
	width:30px;
	height:20px;
	text-align:center;
	font-size:12px;
	
}
.content-wrap .cart .amtgroup {
	position:relative;
	display: inline-block;
	width:56px;
	height:27px;
}
.content-wrap .cart .amountup {
	position:absolute;
	
}
.content-wrap .cart .amountdown {
	position:absolute;
	bottom:0;
}
.content-wrap .cart .totalprice {
	background-color:#f4f4f4;
}
.content-wrap .cart .totalprice td {
	text-align:right;
	padding:20px 0 10px 0;
	border-bottom:1px solid #ccc;
	font-size:12px;
	background-color:
}
.content-wrap .cart .cartbtn {
	text-align:right;
}
.content-wrap .cart .cartbtn button {
	width:200px;
	height:60px;
	margin-top:50px;
}

.content-wrap .cart .purbtn {
	background-color:#1242b1;
	color:#ffffff;
	border:none;
	border-radius:5px;
	margin-left:10px;
}
.content-wrap .cart .purbtn:hover {
	background-color:#1230a1;
}
</style>
</head>
<body>
<jsp:include page="top.jsp" />
	<div class="body-wrap">
		<div class="headertext"><h1>장바구니</h1></div>
			<div class="content-wrap">
				<div class="cart">
					<div>
						<table cellspacing="0">
							<tr height="30px" bgcolor="#f4f4f4">
								<th colspan="2" width="45%">상품정보</th>
								<th width="11%">판매가</th>
								<th width="10%">수량</th>
								<th width="11%">배송비</th>
								<th width="13%">총금액</th>
								<th></th>
							</tr>
							<tr class="cartlist">
								<td width="15%">
									<img src="/Project/img/ball.jpg" width="90px" height="90px" />
								</td>
								<td width="35%" class="cart-sub"><span>장난감 공</span></td>
								<td ><span id="cartprice">20,000원</span></td>
								<td>
									<span>
										<span class="amtgroup">
											<input type="text" class="amount" value="1"/>
											<a href="" class="amountup"><img src="/Project/img/btn_quantity_up.gif" /></a>
											<a href="" class="amountdown"><img src="/Project/img/btn_quantity_down.gif" /></a>
										</span>
									</span>
								</td>
								<td>3,000원</td>
								<td><span id="carttotal"><b>20,000원</b></span></td>
								<td><button>삭제</button></td>
							</tr>
							<tr class="cartlist">
								<td width="15%">
									<img src="/Project/img/ball.jpg" width="90px" height="90px" />
								</td>
								<td width="35%" class="cart-sub"><span>장난감 공</span></td>
								<td ><span id="cartprice">20,000원</span></td>
								<td>
									<span>
										<span class="amtgroup">
											<input type="text" class="amount" value="1"/>
											<a href="" class="amountup"><img src="/Project/img/btn_quantity_up.gif" /></a>
											<a href="" class="amountdown"><img src="/Project/img/btn_quantity_down.gif" /></a>
										</span>
									</span>
								</td>
								<td>3,000원</td>
								<td><span id="carttotal"><b>20,000원</b></span></td>
								<td><button>삭제</button></td>
							</tr>
							<tr class="totalprice">
								<td colspan="7">
									<span style="color:gray;">총금액 </span><span><b>20,000</b></span> + <span style="color:gray;">배송비 3,000</span>=<b>합계 : <span style="font-size:22px;">23,000 </span></b>원
								</td>
							</tr>
						</table>
						<div class="cartbtn">
							<button type="button">쇼핑계속하기</button>
							<button type="button" class="purbtn">구매하기</button>
						</div>
						</div>
					</div>
				</div>
			</div>
	</div>
<jsp:include page="bottom.jsp" />	
</body>
</html>