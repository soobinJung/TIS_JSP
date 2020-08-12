<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_loginSave.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<%
		String Gtitle = request.getParameter("title");
		int Gage = Integer.parseInt(request.getParameter("age"));
		
		out.println("title" + Gtitle );
		out.println("title" + Gage    );
	%>
</body>
</html>