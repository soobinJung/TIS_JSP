package net.tis.sql;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import net.tis.common.DB;
import java.text.SimpleDateFormat;

public class GuestSQL {
	  Connection CN ;
	  Statement ST ;
	  PreparedStatement PST;
	  CallableStatement CST;
	  ResultSet RS ;
	 
	  int Gsabun,Gpay, Ghit ;
	  int GGtotal; //��ü���ڵ尹��
	  int Gtotal ; //��ȸ���ڵ尹��
	  int GStotal=0 ; //Gtotal��� GStotal��뵵 �����ϴ���ȸ����
	 
	  String Gname,Gtitle, Gemail ;
	  java.util.Date Gwdate;
	 
	  String msg;
	  String submsg;
	  String Gdata;
	 
	  //��۰�����������
	  int Rrn, Rnum, Rsabun ;
	  String Rwriter, Rcontent ;
	  int Rcnt ; //��۰���ǥ��
	
	 //////////////////////////////////////////////////////
   public GuestSQL() {
  	 CN = DB.getConnection(); //08-25-ȭ���� �ٽ� �ּ�Ǯ�� �ڵ�ȭ
	 /*
  	 try {
  		Context ct = new InitialContext();
  		DataSource ds = (DataSource)ct.lookup("java:comp/env/jdbc/snow");
  		CN=ds.getConnection();  
  		System.out.println("dbcp  connection pool ���Ἲ������ 10:38  10:41 ");
  	}catch (Exception e){System.out.println("dbcp connection pool ���ῡ��:"+ e); 	}
    */
   }//end--------------------------------------------------------------------
   
  
   public void dbDelete( String data ) {
     try {
       //guestDelete.jsp���� 
       msg="delete  from guest where sabun =  " + data ;
       ST=CN.createStatement();
       ST.executeUpdate(msg);
       System.out.println(data + " ������ ����ó�� �����߽��ϴ�");
  	 }catch(Exception ex) { System.out.println("����:" + ex);} 
   }//end--------------------------------------------------------------------
   
    
   public void dbInsert(GuestDTO dto) {
  	 try {
   		msg="insert into guest values(?,?,?,sysdate,?,0,?)";
   		PST = CN.prepareStatement(msg);
   			PST.setInt(1,  dto.getSabun());
   			PST.setString(2, dto.getName());
   			PST.setString(3, dto.getTitle());
   			PST.setInt(4, dto.getPay());
   			PST.setString(5, dto.getEmail());
   		PST.executeUpdate(); //��¥����
   		System.out.println("GuestSQL�ڹٹ��� dbInsert(dto)�Լ�  ���强��  08-25-ȭ���� 1:47");
   	 }catch(Exception ex) { System.out.println("���忡��:" + ex);}
   }//end--------------------------------------------------------------------
      
 	public ArrayList<GuestDTO> dbSelect( ){
 		ArrayList<GuestDTO> list = new ArrayList<GuestDTO>();
		try {
			msg="select rownum rn, g.* from guest  g";
			ST=CN.createStatement();
			RS=ST.executeQuery(msg);
			while(RS.next()==true) {
				GuestDTO dto = new GuestDTO();
				 dto.setRn(RS.getInt("rn"));
				 dto.setSabun(RS.getInt("sabun")); 
				 dto.setName(RS.getString("name"));
				 dto.setTitle(RS.getString("title"));
				 dto.setWdate(RS.getDate("wdate")) ;
				 dto.setPay(RS.getInt("pay"));
				 dto.setHit(RS.getInt("hit"));
				 dto.setEmail(RS.getString("email"));
				 list.add(dto);
			}
		}catch(Exception ex){System.out.println("��ȸ����:" + ex); }
		return list;
	}//end--------------------------------------------------------------------
   
 	
 	//////////////////////////////////////////////////////////////////////////
  public int dbGtotal() {
 	 try {
 		 msg="select count(*) as cnt from guest ";
 		 ST = CN.createStatement();
 		 RS = ST.executeQuery(msg);
 		 if(RS.next()==true) { Gtotal= RS.getInt("cnt"); }
 		 //System.out.println("�Ѱ���=" + Gtotal);
 	 }catch(Exception ex) { System.out.println("����:" + ex);}
 	 return Gtotal;
  }//end--------------------------------------------------------------------
  
  public void dbTest() {//07-31-�ݿ��� 4:41�� ����
 	 try {
 		 int code=2400;
 		 String name="������";
 		 double point = 3.14;
 		 boolean gender=true;
 		 char grade='F' ; 
 		 //���δٸ�Ÿ���� 5�� �����͸� guestTest.jsp������ �Ѱܼ� ���
 	 }catch(Exception ex) { System.out.println("����:" + ex);}
  }//end--------------------------------------------------------------------
  
  
  
  public  GuestDTO  dbDetail(String Gdata) { //guestDetail.jsp��������
  	GuestDTO dto = new GuestDTO();
	try {
	  msg="select * from guest where sabun =  " + Gdata ;
	  ST=CN.createStatement();
	  RS=ST.executeQuery(msg); //��ȸ�� �Ѱ� ����� RS���
	  if(RS.next()==true) { 
		dto.setSabun(RS.getInt("sabun")); 
		dto.setName(RS.getString("name"));
		dto.setTitle(RS.getString("title"));
		dto.setWdate(RS.getDate("wdate")) ;
		dto.setPay(RS.getInt("pay"));
		dto.setHit(RS.getInt("hit"));
		dto.setEmail(RS.getString("email"));
	   }
	 }catch(Exception ex) { System.out.println("����:" + ex);}
 	 return dto;
  }//end--------------------------------------------------------------------
  
  
  
   public void test() {
  	 try {
  		 //String a = " select * from  ( ";
  		 //String b = " select rownum rn, a.*, (select count(*) from guestreply r where r.sabun=a.sabun ) as rcnt from ";
  		 //String y = " ( select * from guest " + sqry + " order by sabun) a ";
  		 //String c = " ) where rn  between " + start + " and  " + end;
  	 }catch(Exception ex) { System.out.println("����:" + ex);}
   }//end--------------------------------------------------------------------
}//GuestSQL class END

