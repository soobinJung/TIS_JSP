<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"   %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_researchSave.jsp.jsp ] </title>
 
 <style type="text/css">
     * { font-size:30pt; font-weight: bold; }
     a { font-size: 30pt; color:green; text-decoration:none; }
	 a:hover { font-size:32pt; color:blue; text-decoration:underline; }
 </style>
</head>
<body>
	04_researchSave.jsp.jsp  316페이지 단독실행 <p>
	
	넘어온제목=${param.title} <br>
	넘어온나이=${param["age"]} <br>
	넘어온동물=
	<c:forEach items="${paramValues.hobby}" var="ss">
		${ss}
	</c:forEach>
	
	<p>
	<a href="04_researchForm.jsp">[동물화면]</a>
	<a href="index.jsp">[index]</a>
	<a href="guestList.jsp">[guestList]</a>
</body>
</html>












