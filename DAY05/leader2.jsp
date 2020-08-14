<%@page import="check.local"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dongari.dongariSQL" %>
<%@ page import="dongari.dongariDTO" %>
<%@ include file="ssi.jsp" %>

<jsp:useBean id="SQL" class="dongari.dongariSQL"/>
<jsp:useBean id="DTO" class="dongari.dongariDTO"/>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
	<title>Leader</title>
	<link rel="stylesheet" href="../css/becomeleader.css">
</head>
<body>
<jsp:include page="../html/dong_header.html"></jsp:include>
<%	
	try{
		String CCODE = (String)session.getAttribute("C_CODE");
		ArrayList<dongariDTO> LIST = SQL.oneldSelect(CCODE); 
		int j=0;
		
		for(int i=0; i<LIST.size(); i++){
			
			dongariDTO bean = LIST.get(i);
			LNICK   = bean.getLNICK();
			LINTRO  = bean.getLINTRO();
			BANK    = bean.getBANK();
			BANKNUM = bean.getBANKNUM();
			LLOCAL  = bean.getLLOCAL();
			
			System.out.println("[LEADER2]넘어온 CCODE" + CCODE);
			
		    local check = new local();
		    String LLOCAL1 = check.Localcode(LLOCAL);
%>
			<div class="box">
				<div class="step">리더 등록 완료</div>
					<div class="content">
					You became a Leader. Welcome!<br><br>
					
					Nickname as a Leader.<br>
					<input type="text" class="input" value="<%=LNICK%>" readonly><br><br>
					
					Introduce your expertise.<br>
					<input type="text" class="input" value="<%=LINTRO%>" readonly><br><br>
					
					LOCAL<br>
					<input type="text" class="input" value="<%=LLOCAL1%>" readonly><br><br>
					
					Bank name<br>
					<input type="text" class="input" value="<%=BANK%>" readonly><br><br>
					
					Bank account number<br>
					<input type="text" class="input" value="<%=BANKNUM%>" readonly><br><br>
				<a href="leader3.jsp"><input type="submit" value="complete" class="button"></a>
<% } 
	} catch(Exception ex) {System.out.println("[leader2] 에러 : " + ex);}

%>
			</div>
		</div>
</body>
</html>