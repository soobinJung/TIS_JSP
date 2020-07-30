<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestWriteSave.jsp] </title>
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
   //guestWriteSave.jsp 단독실행하면에러발생 
   Gsabun = Integer.parseInt(request.getParameter("sabun"));
   Gname = request.getParameter("name");
   Gtitle = request.getParameter("title") ;
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gemail = request.getParameter("email");
    
    System.out.println("넘어온사번=" + Gsabun );
    System.out.println("넘어온이름=" + Gname );
    System.out.println("넘어온제목=" + Gtitle );  
    System.out.println("넘어온급여=" + Gpay );  
    System.out.println("넘어온메일=" + Gemail );  
    
try{

%>
  <div align="center"> 
   <img src="images/a1.png"> <br>
  </div> 
   
  <script type="text/javascript">
  	alert("사번데이터는 이미 등록되었습니다") ;
  	location.href="guestWrite.jsp";
  </script>	
  	
<%  
 sql.dbInsert(Gsabun, Gname, Gtitle, Gpay, Gemail);
  
}catch(Exception ex){ System.out.println("에러 "+ex); }

%>	

  <p>
  <a href="guestWrite.jsp">[등록]</a>
  <a href="index.jsp">[index]</a>
  <a href="guestList.jsp">[전체출력]</a><p><br>
</body>
</html>










