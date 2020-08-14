package check;

public class local {
  public String Localcode( String add ) {
    
    String S = add;
   System.out.println( "변경 전=>" + S);
   
   if( add.contains("00") )  {
      S = "서울";
      
   }else if( add.contains("13") ) {
      S = "인천";
      
   }else if( add.contains("16") ) {
      S = "경기";
   }
   System.out.println( "변경 후=>" + S);
   
   
   return S;
  }
}
