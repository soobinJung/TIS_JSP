<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.CallableStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%! 

  Connection CN;
  Statement ST; 
  PreparedStatement PST;
  CallableStatement CST; 
  ResultSet RS; 
  java.util.Date Gwdate;
  
  int Gsabun;
  int Gpay;
  int Ghit;
  int Gtotal;    //조회레코드갯수
  int GGtotal;    //전체레코드갯수
  int GStotal;
  
  String Gname, Gtitle, Gemail, Grownum;
  String msg="쿼리문기술"; String submsg="";
  String Gdata;
  
  //댓글관련 전역변수
  String R_msg;
  String Rdata;
  String Rwriter;
  String Rcontent;
  int Rrn, Rnum, Rsabun;
  int Rcnt;
  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[ssi.jsp]</title>
<style type="text/css">
   *{font-size:16pt;}
   a{ font-size: 16pt; color:black; text-decoration:none;}
   a:hover{ font-size: 16pt; color:blue; text-decoration:underline;}
</style>
</head>
<body>

<%
   try{
   Class.forName("oracle.jdbc.driver.OracleDriver"); //드라이브로드
    String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
    CN=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","1234");
    Date now = new Date();
   }catch(Exception ex){System.out.println("Error name :" + ex);}
   ST=CN.createStatement();
%>

</body>
</html>