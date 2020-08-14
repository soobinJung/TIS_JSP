<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dongari.dongariSQL"%>
<%@ include file="ssi.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/admin.css">
<title>ADMIN 관리자 페이지</title>
</head>
<body>
   <jsp:include page="../html/dong_header.html"></jsp:include>
      <div class="title_admin">ADMIN ONLY</div>
      
      
      
<table class="table" border="1" cellspacing="0">  
     <tr>
           <td class="subject" colspan="12"> CUSTOMER</td>
     </tr>

     <tr class="row">
           <th>CODE</th> <th>NAME</th> <th>ID</th> 
           <th>PW</th>   <th>EMAIL</th> <th>PHONE</th> 
           <th>GENDER</th> <th>BIRTH</th> <th>JUSO</th> 
           <th>PICTURE</th> <th>DELETE</th> 
     </tr>
<%
   try{
   msg="SELECT * FROM CUSTOMER";
   ST=CN.createStatement();
   RS=ST.executeQuery(msg);
   while(RS.next()==true){
      CCODE    = RS.getString("CCODE");   
      CNAME    = RS.getString("NAME");
      CID      = RS.getString("ID");
      CPASS    = RS.getString("PASS");
      CEMAIL    = RS.getString("EMAIL");
      CPHONE   = RS.getString("PHONE");
      CGENDER   = RS.getString("GENDER");
      CBIRTH   = RS.getString("BIRTH");
      CJUSO   = RS.getString("JUSO");
      CPIC   = RS.getString("PICTURE");
      
      if(CGENDER.equals("1")){
         String CGENDER="여";
      } else {
         String CGENDER="남";
      }
%>
     <tr>
           <td><a href="adminDetail.jsp?idx=<%=CCODE%>"><%= CCODE %></a></td>
           <td><%=CNAME %></td>
           <td><%=CID %></td>
           <td><%=CPASS %></td>
           <td><%=CEMAIL %></td>
           <td><%=CPHONE %></td>
           <td><%=CGENDER %></td>
           <td><%=CBIRTH %></td>
           <td><%=CJUSO %></td>
           <td><%=CPIC %></td>
           <td>
              <a href="delete.jsp?CCODE='<%=CCODE %>'">
                 <input type="button" value="DELETE">
              </a>
           </td>
     </tr>
<%    } 
   } catch(Exception ex){}
%>
   </table>
   
   <table class="leader" border="1" cellspacing="0">  
           <tr>
                 <td class="subject" colspan="10"> LEADER</td>
           </tr>
           <tr class="row">
                 <th>LCODE</th> <th>CCODE</th> <th>LNICK</th> <th>LINTRO</th> <th>BANK</th> <th>BANKNUM</th> <th>LLOCAL</th> 
           </tr>
<%
   try{
   msg="SELECT * FROM LEADER";
   ST=CN.createStatement();
   RS=ST.executeQuery(msg);
   while(RS.next()==true){
      LCODE    = RS.getString("LCODE");   
      CCODE    = RS.getString("CCODE");
      LNICK   = RS.getString("LNICK");
      LINTRO    = RS.getString("LINTRO");
      BANK    = RS.getString("BANK");
      BANKNUM   = RS.getString("BANKNUM");
      LLOCAL   = RS.getString("LLOCAL");

%>           
 <tr>
           <td><%=LCODE %></td>
           <td><%=CCODE %></td>
           <td><%=LNICK %></td>
           <td><%=LINTRO %></td>
           <td><%=BANK %></td>
           <td><%=BANKNUM %></td>
           <td><%=LLOCAL %></td>
     </tr>
<%    } 
   } catch(Exception ex){}
%>
           
           
           
   </table>
   
   
</body>
</html>