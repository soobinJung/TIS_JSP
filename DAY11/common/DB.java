package net.tis.common;

import java.sql.*;

public class DB {
  public static Connection  getConnection(){
   Connection CN = null;
   try{
    	Class.forName("oracle.jdbc.driver.OracleDriver");
      String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
      CN=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","1234");
      //System.out.println("07-30-������ ssi.jsp���� ����Ŭ���Ἲ��success"); 
    }catch(Exception ex){ System.out.println(ex); }
   
   return CN;
  }//end
  
}//DB class END






