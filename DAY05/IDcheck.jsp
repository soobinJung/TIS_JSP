<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IDcheck</title>
<script type="text/javascript">
     function first(){
       open_form.ID.focus();
     }
</script>
<style>
	.all{
		margin:30px;
		
	}
	.input{
	    width:150px; height: 30px;
	}
	.button{
    background-color: rgb(0, 206, 154);
    color: white;
    width:80px; height: 30px;
    border:0px;
    border-radius: 5px;
    font-size: 12pt;
}
</style>
</head>
<body onLoad="first();">
<div class="all">
	<form name="open_form" method="get" action="IDcheckSave.jsp">
		<% String ID = request.getParameter("ID"); %> 
	  	ID:	<input type="text"   class="input" name="ID" value="<%=ID%>">
	        <input type="submit" class="button" value="중복확인">
	</form>
</div>
</body>
</html>