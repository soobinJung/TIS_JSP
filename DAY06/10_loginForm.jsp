<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 10_loginForm.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<form method="post" action="10_testLogin.jsp">
		<label for="userid">아이디 : </label>
		<input type="text" name="id" id="userid"><br>
		
		<label for="userpwd">비밀번호 :</label>
		<input type="password" name="pwd" id="userpwd"><br>
		
		<input type="submit" value="login" >
		
	</form>
</body>
</html> 