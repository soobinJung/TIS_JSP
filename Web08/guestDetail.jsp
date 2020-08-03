<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ page import="net.tis.sql.GuestDTO" %>
<%@ page import="net.tis.sql.GuestSQL" %>

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
<%! GuestSQL gs = new GuestSQL();  %>

  <%
    //guestDetail.jsp문서 단독실행하면 에러발생합니다 단독실행금지
    String Gdata = request.getParameter("idx");
    //System.out.println("guestDetail.jsp문서 넘어온 idx=" + Gdata);
    GuestDTO bean = gs.dbDetail(Gdata);
    int Gsabun = bean.getSabun();
  %>
 <p>
 <table width="900" border="1" cellspacing="0" cellpadding="5">
   <tr align="center">
    <td colspan="2">
    	<font color=blue>[ <%=bean.getName() %>]님의 상세페이지</font> 
    </td>
   </tr>

   <tr>
   	 <td rowspan="5" align="center"> <img src="images/bbb.gif" width="200" height="200" >  </td>
   	 <td width="400"> 사번: <%= Gsabun %> </td> 
   </tr>  
   
   <tr>	<td> 제목: <%= bean.getTitle() %></td>   </tr>
   <tr> <td> 날짜: <%= bean.getWdate() %> </td>  </tr>    
   <tr> <td> 급여: <%= bean.getPay() %> </td>    </tr>  
   <tr> <td> 메일: <%= bean.getEmail() %> </td>  </tr>  
   
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
 	<!-- guestDetail.jsp문서 하단에서 댓글문서포함 guestReply.jsp -->
	<jsp:include page="guestReply.jsp">
 		<jsp:param  name="Gidx" value="<%=Gsabun%>" />
 	</jsp:include>
 
 <p><br>
</body>
</html>
