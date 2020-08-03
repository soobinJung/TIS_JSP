<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestReply_edit.jsp] </title>
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
   //guestReply_edit단독실행하면 에러발생
    int Gdata =  Integer.parseInt(request.getParameter("idx"));
  %>
  <form name="reple_edit" action="guestReply_editSave.jsp">
  	<table>
  	  <tr>
	    <td>
	    	SABUN :<input type="text" name="sabun" value="<%=Gdata %>" size=30 ><br>
	  	</td>
	  </tr>
	  <tr>
	  	<td>
	  		WRITER : <input type="text" name="writer" size=30 ><br>
	  	</td>
	  </tr>
	  <tr>
	  	<td>
	  		CONTENT : <input type="text" name="content" size=30 ><br>
	  	</td>
	  	<td rowspan="3"  align="center">
 	  		<input type="submit" id="editsave" value="수정 저장">
 	  	</td>
 	  </tr>
  	</table>
  </form>

</body>
</html>
