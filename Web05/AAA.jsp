<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AAA.jsp</title>
	<style type="text/css">
	  *{font-size: 26pt;}
	  a{font-size: 26pt; text-decoration: none; color:green}
	  a{font-size: 30pt; text-decoration:underline; color:blue}
	</style>

</head>
<body>
   
   <%!
      String Gname="hong";
      int Gpay=96;
   %>

 <div align="center">
    <!-- 문제1 Gname데이터를 hong를 BBB.jsp넘기고 싶어요 -->
    AAA.jsp문서 데이터 던져요<p>
    <a href="BBB.jsp?tid=<%=Gname%>&tpay=<%=Gpay%>">[BBB]</a>
    <a href="index.jsp">[index]</a>
    <a href="guestWrite.jsp">[등록]</a>
    <a href="guestList.jsp">[출력]</a> 
 	<p>
 	<img src="images/bar.gif"><br>
 	<img src="images/bar.gif"><br>
 	<img src="images/bar.gif"><br>
 </div>
 <p><br>   
</body>
</html>






