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
   
	*{ font-size: 20pt; }
	a{ font-size: 18pt; color:blue; text-decoration:none; }
	a:hover{ font-size:20pt; color:green;  text-decoration:none;  }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
 

 <%
 ///////////////////////////////////////////////////
 //조건상관없이 총레코드데이터갯수
 msg="select count(*) as cnt from guest " ; 
 ST=CN.createStatement();
 RS=ST.executeQuery(msg);
 RS.next(); 
 GGtotal = RS.getInt("cnt"); //Gtotal = 316기억 
 ///////////////////////////////////////////////////
 
 //2020-07-28-목요일  페이징,검색,댓글 
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
 Date dt = new Date( );
 
  String pnum; //<a href="guestList.jsp?pageNum=14"> [14] </a>
  int pageNUM, pagecount;  
  int start, end;
  int startpage, endpage ;
  int tmp; 
 
  String sqry=" ";
  String skey="", sval="검색" ;
  String returnpage="";
  
  skey = request.getParameter("keyfield");
  sval = request.getParameter("keyword");
  
  System.out.println("넘어온 필드=" + skey + " 키워드=" + sval);
  
  
  if(skey==null || skey=="" || sval==null || sval==""){
	   
  	skey="";
  	sval="" ; 
  	sqry = " where name like '%%' "; //검색필드,키워드 없을때 모두출력
  	
  }else{
  	sqry = " where "+ skey +" like '%" + sval +"%'";
  }
 
 returnpage = "&keyfield=" + skey + "&keyword=" + sval;
 
 msg="select count(*) as cnt from guest "  + sqry;
 ST=CN.createStatement();
 RS=ST.executeQuery(msg);
 RS.next(); 
 Gtotal = RS.getInt("cnt"); 
   
  pnum = request.getParameter("pageNum"); 
  if( pnum==null || pnum==""){ pnum="1"; }
  pageNUM = Integer.parseInt(pnum);     
 
  
  start = (pageNUM-1)*10+1 ; 
  end = (pageNUM*10) ; 
  
  tmp = (pageNUM-1)%10 ;  
  startpage = pageNUM-tmp ; 
  endpage = startpage+9 ; 

  if( Gtotal%10==0 ) { pagecount = Gtotal/10; }
  
  else { pagecount = (Gtotal/10)+1; }
  
  if( endpage > pagecount ) { 
	  endpage = pagecount; 
   }
     
      
  String a="select * from ( ";
  String b=" select rownum rn, sabun, name, title, wdate, pay, hit, email from (  ";
  String y=" select * from  guest  " + sqry  + " order by sabun ) " ;
  String c=") where rn  between  "   + start + "  and  " + end ;
 
  msg = a + b + y + c ;
  ST=CN.createStatement();
  RS=ST.executeQuery(msg); 
 %>
 
 <table width="1200" border="1" cellspacing="0">
   <tr align="right">
   	 <td colspan="7">
   	   <a href="index.jsp">[index]</a> 
   	   <a href="login.jsp">[로그인]</a> &nbsp;
   	     총레코드갯수:<%=Gtotal %> /<%=GGtotal %> &nbsp;&nbsp;
   	  </td>
   </tr>
   
   <tr bgcolor="yellow">
	   <td>행번호</td> 
	   <td>사번   </td> 
	   <td>이름   </td> 
	   <td>제목   </td>   
	   <td>날짜   </td> 
	   <td>조회수</td> 
	   <td>삭제   </td>
   </tr>

<%
  //guestList.jsp문서는 단독실행가능 
  while(RS.next()==true) {
    Gsabun = RS.getInt("sabun");
    Gtitle = RS.getString("title");
%>   
   <tr  onmouseover="style.backgroundColor='rgb(0,200,200)'" 
        onmouseout="style.backgroundColor=''">
     <td> <%= RS.getInt("rn") %>      </td> 
     <td> <%= Gsabun %>               </td> 
     <td> <%= RS.getString("name") %> </td> 
     <td> <a href="guestDetail.jsp?idx=<%=Gsabun%>"> <%= Gtitle %> </a> </td> 
     <td> <%= RS.getDate("wdate") %>  </td> 
     <td> <%= RS.getInt("hit") %>     </td>
     <td align="center">
      <input type="button" onclick="location.href='guestDelete.jsp?idx=<%=Gsabun%>' " value="삭제">
     </td>    
   </tr>
<% } %>  

 <tr>
   <td colspan="7" align="center">
    <%
    //이전
     if ( startpage > 10 )  { //[1] > 10 만족하지 않아서 [이전][1] ~  
   	  out.println("<a href=guestList.jsp?pageNum="+(startpage-10)+returnpage+">[이전]</a>");	 
   	 }
    
      for(int i=startpage;i<=endpage; i++){
      	if(i==pageNUM){
      		out.println("<font style='font-size:22pt; color:red'>["+i+"]</font> ");	
      	}else{
   	     out.println("<a href=guestList.jsp?pageNum="+i+returnpage+">["+i+"]</a>");
      	}
   	  }//for end
    
      
   	 //다음
   	 if ( endpage < pagecount )  { //[10] < 32크면
   	  out.println("<a href=guestList.jsp?pageNum="+(startpage+10)+returnpage+">[다음]</a>");	 
   	 }
    %> 
   </td>
 </tr> 
  
 <tr>
   <td colspan="7" align="center">  
     <form action="guestList.jsp">
           검색:
       <select name="keyfield">
         <option value=""     >-----검색키워드-----</option>
     	 <option value="name" >이름검색</option> 
     	 <option value="title">제목검색</option> 
     	 <option value=""     >내용검색</option> 
     	</select>
     	<input type="text" name="keyword" size="10" placeholder=<%=sval %>>
     	<input type="submit" value=" 검 색 "> 
     </form>
   </td>
 </tr> 
 
 </table>		
</body>
</html>












