<%@ page contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ eaxmple22 ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
	<jsp:useBean id="book" class="com.edu.beans.BookBean"/>
	<jsp:setProperty property="*" name="book"/>
	
	<%
		request.setAttribute("book", book);
	%>
	
	<jsp:forward page="bookOutput.jsp"/>
</body>
</html>