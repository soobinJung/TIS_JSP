<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[guestEdit.jsp]</title>
<style type="text/css">
   *{font-size:16pt;}
   a{ font-size: 16pt; color:black; text-decoration:none;}
   a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
</head>
<body>
  <p>guestEdit.jsp문서 입력화면 <p>
 
 <form method="get" action="guestEditSave.jsp">
  <% 
  	Gdata = request.getParameter("idx");
  System.out.println("넘어온 Gsabun = " + Gdata);
  %>
 <h1>[ 수 정  ]</h1>
 
	    사번:<input type="text" name="sabun" value="<%=Gdata%>"> <br>
	    이름:<input type="text" name="name" > <br>
	    제목:<input type="text" name="title" > <br>
	    급여:<input type="text" name="pay" value="97"> <br>
	    메일:<input type="text" name="email" value="do@ti.org" > <br>
	      <input type="submit" value="등록하기">
	      <input type="reset" value="입력취소">
 </form>
	
 <br>

</body>
</html>