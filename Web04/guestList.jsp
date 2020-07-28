<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat"%>      
<%@ page import="java.util.Date" %> 
<%@ include file="ssi.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [guestList.jsp]  </title>
  <style type="text/css">
    #pline{ margin-top: 35px; }
	*{ font-size: 30pt; }
	a{ font-size: 32pt; color:blue; text-decoration:none; }
	a:hover{ font-size:36pt; color:green;  text-decoration:none;  }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
 

 <%
 ///////////////////////////////////////////////////
 msg="select count(*) as cnt from guest " ;
 ST=CN.createStatement();
 RS=ST.executeQuery(msg);
 RS.next(); //if, while 없이 이동
 Gtotal = RS.getInt("cnt"); //Gtotal = 316기억 
 
  //2020-07-28-목요일  페이징,검색,댓글 
  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
  Date dt = new Date( );
  //제목옆에 60분=1시간전에 올라온 글에 대해서 new깃발이나 red색표시
  		
  String pnum; //<a href="guestList.jsp?pageNum=13"> [13] </a>
  int pageNUM, pagecount;
  int start, end;
  int startpage, endpage ;
  int tmp; 
 
  String sqry=" ";
  String skey="검색필드", sval="검색키워드" ;
  String returnpage="아직은 몰라요검색할때 사용";
 
  pnum = request.getParameter("pageNum");  //[13]클릭하면 문자로 13로 기억
  if( pnum==null || pnum==""){ pnum="1"; }
  pageNUM = Integer.parseInt(pnum);        //[13]클릭하면 숫자로 13로 기억
  System.out.println("클릭한 페이지 = " + pageNUM);
  
  start = (pageNUM-1)*10+1 ; //[13]클릭  시작행 121
  end = (pageNUM*10) ; //[13]클릭  끝행 130
  
  //[이전] [11]  ~[13]클릭~~ [20][다음]
  tmp = (pageNUM-1)%10 ; //13-1%10 결과은 2  
  startpage = pageNUM-tmp ; //11
  endpage = startpage+9 ; //20
  
  //내일은 총페이지갯수를 구해야 이전,다음 이동이 가능합니다
  
  ///////////////////////////////////////////////////////////////
  String a="select * from ( ";
  String b=" select rownum rn,sabun,name,title,wdate,pay,hit,email from guest  ";
  String c=") where rn  between  " + start + "  and  " + end ;
  System.out.println(c); 
  //원래내용주석처리하세요 msg = "select rownum,  g.* from guest g " ;
  msg = a+b+c ;
  ST=CN.createStatement();
  RS=ST.executeQuery(msg); //조회한전체결과를 RS기억 
 %>
 
 <p id="pline">
 <table width="1200" border="1" cellspacing="0">
   <tr align="right">
   	 <td colspan="7">총레코드갯수: <%=Gtotal %> &nbsp;&nbsp; </td>
   </tr>
   
   <tr bgcolor="yellow">
    <td>행번호</td> <td>사번</td> <td>이름</td> 
    <td>제목</td>   <td>날짜</td> <td>조회수</td> <td>삭제</td>
   </tr>

<%
  //guestList.jsp문서는 단독실행가능 
  while(RS.next()==true) {
    Gsabun = RS.getInt("sabun");
    Gtitle = RS.getString("title");
%>   
   <tr  onmouseover="style.backgroundColor='rgb(0,200,200)'" 
        onmouseout="style.backgroundColor=''">
     <td> <%= RS.getInt("rn") %> </td> 
     <td> <%= Gsabun %> </td> 
     <td> <%= RS.getString("name") %> </td> 
     <td> <a href="guestDetail.jsp?idx=<%=Gsabun%>"> <%= Gtitle %> </a> </td> 
     <td> <%= RS.getDate("wdate") %> </td> 
     <td> <%= RS.getInt("hit") %> </td>
     <td align="center">
      <input type="button" onclick="location.href='guestDelete.jsp?idx=<%=Gsabun%>' " value="삭제">
     </td>    
   </tr>
<% } %>  

 <tr>
   <td colspan="7" align="center">
    <%
   	 for(int i=1;i<11; i++){
   	  out.println("<a href=guestList.jsp?pageNum="+i+">["+i+"]</a>");	
   	 }
    %> 
   </td>
 </tr>
 
 </table>		
 <br>
 <a href="guestWrite.jsp">[등록]</a>
 <a href="index.jsp">[index]</a>
 <a href="login.jsp">[로그인]</a>
 <a href="guestList.jsp">[전체출력]</a>
 
 <p><br>
</body>
</html>




