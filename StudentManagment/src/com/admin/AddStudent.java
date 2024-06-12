package com.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet("/add_Student")
@MultipartConfig
public class AddStudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			
			String name=req.getParameter("name");
			String dob=req.getParameter("dob");
			String address=req.getParameter("address");
			String qualification=req.getParameter("qualification");
			String email=req.getParameter("email");
			
			
			Student b=new Student(name,dob,address,qualification,email);
			StudentDAO dao=new StudentDAO(DBConnect.getConn());
			
			boolean f=dao.addStudent(b);
			
			HttpSession session=req.getSession();
			
			if(f)
			{
				
				
			   session.setAttribute("succMsg", "Student Add Successfully");
			   resp.sendRedirect("addStudent.jsp");
			}else
			{
				session.setAttribute("failedMsg", "Something wrong on server");
				resp.sendRedirect("addStudent.jsp");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
                 
	
}
