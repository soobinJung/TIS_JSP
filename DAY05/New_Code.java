public class New_Code {
   
   // 고객   코드 생성
   // 성별, 지역, 폰번호 뒷자리
   public static String New_Customer( int g, String aray, String phone ) {
      
      String code = g + aray + phone.substring(phone.length()-4, phone.length());
      
      return code;
            
   } 
   
   public static void main(String[] args) {
      System.out.println(New_Customer(1, "12", "01084786861"));
   }
   
   

   // 리더   코드 생성
   public static String ReaderTotal() {
      
      // 리더 총 인원수 구해서 반환
      
      return "595";
   }
   
   // 개설지역(2), 성별(1),  레코드 개수(3)
   public static String New_Reader( String aray,  int g ) {
      
      // 뭐리문을 통해서 현지 리더의 전체 수를 카운트 한다.
      // 리더의 전체 수 + 1 을 더해서 레코드 개수를 결정 한다.
      
      
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

   
   
   
   
   
   
   
   
   
   
   // 동아리코드 생성
   public static String DongaryTotal(){
      
      // 동아리 총 갯수 반환 (쿼리문)
      
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
   
   // 동아리코드 = 리더코드 + 카운트 개수(3)
   public static String New_Dongary( String sReader ) {
      
      String  Dongary =  sReader + DongaryTotal();
      
      return Dongary;
   }
   
   
   
   
   
   
   
   
   
   
   
   
   // 개강   코드 생성
   public static String Opencalss(){
      //  현재 동아리의 오늘 개강한 갯수 구하기(오늘) (예) sTotal
      
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
   
   // 개강코드 = 동아리코드 + 카운트 개수 (A~Z)
   public static String New_Opencalss( String Dongary ){
      
      String opencalss = Dongary + Opencalss();
      
      return "";
   }
   
}