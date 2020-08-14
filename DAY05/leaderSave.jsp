<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="SQL" class="dongari.dongariSQL"/>
<jsp:useBean id="DTO" class="dongari.dongariDTO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LEADER SAVE</title>
</head>
<body>
<%
    try{
       
    String LNICK   = request.getParameter("LNICK");
    String LINTRO  = request.getParameter("LINTRO");
    String BANK    = request.getParameter("BANK");
    String BANKNUM = request.getParameter("BANKNUM");
    String LLOCAL  = request.getParameter("LLOCAL");
    
     DTO.setLNICK(LNICK);
     DTO.setLINTRO(LINTRO);
     DTO.setBANK(BANK);
     DTO.setBANKNUM(BANKNUM);
     DTO.setLLOCAL(LLOCAL);
     String CCODE = (String)session.getAttribute("C_CODE");

     SQL.ldInsert(LNICK, LINTRO,  BANK, BANKNUM, LLOCAL, CCODE);
     
     response.sendRedirect("leader2.jsp");
    } catch(Exception ex){}
  %>
  
</body>
</html>