
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		*{font-size: 24pt}
	</style>
	
</head>
<body>
	<h1>Date</h1>
	<% 
	Date dt = new Date();
	out.print( "날짜" + dt.toLocaleString() + "<br>");
	
	%>
</body>
</html> 