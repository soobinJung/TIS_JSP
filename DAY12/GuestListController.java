package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter; //�߰�
import java.util.ArrayList;

import javax.servlet.RequestDispatcher; //�߰�
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.sql.GuestDTO; //�߰�
import net.tis.sql.GuestSQL; //�߰�


@WebServlet("/glist.do")
public class  GuestListController  extends HttpServlet {
  private static final long serialVersionUID = 1L;

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 doUser(request,response);	 //�ʼ�
  }//end

  public  void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  doUser(request,response);	//�ʼ�
  }//end
  
  public  void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 response.setContentType("text/html; charset=UTF-8");
     PrintWriter out = response.getWriter();
     
     System.out.println("<h2>GuestListController.java</h2>");     
     //GuestListController.java���� �ܵ����� ����
     
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
     
     pageNUM = Integer.parseInt(pnum); //���ڿ��� ���ڷ� ��������ȣ��� 
     
     GuestDTO dto = new GuestDTO( );
     GuestSQL gs = new GuestSQL( );
     
     int Gtotal = gs.dbGtotal();
     
     start = (pageNUM-1)*10+1 ;  //[14]Ŭ���ϸ� ���ڷ� 14�� ���  ������ 131
     end = pageNUM*10 ;    //[14]Ŭ���ϸ� ���ڷ� 14�� ���  ���� 140
  //////////////////////////////////////////////////////////////////////////////////////////
  //guestList0731.jsp��������
  //�������� 32������  pagecount
  //[11] [14Ŭ��] [20]
  //���������� 11
  //�������� 20
     
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
		  
     //ArrayList<GuestDTO> LG = gs.dbSelect(); ó������
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







