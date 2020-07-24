<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <style type="text/css">
    #pline{ margin-top: 18px; }
	*{ font-size: 18pt; }
	a{ font-size: 18pt; color:green; text-decoration:none; }
	a:hover{ font-size:25pt; color:blue; text-decoration:underline; }
	
	table{
		width="1000";
		border="1";
		cellspacing="0";
		align="right";
	}
	td{
		width="800";
	}
  </style>
</head>
<body>
	<h1> [&nbsp;&nbsp;&nbsp; I N F O R M A T I O N &nbsp;&nbsp;&nbsp;]</h1>
	<TABLE>
	
		<tr bgcolor="green" >
			<td>NAME </td>
			<td>HOBBY</td>
			<td>AGE  </td>
			<td>JOB  </td>
		</tr>
	<%
		
		msg = "SELECT ROWNUM, G.* FROM INFORMATION G";
		ST = CN.createStatement();	
		RS = ST.executeQuery(msg);
		
		while( RS.next() == true ){
			String Gname  = RS.getString("NAME" );
			String Ghobby = RS.getString("HOBBY");
			String Gage   = RS.getString("AGE"  );
			String Gjob   = RS.getString("JOB"  );
			
			%>
		<tr>
			<td><%=Gname %>  </td>
			<td><%=Ghobby%>  </td>
			<td><%=Gage  %>  </td>
			<td><%=Gjob  %>  </td>
		</tr>
		
			<% 
		}
	%>
	</TABLE>
</body>
</html>