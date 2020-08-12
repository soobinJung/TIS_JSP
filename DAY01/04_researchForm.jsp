<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"   %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_researchForm.jsp ] </title>
 
 <style type="text/css">
     * { font-size:30pt; }
     a { font-size: 30pt; color:green; text-decoration:none; }
	 a:hover { font-size:32pt; color:blue; text-decoration:underline; }
 </style>
</head>
<body>
		04_researchForm.jsp  315<p>
		
		<form action="04_researchSave.jsp">
		 	제목: <input type="text" name="title" value="snow"> <br>
		 	나이: <input type="text" name="age" value="27"> <br>
		 	동물:
		 	<input type="checkbox" name="hobby" value="zebra">지브라
		 	<input type="checkbox" name="hobby" value="pig">돼지
		 	<input type="checkbox" name="hobby" value="crab">크랩
		 	<input type="checkbox" name="hobby" value="bull">황소 <p>
		 	<input type="submit" value="결과보기">
		 	<input type="reset" value="입력및선택취소">
		</form>
		
	<p>
	<a href="04_researchForm.jsp">[계절화면]</a>
	<a href="index.jsp">[index]</a>
	<a href="guestList.jsp">[guestList]</a>
</body>
</html>












