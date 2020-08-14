<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="dongari.dongariSQL"%>
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
   <title>Insert title here</title>
    <link rel="stylesheet" href="../css/profile.css">
</head>
<body>
       <jsp:include page="../html/dong_header.html"></jsp:include>
       
       <div class="box"> 마이페이지 <hr></div>
      <div class="left">
         <br>
         <div class="categori">
               <hr>회원<hr>
         </div>
         
         <div class="categori">
            <a href="infoedit.jsp">회원정보 수정</a> 
         </div>
         
         <div class="categori">
            <a href="infoedit.jsp">회원탈퇴</a> 
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
            <a href="payout.jsp">리더 정보 </a> 
         </div>
         
          <div class="categori">
            <a href="payout.jsp">받은 후기 </a> 
         </div>
         
         <div class="categori">
            <a href="payout.jsp">대금 내역 </a> 
         </div>
      	</div>      
   <%
   try{
   int j=0;
   String CCODE = (String)session.getAttribute("C_CODE");
   System.out.println("[profile.jsp] 넘어온 CCODE : " + CCODE);
   list = SQL.cSelect(CCODE); 
   
   if(CCODE==null){
  	 %>
  	 	<script type="text/javascript">
  	 			alert("로그인 하세요.");
  	 			location.href='login.jsp';
  	 	</script>
  	 
  	 
  	 <%
   }
   
   for(int i=0; i<list.size(); i++){
      
      dongariDTO bean = list.get(i);
      
      NAME   = bean.getNAME();
      EMAIL  = bean.getEMAIL();
      BIRTH  = bean.getBIRTH();
      PHONE  = bean.getPHONE();
      
      
      System.out.println("< profile.jsp >");
      System.out.println("NAME =>" +NAME);
      System.out.println("EMAIL=>"+EMAIL);
      System.out.println("BIRTH=>"+BIRTH);
      System.out.println("PHONE=>"+PHONE);
      
%>
      <div class="right1">
         <div class="content_photo">
         </div>
      	</div>
      <br>
      
      
      <div class="right2">
         <div class="name">이름 </div><div><input type="text" value="<%=NAME %>" class="content_name"readonly> <br> </div>
         <div class="email">이메일  </div><div><input type="text" value="<%=EMAIL %>" class="content_email"readonly> <br> </div>
         <div class="birth">생년월일  </div><div><input type="text" value="<%=BIRTH %>" class="content_birth"readonly> <br> </div>
         <div class="phone">전화번호  </div><div><input type="text" value="<%=PHONE %>" class="content_phone"readonly> <br> </div>
      </div>
      
      <% } 
   } catch(Exception ex) {System.out.println("[leader2] 에러 : " + ex);}

%>
      
</body>
</html>