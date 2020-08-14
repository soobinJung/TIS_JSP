<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
<jsp:useBean id="SQL" class="dongari.dongariSQL"/>
<jsp:useBean id="DTO" class="dongari.dongariDTO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN SAVE</title>
<script type="text/javascript"></script>
</head>
<body>
<%
try{
    ID   = request.getParameter("LOGIN_ID");
    PW   = request.getParameter("LOGIN_PW");
    
    msg = "SELECT COUNT(*) AS CNT FROM CUSTOMER WHERE ID = '" + ID +"'";
    RS = ST.executeQuery(msg);
    
    RS.next();
    int cnt =  RS.getInt("CNT");

    if( cnt > 0 ){
        msg="SELECT CCODE FROM CUSTOMER WHERE ID='"+ID+"'";
        RS = ST.executeQuery(msg);
        
        RS.next();
        String CCODE = RS.getString("CCODE");
        
        
        session.setAttribute("C_CODE", CCODE);
        
        %>
           <script  type="text/javascript">
              alert('환영합니다.');
              location.href="index.jsp";
          </script>
        <% 
    }else{
       
       
       System.out.print("조회 없름");
        %>
        <script type="text/javascript">
           alert('없는 아이디입니다. 회원가입하세요.');
           location.href="signup.jsp";
           return;
        </script>
     <%
    }

    } catch(Exception ex){}
  %>
</body>
</html>