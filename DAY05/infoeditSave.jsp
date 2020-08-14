<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="SQL" class="dongari.dongariSQL"/>
<jsp:useBean id="DTO" class="dongari.dongariDTO"/>
<%@ include file="ssi.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>infoeditSave.jsp</title>
</head>
<body>
   
<%
   try{
      
      NAME  = request.getParameter("NAME");
      EMAIL = request.getParameter("EMAIL");
      BIRTH = request.getParameter("BIRTH");
      PHONE = request.getParameter("PHONE");
      
      PHONE1 = PHONE.substring(1, 3); 
      PHONE1 = PHONE.substring(3, 7); 
      PHONE3 = PHONE.substring(7, 11); 
        
        DTO.setNAME(NAME);
        DTO.setEMAIL(EMAIL);
        DTO.setBIRTH(BIRTH);
        DTO.setPHONE1(PHONE1);
        DTO.setPHONE1(PHONE2);
        DTO.setPHONE1(PHONE3);
        
       String CCODE = (String)session.getAttribute("C_CODE");
      SQL.infoedit( NAME, EMAIL, BIRTH, PHONE, CCODE );
      
       response.sendRedirect("infoedit.jsp");
   
   }catch( Exception e ){
      
      e.printStackTrace();
   }
%>
   
</body>
</html>