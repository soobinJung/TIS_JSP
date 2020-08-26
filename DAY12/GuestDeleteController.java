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


@WebServlet("/gdelete.do")
public class  GuestDeleteController  extends HttpServlet {
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
     
     System.out.println("<h2>GuestDeleteController.java 단독실행금지</h2>");     
     String Gdata = request.getParameter("idx");
     GuestSQL gs = new GuestSQL( );
     gs.dbDelete(Gdata);
     response.sendRedirect("glist.do");
     
    //RequestDispatcher dis = request.getRequestDispatcher("guestDetail.jsp");
    //dis.forward(request, response);
  }//end
  
}//class END







