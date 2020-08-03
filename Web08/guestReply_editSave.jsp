<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_editSave.jsp] </title>
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
 try{
	 	int n    = Integer.parseInt(request.getParameter("sabun"));
	 	String w = request.getParameter("writer");
	 	String c = request.getParameter("content");
	 	
 	 	msg = "UPDATE GUESTREPLY SET CONTENT = '" + c + "', WRITER = '" + w + "' WHERE NUM = " + n;
		
		ST  = CN.createStatement();
 		ST.executeUpdate(msg);
		
 }catch( Exception e ){
	 System.out.print("수정 에러 : " + e );
 }
 %>
 		
	<script type="text/javascript">
		alert("수정 되었습니다");
		location.href="login.jsp";
	</script>
		
</body>
</html>
