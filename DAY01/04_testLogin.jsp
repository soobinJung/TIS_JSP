<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ first.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	당신이 입력한 정보 입니다.( 고전 )<br>
	아이디    : <%=request.getParameter("id") %><br>
	비밀번호 : <%=request.getParameter("pwd") %><br>
	
	당신이 입력한 정보 입니다.(EL 방식)<br>
	아이디    : ${param.id}<br>
	비밀번호 : ${param.pwd}<br>
	
</body>
</html>