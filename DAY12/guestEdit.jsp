<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core"   %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestEdit.jsp]  </title>
  <style type="text/css">
	*{ font-size: 24pt; }
	a{ font-size: 24pt; color:green; text-decoration:none; }
	a:hover{ font-size:26pt; color:blue; text-decoration:underline; }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
 
 EL태그로 데이터접근 <br>
 <form  action="gedit.do">
    수정사번:<input type="text" name="sabun"  value="${dto.sabun}" readonly > <br>
    수정이름:<input type="text" name="name"   value="${dto.name}" > <br>
    수정제목:<input type="text" name="title"  value="${dto.title}" > <br>
    수정급여:<input type="text" name="pay"    value="${dto.pay}" > <br>
    수정메일:<input type="text" name="email"  value="${dto.email}" > <br>
      <input type="submit" value="MVC2수정하기">
      <input type="reset" value="수정취소">
 </form>
	
 <br>
 <a href="guestWrite.jsp">[등록]</a>
 <a href="index.jsp">[index]</a>
 <a href="glist.do">[전체출력]</a>
</body>
</html>




