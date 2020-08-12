<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [ 04_researchForm.jsp ] </title>
 
 <style type="text/css">
   * { font-size:24pt; }
 </style>
</head>
<body>
      04_researchForm.jsp<br>
      <form action="04_researchSave.jsp">
      좋아하는 계절:
      제목 : <input type="text" name="title" value="snow">    <br>
      나이 : <input type="text" name="age" value="27">       <br>
      <input type="checkbox" name="season" value="spring"> 봄
      <input type="checkbox" name="season" value="summer"> 여름
      <input type="checkbox" name="season" value="fail">   가을
      <input type="checkbox" name="season" value="winter"> 겨울
      
      <br>
      <input type="submit" value="입력 및 취소">
      </form>
      
      
</body>
</html>