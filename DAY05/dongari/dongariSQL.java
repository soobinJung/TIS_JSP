package dongari;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import check.leadercode;


public class dongariSQL {
   
   
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
     
     
      public dongariSQL() {
         try {
               CN = DB.getConnection();
      //   ST = CN.createStatement();
         } catch (Exception ex) {System.out.println("���� : " + ex);}
      }
      
      //���� ���� ����
      //����(2) + ����(1) + ���ڵ尳��(3)
      public void ldInsert(String LNICK, String LINTRO, String BANK, String BANKNUM, String LLOCAL, String CCODE) {
         try {
            leadercode l = new leadercode();
            System.out.println("ldInsert �����մϴ�");
            
            String LEADER  = l.leaderCode(CCODE, LLOCAL);
            System.out.println("���� �ڵ� ���� �Ϸ� : " + LEADER );
            
            msg="INSERT INTO LEADER VALUES( ?, ?, ?, ?, ?, ?, ?)"; // ����ǥ ������ ������
              PST=CN.prepareStatement(msg);
                   PST.setString(1, LEADER);
                   PST.setString(2, CCODE);
                   PST.setString(3, LNICK);
                   PST.setString(4, LINTRO);
                   PST.setString(5, BANK);
                   PST.setString(6, BANKNUM);
                   PST.setString(7, LLOCAL);
             PST.executeUpdate(); // --> ���⼭���� ����
             
             System.out.println("***ldInsert******************��***********");             
         } catch (Exception ex) {System.out.println("���� : " + ex);}
      }//dbInsert end

   
      
   //���� ���� ���
      public ArrayList<dongariDTO> ldSelect() { //��� ������ ����
         ArrayList<dongariDTO> list = new ArrayList<dongariDTO>();
         try {
            msg="select rownum rn, L.* from LEADER L";
            ST = CN.createStatement();
            RS = ST.executeQuery(msg);   
            
            while(RS.next()==true) {
               
                     dongariDTO DTO = new dongariDTO();
                     
                     DTO.setLNICK(RS.getString("LNICK"));
                     DTO.setLINTRO(RS.getString("LINTRO"));
                     DTO.setBANK(RS.getString("BANK"));
                     DTO.setBANKNUM(RS.getString("BANKNUM"));
                     DTO.setLLOCAL(RS.getString("LLOCAL"));
                    list.add(DTO);
            }
         } catch (Exception ex) {System.out.println("���� : " + ex);}
         return list;
      }//dbselect end
      
      public String makeLcode(String local, String gender, String record){
         LCODE = local + gender + record ;
         return LCODE;
      }
      
      
      
      
      
      
      
      
      
    //�Ѹ��� ���� ������ ���
      public ArrayList<dongariDTO> oneldSelect(String CCODE) { //��� ������ ����
         ArrayList<dongariDTO> list = new ArrayList<dongariDTO>();
         
         try {
            msg="SELECT * FROM LEADER WHERE CCODE="+CCODE;
            
            ST = CN.createStatement();
            RS = ST.executeQuery(msg);   
            
            while(RS.next()==true) {
               
                     dongariDTO DTO = new dongariDTO();
                     
                     DTO.setLNICK(RS.getString("LNICK"));
                     DTO.setLINTRO(RS.getString("LINTRO"));
                     DTO.setBANK(RS.getString("BANK"));
                     DTO.setBANKNUM(RS.getString("BANKNUM"));
                     DTO.setLLOCAL(RS.getString("LLOCAL"));
                    list.add(DTO);
            }
         } catch (Exception ex) {System.out.println("���� : " + ex);}
         return list;
      }//oneldSelect end
      
      
      
      
      
      
      
      
      
      
      //ȸ�� ���� ���
      public ArrayList<dongariDTO> cSelect(String CCODE) { //��� ������ ����
         
         ArrayList<dongariDTO> list = new ArrayList<dongariDTO>();
         

         
         try {
            msg="SELECT NAME, EMAIL, BIRTH, PHONE FROM CUSTOMER WHERE CCODE='"+ CCODE +"'";
            ST = CN.createStatement();
            RS = ST.executeQuery(msg);   
            
            while(RS.next()==true) {
               
                     dongariDTO DTO = new dongariDTO();
                      
                     DTO.setNAME(RS.getString("NAME"));
                     DTO.setEMAIL(RS.getString("EMAIL"));
                     DTO.setBIRTH(RS.getString("BIRTH"));
                     DTO.setPHONE(RS.getString("PHONE"));
         
                     String NAME =  RS.getString("NAME");
                     String EMAIL = RS.getString("EMAIL");
                     String BIRTH = RS.getString("BIRTH");
                     String PHONE = RS.getString("PHONE");
                     
                    list.add(DTO);
            }
         } catch (Exception ex) {System.out.println("���� : " + ex);}
         
         
         return list;
      }//dbselect end
      


      
      
      
      
      
      
      
      // ȸ������ ����
      public void infoedit( String NAME, String EMAIL, String BIRTH, String PHONE, String CCODE) {
         
         try {
            
            msg = "UPDATE CUSTOMER SET NAME = ? ,EMAIL= ? ,BIRTH = ? ,PHONE = ? WHERE CCODE = ?";
             
            PST=CN.prepareStatement(msg);
             PST.setString(1, NAME);
             PST.setString(2, EMAIL);
             PST.setString(3, BIRTH);
             PST.setString(4, PHONE);
             PST.setString(5, CCODE);
    
       PST.executeUpdate();
             
         }catch (Exception ex) {
            System.out.println("���� : " + ex);
         }
         
      }
      
      //ȸ������ insert
         public void cInsert(String NAME,   String ID,     String PW,     String EMAIL, 
                                       String PHONE1, String PHONE2, String PHONE3, String GENDER, 
                                       String BIRTH,  String JUSO,   String PICTURE) {
            
            String CCODE = GENDER + JUSO + PHONE3;
            String PHONE = PHONE1 + PHONE2 + PHONE3;
            
            System.out.println("[cInsert] CCODE : " + CCODE);
            System.out.println("[cInsert] PHONE : " + PHONE);
            System.out.println("[cInsert] GENDER : " + GENDER);
            
            PICTURE = "work1.jsp";
            
            try {
            msg = "INSERT INTO CUSTOMER VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PST=CN.prepareStatement(msg);
                  PST.setString(1, CCODE);
                  PST.setString(2, NAME);
                  PST.setString(3, ID);
                  PST.setString(4, PW);
                  PST.setString(5, EMAIL);
                  PST.setString(6, PHONE);
                  PST.setString(7, GENDER);
                  PST.setString(8, BIRTH);
                  PST.setString(9, JUSO);
                  PST.setString(10, PICTURE);
                  PST.executeUpdate(); // --> ���⼭���� ����
            } catch(Exception ex) {System.out.println("���� : " + ex);}
         }
      
         
         
         
         public ArrayList<dongariDTO> cSelectALL( String CCODE ) {
           ArrayList<dongariDTO> list = new ArrayList<dongariDTO>();
           
           try {
              msg = "SELECT * FROM CUSTOMER WHERE CCODE = '"+ CCODE +"'";
              
              ST = CN.createStatement();
              RS = ST.executeQuery(msg);
              
              while( RS.next() == true ) {
                 dongariDTO DTO = new dongariDTO();
                 
                 DTO.setNAME(   RS.getString("NAME"));
                 DTO.setID(     RS.getString("ID"));
                 DTO.setPW(     RS.getString("PASS"));
                 DTO.setEMAIL(  RS.getString("EMAIL"));
                 DTO.setPHONE(  RS.getString("PHONE"));
                 DTO.setGENDER( RS.getString("GENDER"));
                 DTO.setBIRTH(  RS.getString("BIRTH"));
                 DTO.setJUSO(   RS.getString("JUSO"));
                 DTO.setPICTURE(RS.getString("PICTURE"));
                 
                 list.add(DTO);
              }
           }catch (Exception e) {
              e.printStackTrace();
           }
           
           return list;
     }
        
         
         
         
         
         
         
         
         
         
         
         
}


