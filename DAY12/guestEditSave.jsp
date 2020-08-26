<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestEditSave.jsp] </title>
  <style type="text/css">
	*{ font-size: 26pt; }
	a{ font-size: 26pt; color:green; text-decoration:none; }
	a:hover{ font-size:30pt; color:blue; text-decoration:underline; }
  </style>
	
	<script type="text/javascript">
	</script>
</head>
<body>
  <p>
  
 <%
   //guestEditSave.jsp 단독실행하면에러발생 

    
    System.out.println("수정넘어온사번=" + Gsabun );
    System.out.println("수정넘어온이름=" + Gname );
    System.out.println("수정넘어온제목=" + Gtitle );  
    System.out.println("수정넘어온급여=" + Gpay );  
    System.out.println("수정넘어온메일=" + Gemail );  
    

 response.sendRedirect("geditpre.do");
%>	


</body>
</html>










