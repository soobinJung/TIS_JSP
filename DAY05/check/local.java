package check;

public class local {
  public String Localcode( String add ) {
    
    String S = add;
   System.out.println( "���� ��=>" + S);
   
   if( add.contains("00") )  {
      S = "����";
      
   }else if( add.contains("13") ) {
      S = "��õ";
      
   }else if( add.contains("16") ) {
      S = "���";
   }
   System.out.println( "���� ��=>" + S);
   
   
   return S;
  }
}
