<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestEditSave.jsp] </title>
  <style type="text/css">
	*{ font-size: 26pt; }
	a{ font-size: 26pt; color:green; text-decoration:none; }
	a:hover{ font-size:30pt; color:blue; text-decoration:underline; }
  </style>
	
	<script type="text/javascript">
	</script>
</head>
<body>
  <p>
  
 <%
   //guestEditSave.jsp 단독실행하면에러발생 
   Gsabun = Integer.parseInt(request.getParameter("sabun"));
   Gname = request.getParameter("name");
   Gtitle = request.getParameter("title") ;
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gemail = request.getParameter("email");
    
    System.out.println("수정넘어온사번=" + Gsabun );
    System.out.println("수정넘어온이름=" + Gname );
    System.out.println("수정넘어온제목=" + Gtitle );  
    System.out.println("수정넘어온급여=" + Gpay );  
    System.out.println("수정넘어온메일=" + Gemail );  
    
try{
  	//guestEditSave.jsp문서단독실행금지 에러발생 
   msg="~ title=?, wdate=sysdate, pay=?, email=? where sabun = ?" ;
   msg="update guest set name=?, title=?, wdate=sysdate, pay=?, email=? where sabun = ?" ;
   PST = CN.prepareStatement(msg);
 	PST.setString(1, Gname);
 	PST.setString(2, Gtitle);
 	PST.setInt(3, Gpay);
 	PST.setString(4, Gemail);
 	PST.setInt(5, Gsabun);
  PST.executeUpdate(); //진짜 수정처리
  System.out.println("PreparedStatement명령어 데이터로 수정성공했습니다.") ;
}catch(Exception ex){ System.out.println("에러 "+ex); }
 response.sendRedirect("guestList.jsp");
%>	


</body>
</html>










