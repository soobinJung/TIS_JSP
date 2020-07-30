
<%@page import="net.tis.sql.GuestSQL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>         

<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.CallableStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>  </title>
  <style type="text/css">
	*{ font-size: 26pt; }
	a{ font-size: 26pt; color:green; text-decoration:none; }
	a:hover{ font-size:30pt; color:blue; text-decoration:underline; }
  </style>
	
  <script type="text/javascript">
  </script>
</head>
<body>
  <%!
    GuestSQL sql = new GuestSQL();
    //ssi.jsp문서 
    Connection CN ;
    Statement ST ;
    PreparedStatement PST;
    CallableStatement CST;
    ResultSet RS ;
    
    int Gsabun,Gpay, Ghit ;
    int GGtotal; //전체레코드갯수
    int Gtotal ; //조회레코드갯수
    int GStotal=0 ; //Gtotal대신 GStotal사용도 좋습니다조회갯수
    
    String Gname,Gtitle, Gemail ;
    java.util.Date Gwdate;
    
    String msg;
    String submsg;
    String Gdata;
    
    //댓글관련전역변수
    int Rrn, Rnum, Rsabun ;
    String Rwriter, Rcontent ;
    int Rcnt ; //댓글갯수표시
    
  %>

 <%
   try{
  	Class.forName("oracle.jdbc.driver.OracleDriver");
    String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
    CN=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","1234");
    //System.out.println("ssi.jsp문서 오라클연결성공success"); 
   }catch(Exception ex){ System.out.println(ex); }
 %>

</body>
</html>




