<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<style type="text/css">
		*{font-size:24pt;}
	</style>
</head>
<body>
	[begin_ end]
   <c:forEach var="cnt" begin="1" end="10" varStatus="status">
      ${cnt} <c:if test="${not status.last}">,</c:if>
   </c:forEach>
	
	
	'
   <br><br>
   <table border="1" style="width:100% text-align:center;">
      <tr>
         <th>index</th> <th>count</th> <th>cnt</th>
      </tr>
         <c:forEach var="cnt" begin="7" end="10" varStatus="status">
         <tr>
            <td>${status.index}</td>
            <td>${status.count}</td>
            <td>${cnt}</td>
         </tr>
      </c:forEach>
   </table>
   
   
	
	<br><br>
   <table border="1" style="width:100% text-align:center;">
      <tr>
         <th>index</th> <th>count</th> <th>cnt</th>
      </tr>
      <c:forEach var="cnt" begin="1" end="10" varStatus="status" step="2">
         <tr>
            <td>${status.index}</td>
            <td>${status.count}</td>
            <td>${cnt}</td>
         </tr>
      </c:forEach>
   </table>
	
</body>
</html>