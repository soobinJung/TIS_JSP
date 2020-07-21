<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestDetail.jsp]  </title>
  <style type="text/css">
	*{ font-size: 26pt; }
	a{ font-size: 26pt; color:green; text-decoration:none; }
	a:hover{ font-size:30pt; color:blue; text-decoration:underline; }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
  <%
    data = "5566";
    msg="select * from guest where sabun =  " + data ;
    ST=CN.createStatement();
    RS=ST.executeQuery(msg); //조회한 한건 결과를 RS기억 
  %>
 <p>
 <table width="900" border="1" cellspacing="0">
   <tr bgcolor="yellow">
    <td>사번</td> <td>이름</td> <td>제목</td> 
    <td>날짜</td> <td>조회수</td>
   </tr>

<%
   //guestDetail.jsp문서는 단독실행금지 
   if(RS.next()==true) {
    Gsabun = RS.getInt("sabun");
    Gtitle = RS.getString("title");
%>   
   <tr>
     <td> <%= Gsabun %> </td> 
     <td> <%= RS.getString("name") %> </td> 
     <td> <%= RS.getString("title") %> </td> 
     <td> <%= RS.getDate("wdate") %> </td> 
     <td> <%= RS.getInt("hit") %> </td>  
   </tr>
<% } %>  
 </table>
 
 		
 <br>
 <a href="guestWrite.jsp">[등록]</a>
 <a href="index.jsp">[index]</a>
 <a href="guestList.jsp">[전체출력]</a>
 
 <p><br>
</body>
</html>




