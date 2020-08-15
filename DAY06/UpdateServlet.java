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
		
		System.out.print("�������� ���� ���丮 : " + uploadFilePath );
		
		try {
				MultipartRequest multi = new MultipartRequest(
						request, 
						uploadFilePath, 
						uploadFileSizeLimit, 
						encType, 
						new DefaultFileRenamePolicy());
				
				String fileName = multi.getFilesystemName("uploadFile");
				
				if( fileName == null ) {
					System.out.println("���� ���ε尡 ���� ����");
				}else {
					out.println("<br>�۾��� : " + multi.getParameter("name"));
					out.println("<br>�� �� : "  + multi.getParameter("title"));
					out.println("<br>���ϸ� : " +"fileName");	
				}
		}catch (Exception e) {
			System.out.println("���� �߻� : " + e );
		}
		
		//doGet(request, response);
	}

}
