package net.tis.mvc;

import java.io.IOException;
import java.io.PrintWriter; //추가
import java.sql.Connection; //추가
import java.util.ArrayList; //추가

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; //추가

import net.tis.common.DB; //추가
import net.tis.sql.GuestDTO; //추가
import net.tis.sql.GuestSQL; //추가


//직접매핑 @WebServlet("/photo.tis")
public class PhotoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public PhotoController() {
     super();
    }//end

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  	System.out.println("doGet(1,2)");
  	doUser(request, response);
	}//end
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost(1,2)");
		doUser(request, response);
	} //end
	
	public void doUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   System.out.println("doUser(1,2) "); 
	   response.setContentType("text/html; charset=UTF-8");
  	   PrintWriter out = response.getWriter() ;
  	   out.println("<h1>PhotoController.java문서 12:00 </h1>");
  	   out.println("<img src = images/aaa.gif>");
  	   out.println("<img src='images/aaa.gif'>");
  	   out.println("<img src='images/aaa.gif'>");
  	   out.println("<img src = 'images/aaa.gif'>");
  	   out.println("<img src = 'images/aaa.gif'> <p>");
  	   out.println("<img src = 'images/bar.gif' > ");
  	
  	//세션
  	//String msg =" select  count(*) as cnt  from login  where userid = ? and pwd = ?";
  	//Connection CN = DB.getConnection();
  	
  	GuestSQL gs = new GuestSQL();
  	ArrayList<GuestDTO> LG = gs.dbSelect();
  	int Gtotal  = gs.dbGtotal();
  	request.setAttribute("LG", LG);
  	request.setAttribute("Gtotal", Gtotal);
  	
  	
  	HttpSession hs = request.getSession() ; //248페이지 서블릿에서 세션 
  	hs.setAttribute("naver", "sky");
	} //end

}//class END













