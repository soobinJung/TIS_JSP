<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	 <%if(request.getParameter("id")=="pingsung"){%><br>
	 
	 	==      : <%=request.getParameter("id")=="PINKSUNG"%><br>
	 	equals(): <%=request.getParameter("id").equals("PINKSUNG")%><br>
	 	<%}else{
	 		out.print("id 를 전달해 주세여");	
	 	}
	 	%>
	 	
	 
</body>
</html>