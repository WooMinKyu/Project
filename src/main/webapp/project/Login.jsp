<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="css/log.css?ver=2">
<link rel="stylesheet" href="css/main01.css?ver=2">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="js/jquery.cycle2.js"></script>
<script src="js/script.js"></script>
</head>
<body>
<jsp:include page="index_menu.jsp" />
	<center>
		<form class="logcen" action="LoginProc.jsp" method="post" name="login">
		<table bordercellpadding="1" cellspacing="0" >
			<tr>
				<th colspan="3" class="bt">로그인</th>
			</tr>
			<tr>
				<td align="center" class="idpass">아이디: </td>
				<td colspan="2"><input type="text" name="mem_id" size="15" /></td>
			</tr>
			<tr>
				<td align="center" class="idpass">비밀번호: </td>
				<td colspan="2"><input type="password" name="mem_passwd" size="15" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2" class="bt"><input type="button" value="로그인" onclick="loginCheck()" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center" class="bt"><input type="button" value="아이디 찾기" />&nbsp;&nbsp;&nbsp;
											<input type="button" value="비밀번호 찾기" />
				</td>
			</tr>
		</table>
		</form>
	</center>
	<jsp:include page="index_footer.jsp" />
	<script>
		document.login.mem_id.focus();
	</script>
</body>
</html>