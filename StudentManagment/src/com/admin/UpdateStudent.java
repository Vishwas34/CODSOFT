package com.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/editstudent")
public class UpdateStudent extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 try
	 {
		    int id=Integer.parseInt(req.getParameter("id"));
		    String name=req.getParameter("name");
			String dob=req.getParameter("dob");
			String address=req.getParameter("address");
			String qualification=req.getParameter("qualification");
			String email=req.getParameter("email");
		 
			Student b=new Student();
			b.setId(id);
			b.setName(name);
			b.setDob(dob);
			b.setAddress(address);
			b.setQualifiaction(qualification);
			b.setEmail(email);
			
			StudentDAO dao=new StudentDAO(DBConnect.getConn());
			boolean f=dao.EditStudent(b);
			
			HttpSession session=req.getSession();
			if(f)
			{
			  session.setAttribute("succMsg", "Book Update Successfully...");
			  resp.sendRedirect("ShowAllStudents.jsp");
			}else
			{
				session.setAttribute("failedMsg", "Something wrong on Server");
				resp.sendRedirect("ShowAllStudents.jsp");	
			}

	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	}
        
}
