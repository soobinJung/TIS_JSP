<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript">
		
	</script>
</head>
<body>
	
	<%
	String Gname  = request.getParameter("name" );
	String Ghobby = request.getParameter("hobby");
	String Gage   = request.getParameter("age"  );
	String Gjob   = request.getParameter("job"  );	
	%>
	
	 이름 : <%=Gname  %> <br>
	 취미 : <%=Ghobby %> <br>
	 나이 : <%=Gage   %> <br>
	 직업  : <%=Gjob   %> <br>
	 
	<%
	
	
		msg = "insert into information values( ?, ?, ?, ? )";
		PST = CN.prepareStatement(msg);
	    
			PST.setString(1, Gname );
			PST.setString(2, Ghobby);
			PST.setString(3, Gage  );
			PST.setString(4, Gjob  );
			
		PST.executeUpdate();
		
		System.out.println("success");
	%>
	
</body>
</html>