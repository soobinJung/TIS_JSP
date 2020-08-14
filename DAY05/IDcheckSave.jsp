<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IDcheck</title>
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
<body>
<div class="all">
	<%
	try{
		ID = request.getParameter("ID");
		System.out.println("넘어온 ID : " + ID);
		msg="SELECT COUNT(*) AS CNT FROM CUSTOMER WHERE ID='" + ID + "'";
		RS=ST.executeQuery(msg);
		if(RS.next()){
			if(RS.getInt("CNT")>0){
				System.out.println("cnt가 1일때");
				%>
				<script type="text/javascript">
					alert("<%=ID%>는 이미 사용중입니다. 다른 아이디를 이용하세요.");
					location.href='IDcheck.jsp?ID='+'';
				</script>
				<% } else { %>
				<script type="text/javascript">
					alert("<%=ID%>는 사용가능합니다.");
					opener.signup.ID.value=<%=ID%>
					location.href="IDcheck.jsp?ID='<%=ID%>'";
					close();
				</script>
				<%
			}
		}
	} catch(Exception ex){System.out.println("에러 사유 : " + ex);}
	%>
</div>
</body>
</html>