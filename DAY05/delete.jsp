<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dongari.dongariSQL"%>
<%@ include file="ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
	<%
		try {
		CCODE = request.getParameter("CCODE");
		msg = "DELETE FROM CUSTOMER WHERE CCODE="+CCODE;
		ST = CN.createStatement();
		ST.executeUpdate(msg);
		response.sendRedirect("admin.jsp");
		} catch(Exception ex){System.out.println("에러 : "+ex);}
	%>
</body>
</html>