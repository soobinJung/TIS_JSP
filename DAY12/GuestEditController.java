package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter; //추가

import javax.servlet.RequestDispatcher; //추가
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.tis.sql.GuestDTO; //추가
import net.tis.sql.GuestSQL; //추가


@WebServlet("/gedit.do")
public class GuestEditController extends HttpServlet {
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
     
     System.out.println("<h2>GuestEditController.java </h2>");
 
     //사번을 제외한 수정한 데이터받기
     int Gsabun = Integer.parseInt(request.getParameter("sabun"));
     String Gname = request.getParameter("name");
     String Gtitle = request.getParameter("title") ;
     int Gpay = Integer.parseInt(request.getParameter("pay"));
     String Gemail = request.getParameter("email");
     System.out.println("수정데이터  " +Gsabun+"  "+Gname+" "+Gtitle+" " +Gpay+"  " + Gemail);
     
     GuestDTO dto = new GuestDTO( );
     GuestSQL gs = new GuestSQL( );
     
     dto.setSabun(Gsabun);
     dto.setName(Gname);
     dto.setTitle(Gtitle);
     dto.setPay(Gpay);
     dto.setEmail(Gemail);
     gs.dbEdit(dto); //모델=비지니스처리에서 update ~ where sabun  
 
     System.out.println("GuestEditController.java 수정성공");
     response.sendRedirect("glist.do");
    
  }//end
}//class END







