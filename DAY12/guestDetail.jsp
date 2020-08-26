<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"   %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

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
 <p>
 <table width="900" border="1" cellspacing="0" cellpadding="5">
   <tr align="center">
    <td colspan="2">
    	<font color=blue>[ ${dto.name}]님의 상세페이지</font> 
    </td>
   </tr>

   <tr>
   	 <td rowspan="5" align="center"> <img src="images/bbb.gif" width="200" height="200" >  </td>
   	 <td width="400"> 사번: ${dto.sabun} </td> 
   </tr>  
   
   <tr>	<td> 제목: ${dto.title} </td>   </tr>
   <tr> <td> 날짜: ${dto.wdate} </td>  </tr>    
   <tr> <td> 급여: ${dto.pay}  </td>    </tr>  
   <tr> <td> 메일: ${dto.email} </td>  </tr>  
   
   <tr align="center">
    <td colspan="2">
        <a href="geditpre.do?idx=${dto.sabun}">[수정]</a>
    	<a href="guestWrite.jsp">[등록]</a>
    	<a href="gdelete.do?idx=${dto.sabun}">[삭제]</a>
 		<a href="index.jsp">[index]</a>
 		<a href="glist.do">[전체출력]</a>
    </td>
   </tr>
 </table>
 	
 <p>
 	<!-- guestDetail.jsp문서 하단에서 댓글문서포함 guestReply.jsp -->
	<jsp:include page="guestReply.jsp">
 		<jsp:param  name="Gidx" value="${dto.sabun}" />
 	</jsp:include>
 
 <p><br>
</body>
</html>














