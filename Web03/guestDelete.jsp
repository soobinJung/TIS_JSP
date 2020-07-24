<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestDelete.jsp]  </title>
  <style type="text/css">
	*{ font-size: 24pt; }
	a{ font-size: 24pt; color:green; text-decoration:none; }
	a:hover{ font-size:26pt; color:blue; text-decoration:underline; }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
  <%
    //guestDelete.jsp문서 단독실행하면 에러발생합니다 단독실행금지
    Gdata = request.getParameter("idx");
    System.out.println("삭제대상 넘어온 Gsabun = " + Gdata);
    msg="delete  from guest where sabun =  " + Gdata ;
    ST=CN.createStatement();
    ST.executeUpdate(msg);
    System.out.println(Gdata + " 데이터 삭제처리 성공했습니다");
    response.sendRedirect("guestList.jsp");
  %>
 <p>
 
 <p><br>
</body>
</html>




