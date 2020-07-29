<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         
<%@ include file="ssi.jsp" %>

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
  <%
    //guestEdit.jsp문서 단독실행하면 에러발생합니다 단독실행금지
    Gdata = request.getParameter("idx");
    System.out.println("한건편집대상 넘어온 Gsabun = " + Gdata);
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
 
 <form  action="guestEditSave.jsp">
    수정사번:<input type="text" name="sabun"  value="<%= Gsabun %>" readonly > <br>
    수정이름:<input type="text" name="name"   value="<%= Gname %>" > <br>
    수정제목:<input type="text" name="title"  value="<%= Gtitle %>" > <br>
    수정급여:<input type="text" name="pay"    value="<%= Gpay %>" > <br>
    수정메일:<input type="text" name="email"  value="<%= Gemail %>" > <br>
      <input type="submit" value="수정하기">
      <input type="reset" value="수정취소">
 </form>
	
 <br>
 <a href="guestWrite.jsp">[등록]</a>
 <a href="index.jsp">[index]</a>
 <a href="guestList.jsp">[전체출력]</a>
</body>
</html>




