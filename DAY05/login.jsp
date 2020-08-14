<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
<title>login</title>
<link rel="stylesheet" href="../css/login.css">
</head>
<body>
<jsp:include page="../html/dong_header.html"></jsp:include>



<form method="get" action="loginSave.jsp">
	<div class="all">
	   <div class="table" align="center"></div>
	    <table class="box">
	         <tr align="center">
		          <td colspan="2">
		              <font size="6pt">Login<br></font><hr>
		          </td>
	          </tr>
	         	
	         <tr align="center">
	             <td align="right">ID</td>
	             <td align="center">
	                 		<input type="text" size="30" class="input" 
	                 		id="LOGIN_ID" name="LOGIN_ID" value="HAHA">
	             </td>
	         </tr>
	         <tr align="center">
	             <td align="right">Password</td>
	             <td>		
	             			<input type="text" size="30" class="input" 
	             			id="LOGIN_PW" name="LOGIN_PW" value="1234">
	             </td>
	         </tr>
	    </table>
	   </div>
	<div class="buttonbox">
   		<input type="submit" class="button" value="Login">
   	</div>
 </form>
	
</body>
</html>