package check;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dongari.DB;

public class leadercode {
   
     Connection CN;
     Statement ST; 
     PreparedStatement PST;
     CallableStatement CST; 
     ResultSet RS; 
     String msg;
     
     String LNICK;
     String LINTRO;
     String BANK;
     String BANKNUM;
     String LLOCAL;
     String LCODE;
     
     
   public leadercode() {
      try {
            CN = DB.getConnection();
            
      } catch (Exception ex) {System.out.println("에러 : " + ex);}
   }
   
   public String leaderCode( String CCODE, String LLOCAL ) {
      
      try {
         String Lcnt = leaderCnt();
         
         msg = "SELECT GENDER FROM CUSTOMER WHERE CCODE='"+ CCODE +"'";
         ST = CN.createStatement();
         RS = ST.executeQuery(msg);
         RS.next();
         
         String gender = RS.getString("GENDER");
         String code = LLOCAL + gender + Lcnt;
         
         System.out.println("LLOCAL    : "   + LLOCAL);
         System.out.println("gender    : "   + gender);
         System.out.println("Lcnt      : "  + Lcnt);
         System.out.println("리더code   : "  + code);
         return code ;
         
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return CCODE;
   }
   
   public String leaderCnt(){
      
      String sCnt="";
      int    iCnt;
      
      try {
         msg = "SELECT COUNT(CCODE) AS CNT FROM LEADER";
         ST = CN.createStatement();
         RS = ST.executeQuery(msg);
         RS.next();
         
         sCnt = RS.getString("CNT");
         iCnt = Integer.parseInt(sCnt);
         System.out.println("리더의 총 카운트는 ?=> " + iCnt );
         iCnt++;
         System.out.println("리더의 총 카운트는(+1) ?=> " + iCnt );
         if( iCnt < 10) {
            sCnt = "00" + Integer.toString(iCnt);
            
         }else if( iCnt < 100 ) {
            sCnt = "0" + Integer.toString(iCnt);
            
         }else {
            sCnt =  Integer.toString(iCnt);
         }
         System.out.println("리더의 총 카운트는 ?=> " + sCnt );
         return sCnt; 
         
      } catch (SQLException e) {
         e.printStackTrace();
      }
      
      return sCnt;
   }
   
   public String LocalCodeS( String add ) {
      
       String S = add;
      
      if( add.contains("00") )  {
         add = "서울";
         
      }else if( add.contains("13") ) {
         add = "인천";
         
      }else if( add.contains("09") ) {
         add = "부산";
         
      }else if( add.contains("93") ) {
         add = "제주";
         
      }else if( add.contains("67") ) {
         add = "대구";
         
      }else if( add.contains("26") ) {
         add = "강원";
         
      }else if( add.contains("16") ) {
         add = "경기";
      }

      return add;
      
   }
   
   public String LocalCodeI( String add ) {

   
      if( add.contains("서울") )  {
         add = "00";
         
      }else if( add.contains("인천") ) {
         add = "13";
         
      }else if( add.contains("부산") ) {
         add = "09";
         
      }else if( add.contains("제주") ) {
         add = "93";
         
      }else if( add.contains("대구") ) {
         add = "67";
         
      }else if( add.contains("강원") ) {
         add = "26";
         
      }else if( add.contains("경기") ) {
         add = "16";
      }
   
   return add;   
   }
   
}