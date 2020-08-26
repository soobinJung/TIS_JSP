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


@WebServlet("/ginsert.do")
public class GuestInsertController extends HttpServlet {
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
     
     System.out.println("<h2>GuestInsertController.java</h2>");
     out.println("<img src='images/bar.gif'> <p>");
     out.println("<img src='images/bar.gif'> <p>");
     out.println("<img src='images/bar.gif'> <p>");
     
     //GuestInsertController.java���� �ܵ������ϸ� �����߻��մϴ� 
     int Gsabun = Integer.parseInt(request.getParameter("sabun"));
     String Gname = request.getParameter("name");
     String Gtitle = request.getParameter("title") ;
     int Gpay = Integer.parseInt(request.getParameter("pay"));
     String Gemail = request.getParameter("email");
     System.out.println(Gsabun+"  "+Gname+" "+Gtitle+" " +Gpay+"  " + Gemail);
     
     GuestDTO dto = new GuestDTO( );
     GuestSQL gs = new GuestSQL( );
     
     dto.setSabun(Gsabun);
     dto.setName(Gname);
     dto.setTitle(Gtitle);
     dto.setPay(Gpay);
     dto.setEmail(Gemail);
     gs.dbInsert(dto);
     System.out.println("GuestInsertController  ���强��");
     response.sendRedirect("glist.do");
     //GuestInsertController.java���� �ܵ������� ���� �߻�	
     //�ڿ��� ������ request.setAttribute("��¥", ��¥);
     //RequestDispatcher�� �������ڿ��� ���������� ���
     //RequestDispatcher dis = request.getRequestDispatcher("guestList.jsp");
     //dis.forward(request, response);
  }//end
}//class END







