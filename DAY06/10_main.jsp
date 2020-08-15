<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>10_main.jsp</title>
</head>
<body>
<%
	if( session.getAttribute("LoginUser") == null ){
		response.sendRedirect("10_loginForm.jsp");
	}else{
	%>
		<%=session.getAttribute("LoginUser")%> 님 안녕하세요 <br>
		저희 홈페이지에서 즐거운 시간 되세요
		
		<form method="post" action="10_logout.jsp">
			<input type="submit" value="logout">
		</form>
	<%}
%>
</body>
</html>