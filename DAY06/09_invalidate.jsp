<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 09_invalidate.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<%
		session.setAttribute("s_name1", "저는 세션에 저장된 첫번 째 값. ^0^ " );
		session.setAttribute("s_name2", "저는 세션에 저장된 두번 째 값. ^0^ " );
		session.setAttribute("s_name3", "저는 세션에 저장된 세번 째 값. ^0^ " );
		
		out.print("<h3> >> 세션 값을 삭제하기 전 << <h3>");
		
		Enumeration names;
		names = session.getAttributeNames();
		
		while( names.hasMoreElements() ){
			String name  = names.nextElement().toString();
			String value = session.getAttribute(name).toString();
			out.println( name + " : " + value + "<br>" );
		}

		session.invalidate();
		
		out.print("<h3> >> 세션 모든 값을삭제한 후 << <h3>");
		if( request.isRequestedSessionIdValid()==true){
			out.print("세션 아이디가 유효 합니다");
		}else{
			out.print("세션 아이디가 유효 하지 않습니다");
		}
		
	
	%>
</body>
</html> 