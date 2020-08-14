<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dongari.dongariDTO"%>
<%@page import="dongari.dongariSQL"%>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminDetail.jsp</title>
<link rel="stylesheet" href="../css/adminDetail.css">
</head>
<body>
<jsp:include page="../html/dong_header.html"></jsp:include>
   <% 
     String CCODE = request.getParameter("idx");
     list = SQL.cSelectALL(CCODE);

    
     for(int i=0; i<list.size(); i++){
     dongariDTO bean = list.get(i);
     
     NAME    =  bean.getNAME();
     ID      =  bean.getID();
     EMAIL   =  bean.getEMAIL();
     PHONE   =  bean.getPHONE();
     GENDER  =  bean.getGENDER();
     BIRTH   =  bean.getBIRTH();
     JUSO    =  bean.getJUSO();
     PICTURE =  bean.getPICTURE();
     
     }
   %>
   
   <div class="title">DETAIL</div>
   
   <table border="1" cellspacing="0" align="center">
      <tr >
         <td colspan="2" align="center">[ <%=CCODE %> 회원 ]</td>
      </tr>
      
      <tr>
         <th>CCODE</th>
         <td><%=CCODE %></td>
      </tr>
      <tr>
         <th>NAME</th>
         <td><%=NAME %></td>
         
      </tr>
      <tr>
         <th>ID</th>
         <td><%=ID %></td>
         
      </tr>
      <tr>
         <th>EMAIL</th>
         <td><%=EMAIL %></td>
         
      </tr>
      <tr>
         <th>PHONE</th>
         <td><%=PHONE %></td>
         
      </tr>
      <tr>
         <th>GENDER</th>
         <td><%=GENDER %></td>
         
      </tr>
      <tr>
         <th>BIRTH</th>
         <td><%=BIRTH %></td>
      </tr>
      <tr>
         <th>JUSO</th>
         <td><%=JUSO %></td>
      </tr>
      <tr>
         <th>PICTURE</th>
         <td><%=PICTURE %></td>
      </tr>
      

      <tr>
   
      </tr>

   </table>
</body>