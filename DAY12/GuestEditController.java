package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter; //�߰�

import javax.servlet.RequestDispatcher; //�߰�
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.sql.GuestDTO; //�߰�
import net.tis.sql.GuestSQL; //�߰�


@WebServlet("/gedit.do")
public class GuestEditController extends HttpServlet {
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
     
     System.out.println("<h2>GuestEditController.java </h2>");
 
     //����� ������ ������ �����͹ޱ�
     int Gsabun = Integer.parseInt(request.getParameter("sabun"));
     String Gname = request.getParameter("name");
     String Gtitle = request.getParameter("title") ;
     int Gpay = Integer.parseInt(request.getParameter("pay"));
     String Gemail = request.getParameter("email");
     System.out.println("����������  " +Gsabun+"  "+Gname+" "+Gtitle+" " +Gpay+"  " + Gemail);
     
     GuestDTO dto = new GuestDTO( );
     GuestSQL gs = new GuestSQL( );
     
     dto.setSabun(Gsabun);
     dto.setName(Gname);
     dto.setTitle(Gtitle);
     dto.setPay(Gpay);
     dto.setEmail(Gemail);
     gs.dbEdit(dto); //��=�����Ͻ�ó������ update ~ where sabun  
 
     System.out.println("GuestEditController.java ��������");
     response.sendRedirect("glist.do");
    
  }//end
}//class END







