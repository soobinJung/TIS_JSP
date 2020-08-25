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
     
     out.println("<h2>GuestListController.java</h2>");     
     //GuestListController.java문서 단독실행 가능
     
     GuestDTO dto = new GuestDTO( );
     GuestSQL gs = new GuestSQL( );
     ArrayList<GuestDTO> LG = gs.dbSelect();
     int Gtotal = gs.dbGtotal();
     
     //59페이지 참고 
     //LG객체덩어리를  guestList.jsp문서로 넘겨요 
     //glist.do = GuestListController.java문서 단독실행 가능
     //guestList.jsp문서 단독실행하면 에러발생
     // |- GuestListController.java문서에서 데이터자원을 포워딩 
     
     request.setAttribute("LG", LG);
     request.setAttribute("Gtotal", Gtotal);
   
    RequestDispatcher dis = request.getRequestDispatcher("guestList.jsp");
    dis.forward(request, response);
  }//end
}//class END







