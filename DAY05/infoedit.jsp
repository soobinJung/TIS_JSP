<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dongari.dongariDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dongari.dongariSQL"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>infoedit.jsp</title>
<link rel="stylesheet" href="../css/profile.css">
</head>
<body>
   <jsp:include page="../html/dong_header.html"></jsp:include>
   
   
   <div class="box"> 회원정보 수정 <hr></div>
            <div class="left">
         <br>
         <div class="categori">
               <hr>회원<hr>
         </div>
         
         <div class="categori">
            <a href="infoedit.jsp">회원정보 수정</a> 
         </div>
         <br>
         <div class="categori">
               <hr>수강생<hr>
         </div>
         <div class="categori">
            <a href="infoedit.jsp">내 동아리목록 </a> 
            
         </div>
         <div class="categori">
            <a href="infoedit.jsp">수강 완료내역</a> 
             
         </div>
         <div class="categori">
            <a href="infoedit.jsp">수강 예정내역 </a> 
            
         </div>
         <div class="categori">
            <a href="infoedit.jsp">수강 취소내역 </a> 
            
         </div>
         <br>
         <div class="categori">
               <hr>리더<hr>
         </div>
         
         <div class="categori">
            <a href="infoedit.jsp">대금 내역 </a> 
         </div>
      </div>
      
      <div class="right1">
         <div class="content_photo"></div>
      </div>
      <br>
      <form action="infoeditSave.jsp">
         <div class="right2">
         <%
          dongariSQL SQL= new dongariSQL();
            
         try{
            int j=0;
            String ccode = "1131234";
   
            ArrayList<dongariDTO> list = SQL.cSelect( ccode ); 
            
            for(int i=0; i<list.size(); i++){
               
               dongariDTO bean = list.get(i);
               
               NAME   = bean.getNAME();
               EMAIL  = bean.getEMAIL();
               BIRTH  = bean.getBIRTH();
               PHONE  = bean.getPHONE();
          
         %>
            <div class="name">이름          </div><div><input type="text" value="<%=NAME%>"  class="content_name"  name="NAME" > <br> </div>
            <div class="email">이메일     </div><div><input type="text" value="<%=EMAIL%>" class="content_email" name="EMAIL"> <br> </div>
            <div class="birth">생년월일  </div><div><input type="text" value="<%=BIRTH%>" class="content_birth" name="BIRTH"> <br> </div>
            <div class="phone">전화번호  </div><div><input type="text" value="<%=PHONE%>" class="content_phone" name="PHONE"> <br> </div>
         </div>
            <% } 
          } catch(Exception ex) {System.out.println("[leader2] 에러 : " + ex);} %>   
         
         <div class="right3">
            <input type="submit" value="수정" class="button">
         </div>
      </form>
   

   
</body>
</html>