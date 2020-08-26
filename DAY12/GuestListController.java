package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter; //추가
import java.util.ArrayList;

import javax.servlet.RequestDispatcher; //추가
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.sql.GuestDTO; //추가
import net.tis.sql.GuestSQL; //추가


@WebServlet("/glist.do")
public class  GuestListController  extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 doUser(request,response);	 //필수
  }//end

  public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  doUser(request,response);	//필수
  }//end
  
  public  void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 response.setContentType("text/html; charset=UTF-8");
     PrintWriter out = response.getWriter();
     
     System.out.println("<h2>GuestListController.java</h2>");     
     //GuestListController.java문서 단독실행 가능
     
     String pnum; //<a href="guestList.jsp?pageNum=14"> [14] </a>
     int pageNUM, pagecount;  
     int start, end;
     int startpage, endpage ;
     int tmp; 
    
     String sqry=" ";
     String skey="", sval="" ;
     String returnpage="";
     
     pnum = request.getParameter("pageNum");
     
     if( pnum==null || pnum=="" ) { 
    	 pnum="1";
    	 }
     
     pageNUM = Integer.parseInt(pnum); //문자에서 숫자로 페이지번호기억 
     
     GuestDTO dto = new GuestDTO( );
     GuestSQL gs = new GuestSQL( );
     
     int Gtotal = gs.dbGtotal();
     
     start = (pageNUM-1)*10+1 ;  //[14]클릭하면 문자로 14로 기억  시작행 131
     end = pageNUM*10 ;    //[14]클릭하면 문자로 14로 기억  끝행 140
  //////////////////////////////////////////////////////////////////////////////////////////
  //guestList0731.jsp문서참고
  //총페이지 32페이지  pagecount
  //[11] [14클릭] [20]
  //시작페이지 11
  //끝페이지 20
     
  if (Gtotal%10==0) { 
	  pagecount = Gtotal/10; 
  } else { 
	  pagecount = (Gtotal/10)+1; 
  }
     
  tmp       = (pageNUM-1)%10;
  startpage = pageNUM-tmp;
  endpage   = startpage+9;
  
  if( endpage > pagecount ) { 
	  endpage=pagecount ; 
  }
		  
     //ArrayList<GuestDTO> LG = gs.dbSelect(); 처음원본
     ArrayList<GuestDTO> LG = gs.dbSelect(start,end);
     request.setAttribute("LG", LG);
     request.setAttribute("Gtotal", Gtotal);
     request.setAttribute("startpage", startpage);
     request.setAttribute("endpage", endpage);
     request.setAttribute("pagecount", pagecount);
     
    RequestDispatcher dis = request.getRequestDispatcher("guestList.jsp");
    dis.forward(request, response);
  }//end
}//class END







