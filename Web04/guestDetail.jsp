<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestDetail.jsp]  </title>
  <style type="text/css">
	*{ font-size: 24pt; }
	a{ font-size: 24pt; color:green; text-decoration:none; }
	a:hover{ font-size:26pt; color:blue; text-decoration:underline; }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
  <%
    //guestDetail.jsp문서 단독실행하면 에러발생합니다 단독실행금지
    Gdata = request.getParameter("idx");
    System.out.println("상세대상 넘어온 Gsabun = " + Gdata);
    msg="select * from guest where sabun =  " + Gdata ;
    ST=CN.createStatement();
    RS=ST.executeQuery(msg); //조회한 한건 결과를 RS기억
    if(RS.next()==true) {
      Gsabun = RS.getInt("sabun");
      Gname = RS.getString("name");
      Gtitle = RS.getString("title");
      Gwdate = RS.getDate("wdate");
      Gpay = RS.getInt("pay");
      Gemail = RS.getString("email");
    }
  %>
 <p>
 <table width="900" border="1" cellspacing="0" cellpadding="10">
   <tr align="center">
    <td colspan="2">
    	<font color=blue>[[ <%=Gname %>]]님의 상세페이지</font> 
    </td>
   </tr>

   <tr>
   	 <td rowspan="5" align="center"> <img src="images/bbb.gif" width="300" >  </td>
   	 <td width="400"> 사번: <%= Gsabun %> </td> 
   </tr>  
   
   <tr>
   	 <td> 제목: <%= Gtitle %></td> 
   </tr>
   <tr>
   	 <td> 날짜: <%= Gwdate %> </td> 
   </tr>    
   <tr>
   	 <td> 급여: <%= Gpay %> </td> 
   </tr>  
   <tr>
   	 <td> 메일: <%= Gemail %> </td> 
   </tr>  
   
   <tr align="center">
    <td colspan="2">
        <a href="guestEdit.jsp?idx=<%=Gsabun%>">[수정]</a>
    	<a href="guestWrite.jsp">[등록]</a>
    	<a href="guestDelete.jsp?idx=<%=Gsabun%>">[삭제]</a>
 		<a href="index.jsp">[index]</a>
 		<a href="guestList.jsp">[전체출력]</a>
    </td>
   </tr>
 </table>
 	
 <p>
 <!-- 댓글문서포함 guestReply.jsp -->

 
 <p><br>
</body>
</html>




