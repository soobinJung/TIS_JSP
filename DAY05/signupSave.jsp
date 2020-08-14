<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<jsp:useBean id="SQL" class="dongari.dongariSQL"/>
<jsp:useBean id="DTO" class="dongari.dongariDTO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SIGNUP SAVE</title>
</head>
<body>
<%
	 try{
	 NAME   = request.getParameter("NAME");
	 ID  = request.getParameter("ID");
	 PW    = request.getParameter("PW");
	 EMAIL = request.getParameter("EMAIL");
	 PHONE1 = request.getParameter("PHONE1");
	 PHONE2 = request.getParameter("PHONE2");
	 PHONE3 = request.getParameter("PHONE3");
	 GENDER = request.getParameter("gendervalue"); //1이면 여자 0이면 남자
	 BIRTH = request.getParameter("BIRTH");
	 JUSO = request.getParameter("JUSO");
	 PICTURE = request.getParameter("PICTURE");
	 
	 
     DTO.setNAME(NAME);
     DTO.setID(ID);
     DTO.setPW(PW);
     DTO.setEMAIL(EMAIL);
     DTO.setPHONE1(PHONE1);
     DTO.setPHONE2(PHONE2);
     DTO.setPHONE3(PHONE3);
     DTO.setGENDER(GENDER);
     DTO.setBIRTH(BIRTH);
     DTO.setJUSO(JUSO);
     DTO.setPICTURE(PICTURE);
     
     System.out.println("[signupSave] 넘어온 이름 : " + NAME);
     System.out.println("[signupSave] 넘어온 주소 : " + JUSO);
     
     
     SQL.cInsert(NAME, ID, PW, EMAIL, PHONE1, PHONE2, PHONE3, GENDER, BIRTH, JUSO, PICTURE);
     response.sendRedirect("index.jsp");
	 } catch(Exception ex){}
  %>
  
</body>
</html>