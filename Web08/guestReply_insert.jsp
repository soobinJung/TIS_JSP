<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_insert.jsp] </title>
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
   //guestReply_insert단독실행하면 에러발생
   try{
	   String s = request.getParameter("sabun");
	   String w = request.getParameter("writer");
	   String c = request.getParameter("content");
	   
	   msg = "insert into guestreply values(guestreply_seq.nextval, '"+ c +"', '"+ w +"', '"+ s +"')";
	   ST = CN.createStatement();
	   ST.executeUpdate(msg);
	   
		 %>
		  <script type="text/javascript">
  			alert("정보 저장 되었습니다");
  			location.href="login.jsp";
  		</script>
		<%
   }catch( Exception e ){
	   
   }
 %>
</body>
</html>






