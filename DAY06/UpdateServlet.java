package com.saeyan.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/upload.do")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String savePath = "upload";
		int uploadFileSizeLimit = 5*1024*1024;
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		
		System.out.print("서버상의 실제 디렉토리 : " + uploadFilePath );
		
		try {
				MultipartRequest multi = new MultipartRequest(
						request, 
						uploadFilePath, 
						uploadFileSizeLimit, 
						encType, 
						new DefaultFileRenamePolicy());
				
				String fileName = multi.getFilesystemName("uploadFile");
				
				if( fileName == null ) {
					System.out.println("파일 업로드가 되지 않은");
				}else {
					out.println("<br>글쓴이 : " + multi.getParameter("name"));
					out.println("<br>제 목 : "  + multi.getParameter("title"));
					out.println("<br>파일명 : " +"fileName");	
				}
		}catch (Exception e) {
			System.out.println("예외 발생 : " + e );
		}
		
		//doGet(request, response);
	}

}
