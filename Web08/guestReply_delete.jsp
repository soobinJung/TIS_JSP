<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_delete.jsp] </title>
	<style type="text/css">
	  *{ font-size: 16pt; font-weight: bold; }
	  a{ font-size: 16pt; text-decoration:none; color:blue ; font-family: Comic Sans MS; }
	  a:hover{ font-size: 18pt; text-decoration:underline; color:green ; font-family: Comic Sans MS; }
	  #rsave{
	    font-size: 26pt; font-weight: bold;
	    background:lightgreen;   height:130px;
	  }
	</style>
</head>
<body>
 <%
   //guestReply_delete단독실행하면 에러발생
 	try{
 		 int Gdata =  Integer.parseInt(request.getParameter("idx"));
 		 msg ="delete from guestreply where num = " + Gdata ;
  		 ST  = CN.createStatement();
 		 ST.executeUpdate(msg);
		 %>
		  <script type="text/javascript">
 			alert("삭제 되었습니다");
 			location.href="login.jsp";
 		  </script>
		<%
		
 	}catch( Exception e ){
 		System.out.print("실행 오류 : " + e);
 	}
 %>
</body>
</html>