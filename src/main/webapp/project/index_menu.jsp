<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String m_id=(String)session.getAttribute("m_id");
    %>
    <div id="header-wrap" class="header-wrap">
  		
  		<div	class="box1">
  			<div class="wrap">
	  			<ul class="login">
				       	<%
				       	if(m_id!=null){ %>
				       	<li><b><%=m_id %></b>님 환영합니다!<br>
				      	<a href="Logout.jsp">로그아웃</a></li>
				        	
				        <% }else { %>
				        <li><a href="Login.jsp">로그인</a></li>
				        <% } %>
				        <li><a href="#">회원가입</a></li>
				        <li class="last"><a href="#">고객센터</a></li>
				</ul>
			</div>
  		</div><!-- box1 -->
        <div class="box2">
	        <div class="left">
	        	<a href="index.jsp" ><b>MingShop</b></a>
	        </div>
	        <div class="center">
		        <div class="search">
		        	<form method="GET" onsubmit="검색어 입력했는지 체크하는 자바스크립트함수">
		        		<input name="keyword" type="text" placeholder="검색어를 입력하세요.">
		        		<input type="image" src="./img/search_icon.png" width="28px" height="28px" align="absmiddle">
		        	</form>
		        </div>
		        
	    		<!-- 상단 로그인쪽 -->
		        	<ul class="right">
 						<li><a href="#"><img src="./img/mypage_icon.png">
 						<p>마이페이지</p></a></li>
			            <li><a href="#"><img src="./img/cart_icon.png">
			            <p>장바구니</p></a></li>
		            </ul><!-- right -->
        	</div><!-- center -->
        </div><!-- box2 -->
        <div class="box3"><!-- 상단바 메뉴 -->
        	<div class="wrap">
	        	<ul class="menu">
		            <li><a href="#">사료</a></li>
		            <li><a href="#">간식</a></li>
		            <li><a href="#">식기/산책</a></li>
		            <li><a href="#">위생/장난감</a></li>
		            <li class="line"><a href="#">미용/목욕</a></li>
		            <li><a href="#">신상품</a></li>
		            <li><a href="#">베스트 상품</a></li>
		            <li><a href="#">세일 상품</a></li>
	            </ul><!-- menu -->
	        </div>
        </div><!-- box3 --> 
              
    </div><!-- header-wrap -->