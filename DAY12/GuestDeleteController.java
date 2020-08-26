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


@WebServlet("/gdelete.do")
public class  GuestDeleteController  extends HttpServlet {
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
     
     System.out.println("<h2>GuestDeleteController.java �ܵ��������</h2>");     
     String Gdata = request.getParameter("idx");
     GuestSQL gs = new GuestSQL( );
     gs.dbDelete(Gdata);
     response.sendRedirect("glist.do");
     
    //RequestDispatcher dis = request.getRequestDispatcher("guestDetail.jsp");
    //dis.forward(request, response);
  }//end
  
}//class END







