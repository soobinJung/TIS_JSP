<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBB.jsp</title>
	<style type="text/css">
	  *{font-size: 26pt;}
	  a{font-size: 26pt; text-decoration: none; color:green}
	  a{font-size: 30pt; text-decoration:underline; color:blue}
	</style>

</head>
<body>  
   <!-- BBB.jsp단독실행금지 -->
   <%
     String Guser =  request.getParameter("tid") ;  
     int Gsalary = Integer.parseInt(request.getParameter("tpay"))  ;  
     System.out.println("넘어온유저 : "  +  Guser );
     System.out.println("넘어온금액 : "  +  Gsalary );
   %>
  
 <div align="center">
    BBB.jsp문서 데이터 받아요<p>
    <a href="AAA.jsp">[AAA]</a>
    <a href="index.jsp">[index]</a>
    <a href="guestWrite.jsp">[등록]</a>
    <a href="guestList.jsp">[출력]</a> 
 	<p>
 	<img src="images/a1.png"><br>
 </div>
 <p><br>   
</body>
</html>













