<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="/Project/css/style.css?ver=2">
<script src="/Project/js/addr.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script><!-- 주소 API -->
<script type="text/javascript"
			src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
.content-wrap .reg{
	width:700px;
	margin:0 auto;
	padding:50px;
}
.content-wrap .reg h2{
	width:550px;
	margin:0 auto;
}
.content-wrap .reg table {
	width:550px;
	height:500px;
	margin:40px auto;
	border:1px solid gray;
}
.content-wrap .reg .require {
	color:red;
}
.content-wrap .reg #idconfirm,#pwconfirm,#pwcconfirm,#nameconfirm,#phoneconfirm,#addrconfirm {
	color:red;
	font-size:12px;
	margin-left:20px;
}
.content-wrap .reg .reg_left {
	width:100px;
	font-size:13px;
	padding-left:15px;
}
.content-wrap .reg input[name=m_id] {
	width:120px;
	height:15px;
	margin:10px 0 10px 10px;
	padding:5px;
}
.content-wrap .reg #idCheck {
	margin-top:10px;
	width:70px;
	height:22px;
}
.content-wrap .reg input[type=password] {
	width:120px;
	height:15px;
	margin:10px 0 10px 10px;
	padding:5px;
}
.content-wrap .reg input[name=m_name] {
	width:120px;
	height:15px;
	margin:10px 0 10px 10px;
	padding:5px;
}
.content-wrap .reg input[name=email_1] {
	width:100px;
	height:15px;
	margin:10px 0 10px 10px;
	padding:5px;
}
 .content-wrap .reg input[name=email_2] {
 	width:100px;
	height:15px;
	margin:10px 0;
	padding:5px;
 }
  .content-wrap .reg input[name=phone_1] {
 	width:70px;
	height:15px;
	margin:10px 0 0 10px;
	padding:5px;
 }
  .content-wrap .reg input[name=phone_2] {
 	width:70px;
	height:15px;
	margin:10px 0;
	padding:5px;
 }
  .content-wrap .reg input[name=phone_3] {
 	width:70px;
	height:15px;
	margin:10px 0;
	padding:5px;
 }
 #sample6_postcode {
 	width:100px;
	height:15px;
	margin:10px 0 0 10px;
	padding:5px;
 }
 #sample6_address {
 	width:350px;
	height:15px;
	margin:10px 0 0 10px;
	padding:5px;
 }
  #sample6_detailAddress {
 	width:150px;
	height:15px;
	margin:10px 0 0 10px;
	padding:5px;
 }
 #sample6_extraAddress {
 	width:150px;
	height:15px;
	margin:10px 0;
	padding:5px;
 }
.content-wrap .reg button {
	width:250px;
	height:40px;
	margin-top:20px;
}

.content-wrap .reg .regbtn {
	background-color:#1242b1;
	color:#ffffff;
	border:none;
	border-radius:5px;
	margin-right:20px;
}
.content-wrap .reg .regbtn:hover {
	background-color:#1230a1;
}
</style>
<script>
$(function() {
	$('#idCheck').click(function() {
		if($('#m_id').val()=='') {
			$('#idconfirm').html('아이디를 입력해주세요.')
			$('#m_id').focus();
		}/* else {
			$('#idconfirm').html()
			$.ajax({
				url:'/Projet/idCheck.jsp', 
				type:'post',	   
				data:{m_id:$('#m_id').val()},
				success:function(args) {

				}
			})
		} */
	})
	$('#m_id').keyup(function() {
			$('#idconfirm').html('');
		})
	$('#m_pw').keyup(function() {
		$('#pwconfirm').html('');
	})
	$('#m_name').keyup(function() {
		$('#nameconfirm').html('');
	})
	$('#phone_1').keyup(function() {
		$('#phoneconfirm').html('');
	})
	$('#phone_2').keyup(function() {
		$('#phoneconfirm').html('');
	})
	$('#phone_3').keyup(function() {
		$('#phoneconfirm').html('');
	})
	$('#sample6_detailAddress').keyup(function() {
		$('#addrconfirm').html('');
	})
	
	$('#m_pw').keyup(function() {
		$('#pwcconfirm').html($('#pwcconfrim').html());
			if($('#m_pw').val()=='') {
				$('#pwcconfirm').html('');
			}
		})
	$('#m_pw_con').keyup(function() {
			$('#pwcconfirm').css('color','red').html('비밀번호가 일치하지않습니다.')
			if($('#m_pw_con').val()==$('#m_pw').val()) {
				$('#pwcconfirm').css('color','#3e4aff').html('비밀번호가 일치합니다.')
			}
			if($('#m_pw_con').val()=='') {
				$('#pwcconfirm').html('');
			}
		})
	
	$('.regbtn').click(function() {
		if($('#m_id').val()=='') {
			$('#idconfirm').html('아이디를 입력해주세요.')
			
			if($('#m_pw').val()=='') {
				$('#pwconfirm').html('비밀번호를 입력해주세요.')
			}
			if($('#m_pw_con').val()=='') {
				$('#pwcconfirm').html('비밀번호 확인을 입력해주세요.')
			}
			if($('#m_name').val()=='') {
				$('#nameconfirm').html('이름를 입력해주세요.')
			}
			if($('#phone_1').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_2').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_3').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}
			if($('#sample6_postcode').val()=='') {
				$('#addrconfirm').html('우편번호를 체크해주세요.')
				return false;
			}
			if($('#sample6_detailAddress').val()=='') {
				$('#addrconfirm').html('상세주소를 입력해주세요.')
			}
			$('#m_id').focus();
			return false;
		}
		
		if($('#m_pw').val()=='') {
			$('#pwconfirm').html('비밀번호를 입력해주세요.')
			
			if($('#m_pw_con').val()=='') {
				$('#pwcconfirm').html('비밀번호 확인을 입력해주세요.')
			}
			if($('#m_name').val()=='') {
				$('#nameconfirm').html('이름를 입력해주세요.')
			}
			if($('#phone_1').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_2').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_3').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}
			if($('#sample6_postcode').val()=='') {
				$('#addrconfirm').html('우편번호를 체크해주세요.')
				return false;
			}
			if($('#sample6_detailAddress').val()=='') {
				$('#addrconfirm').html('상세주소를 입력해주세요.')
			}
			$('#m_pw').focus();
			return false;
		}
		
		if($('#m_pw_con').val()=='') {
			$('#pwcconfirm').html('비밀번호 확인을 입력해주세요.')
			if($('#m_name').val()=='') {
				$('#nameconfirm').html('이름를 입력해주세요.')
			}
			if($('#phone_1').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_2').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_3').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}
			if($('#sample6_postcode').val()=='') {
				$('#addrconfirm').html('우편번호를 체크해주세요.')
				return false;
			}
			if($('#sample6_detailAddress').val()=='') {
				$('#addrconfirm').html('상세주소를 입력해주세요.')
			}
			$('#m_pw_con').focus();
			return false;
		}
		
		if($('#m_name').val()=='') {
			$('#nameconfirm').html('이름를 입력해주세요.')
			if($('#phone_1').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_2').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}else if($('#phone_3').val()=='') {
				$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			}
			if($('#sample6_postcode').val()=='') {
				$('#addrconfirm').html('우편번호를 체크해주세요.')
				return false;
			}
			if($('#sample6_detailAddress').val()=='') {
				$('#addrconfirm').html('상세주소를 입력해주세요.')
			}
			$('#m_name').focus();
			return false;
		}
		
		if($('#phone_1').val()=='') {
			$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			$('#addrconfirm').html('상세주소를 입력해주세요.')
			$('#phone_1').focus();
			return false;
		}else if($('#phone_2').val()=='') {
			$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			$('#addrconfirm').html('상세주소를 입력해주세요.')
			$('#phone_2').focus();
			return false;
		}else if($('#phone_3').val()=='') {
			$('#phoneconfirm').html('휴대폰번호를 입력해주세요.')
			$('#addrconfirm').html('상세주소를 입력해주세요.')
			$('#phone_3').focus();
			return false;
		}
		if($('#sample6_postcode').val()=='') {
			$('#addrconfirm').html('우편번호를 체크해주세요.')
			return false;
		}
		if($('#sample6_detailAddress').val()=='') {
			$('#addrconfirm').html('상세주소를 입력해주세요.')
			return false;
		}
		if($('#m_pw_con').val()!=$('#m_pw').val()) {
			$('#pwcconfirm').css('color','#3e4aff').html('비밀번호가 일치하지않습니다.')
			return false;
		}
		document.getElementById('regform').submit();
	})
})
function regCheck() {
	
}
</script>
</head>
<body>
<jsp:include page="top.jsp" />
	<div class="body-wrap">
		<div class="headertext"><h1>회원가입</h1></div>
			<div class="content-wrap">
				<form action="" method="post" id="regform">
					<div class="reg">
						<h2>회원 가입하기</h2>
						<div>
						<table>
						<tr>
							<td class="reg_left"><span class="require">*</span>아이디</td>
							<td><input type="text" id="m_id" name="m_id"  />
							<button type="button" id="idCheck">중복체크</button>
							<span id="idconfirm"></span></td>
						</tr>
						<tr>
							<td class="reg_left"><span class="require">*</span>비밀번호</td>
							<td><input type="password" id="m_pw" name="m_pw" />
							<span id="pwconfirm"></span></td>
						</tr>
						<tr>
							<td class="reg_left"><span class="require">*</span>비밀번호 확인</td>
							<td><input type="password" id="m_pw_con" name="m_pw_con" />
							<span id="pwcconfirm"></span></td>
						</tr>
						<tr>
							<td class="reg_left"><span class="require">*</span>이름</td>
							<td><input type="text" id="m_name" name="m_name" />
							<span id="nameconfirm"></span></td>
						</tr>
						<tr>
							<td class="reg_left">이메일</td>
							<td><input type="text" id="email_1" name="email_1" /> @ <input type="text" name="email_2" />
							<select id="email_2">
								<option value="선택해주세요">선택해주세요.</option>
								<option value="naver.com">naver.com</option>
								<option value="hanmail.net">hanmail.net</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
								<option value="hotmail.com">hotmail.com</option>
							</select></td>
						</tr>
						<tr>
							<td class="reg_left"><span class="require">*</span>휴대폰번호</td>
							<td><input type="text" id="phone_1" name="phone_1" />
							- <input type="text" id="phone_2" name="phone_2" />
							- <input type="text" id="phone_3" name="phone_3" />
							<div><span id="phoneconfirm"></span></div></td>
						</tr>
						<tr>
							<td class="reg_left"><span class="require">*</span>주소</td>
							<td><input type="text" id="sample6_postcode" placeholder="우편번호" disabled>
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><span id="addrconfirm"></span><br>
							<input type="text" id="sample6_address" placeholder="주소" disabled><br>
							<input type="text" id="sample6_detailAddress" placeholder="상세주소">
							<input type="text" id="sample6_extraAddress" placeholder="참고항목" disabled></td>
						</tr>
						</table>
						</div>
						<div style="text-align:center">
						<button type="button" class="regbtn">가입하기</button>
						<button type="button" onclick="javascript:history.back()">취소</button>
						</div>
					</div>
				</form>
			</div>
		
		</div>

<jsp:include page="bottom.jsp" />	
</body>
</html>