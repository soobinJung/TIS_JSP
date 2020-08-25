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
     
     out.println("<h2>GuestListController.java</h2>");     
     //GuestListController.java���� �ܵ����� ����
     
     GuestDTO dto = new GuestDTO( );
     GuestSQL gs = new GuestSQL( );
     ArrayList<GuestDTO> LG = gs.dbSelect();
     int Gtotal = gs.dbGtotal();
     
     //59������ ���� 
     //LG��ü�����  guestList.jsp������ �Ѱܿ� 
     //glist.do = GuestListController.java���� �ܵ����� ����
     //guestList.jsp���� �ܵ������ϸ� �����߻�
     // |- GuestListController.java�������� �������ڿ��� ������ 
     
     request.setAttribute("LG", LG);
     request.setAttribute("Gtotal", Gtotal);
   
    RequestDispatcher dis = request.getRequestDispatcher("guestList.jsp");
    dis.forward(request, response);
  }//end
}//class END







