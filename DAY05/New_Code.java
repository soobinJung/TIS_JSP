public class New_Code {
   
   // ��   �ڵ� ����
   // ����, ����, ����ȣ ���ڸ�
   public static String New_Customer( int g, String aray, String phone ) {
      
      String code = g + aray + phone.substring(phone.length()-4, phone.length());
      
      return code;
            
   } 
   
   public static void main(String[] args) {
      System.out.println(New_Customer(1, "12", "01084786861"));
   }
   
   

   // ����   �ڵ� ����
   public static String ReaderTotal() {
      
      // ���� �� �ο��� ���ؼ� ��ȯ
      
      return "595";
   }
   
   // ��������(2), ����(1),  ���ڵ� ����(3)
   public static String New_Reader( String aray,  int g ) {
      
      // �������� ���ؼ� ���� ������ ��ü ���� ī��Ʈ �Ѵ�.
      // ������ ��ü �� + 1 �� ���ؼ� ���ڵ� ������ ���� �Ѵ�.
      
      
      String sRtotal = ReaderTotal();
      int    iRtotal = Integer.parseInt(sRtotal);
      
      if( iRtotal < 10 ){
         sRtotal = "00" + Integer.toString(iRtotal);
         
      }else if( iRtotal < 100 ) {
         sRtotal = "0" + Integer.toString(iRtotal);
         
      }else {
         sRtotal = Integer.toString(iRtotal);
      }
      
      String code = aray + g + sRtotal;
      
      return code;
            
   } 

   
   
   
   
   
   
   
   
   
   
   // ���Ƹ��ڵ� ����
   public static String DongaryTotal(){
      
      // ���Ƹ� �� ���� ��ȯ (������)
      
//      if( iDtotal < 10 ){
//         sDtotal = "00" + Integer.toString(iDtotal);
//         
//      }else if( iDtotal < 100 ) {
//         sDtotal = "0" + Integer.toString(iDtotal);
//         
//      }else {
//         sDtotal = Integer.toString(iDtotal);
//      }
      
      return "sDtotal";
   }
   
   // ���Ƹ��ڵ� = �����ڵ� + ī��Ʈ ����(3)
   public static String New_Dongary( String sReader ) {
      
      String  Dongary =  sReader + DongaryTotal();
      
      return Dongary;
   }
   
   
   
   
   
   
   
   
   
   
   
   
   // ����   �ڵ� ����
   public static String Opencalss(){
      //  ���� ���Ƹ��� ���� ������ ���� ���ϱ�(����) (��) sTotal
      
      String sTotal = "6";
      
      switch (sTotal) {
      
      case "0":   return "A"; 
      case "1":   return "B"; 
      case "2":   return "C";   
      case "3":   return "D"; 
      case "4":   return "E"; 
      case "5":   return "F"; 
      case "6":   return "G"; 
      case "7":   return "H"; 
      case "8":   return "I";
      case "9":   return "J"; 
      case "10":  return "K"; 
      case "11":  return "L";
      case "12":  return "M"; 
      
      default:
         break;
      }
      return "0";
   
   }
   
   // �����ڵ� = ���Ƹ��ڵ� + ī��Ʈ ���� (A~Z)
   public static String New_Opencalss( String Dongary ){
      
      String opencalss = Dongary + Opencalss();
      
      return "";
   }
   
}