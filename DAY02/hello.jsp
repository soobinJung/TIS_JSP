<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [hello.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<%
		String data = request.getParameter("title");
		
		if( data=="hb" || data.equals("hb")){
			%>
			<font size=6 color=blue >
				<b>
					<%=data%> 로그인 성공!
				</b>
			</font>
			 <img src="images/bt_login.gif">
			<% 
		}else{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
