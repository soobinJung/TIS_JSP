<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestDelete.jsp]  </title>
  <style type="text/css">
	*{ font-size: 24pt; }
	a{ font-size: 24pt; color:green; text-decoration:none; }
	a:hover{ font-size:26pt; color:blue; text-decoration:underline; }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>

  <p style="margin-top:50px;">
  <div align="center" > 
   <img src="images/tulips.png"> <br>
  </div> 

  <%
   String temp =(String)session.getAttribute("naver");
   if (temp==null || temp==""){
  %>
  		<script type="text/javascript">
  			alert("삭제권한이 없습니다 로그인후 이용하세요");
  			location.href="login.jsp";
  		</script>
  <%
   }else{
    //guestDelete.jsp문서 단독실행하면 에러발생합니다 단독실행금지
    int data = Integer.parseInt(request.getParameter("idx"));
    System.out.println("삭제대상 넘어온 Gsabun = " + data);
    msg="delete  from guest where sabun =  " + data ;
    ST=CN.createStatement();
    ST.executeUpdate(msg);
    System.out.println(data + " 데이터 삭제처리 성공했습니다");
    
    //index.jsp실행=>guestList.jsp=>제목클릭=>한건상세 guestDetail.jsp문서에서 [삭제]
  %>
    	<script type="text/javascript">
  			alert("데이터삭제가 성공했습니다. 복귀작업은 안됩니다");
  			location.href="guestList.jsp";
  		</script>
 <% } %>
 <p>
 
 <p><br>
</body>
</html>




