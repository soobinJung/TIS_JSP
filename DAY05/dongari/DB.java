package dongari;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Date;

public class DB {
  public static Connection getConnection() {
  Connection CN = null;
  try{
  	Class.forName("oracle.jdbc.driver.OracleDriver"); //����̺�ε�
      String url="jdbc:oracle:thin:@127.0.0.1:1521:XE" ;
      CN=DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE","system","1234");
      Date now = new Date();
  	}catch(Exception ex){System.out.println("Error name :" + ex);}
  return CN; //�ݵ�� �־����
    //GuestSQL sql = new GuestSQL();
  	//GuestDTO dao = new GuestDTO();
  
  }
}// Global class end