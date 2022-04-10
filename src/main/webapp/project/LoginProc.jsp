<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="member1.MemberDAO" %>

<jsp:useBean id="md" class="member1.MemberDAO" scope="page" />
<%
	
	String mem_id=request.getParameter("mem_id");
	String mem_passwd=request.getParameter("mem_passwd");

	boolean check=md.loginCheck(mem_id, mem_passwd);
	
	if(check){
		session.setAttribute("idKey", mem_id);
		response.sendRedirect("index.jsp");
	}else {%>
		<script>alert("아이디 또는 비밀번호가 틀렸습니다.")
					history.back()</script>
	<% } %>