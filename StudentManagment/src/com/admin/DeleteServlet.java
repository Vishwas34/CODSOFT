package com.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/delete")
public class DeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       try
       {
    	   int id=Integer.parseInt(req.getParameter("id"));
			
			StudentDAO dao=new StudentDAO(DBConnect.getConn());
			boolean f=dao.deleteStudent(id);
			
			HttpSession session=req.getSession();
			if(f)
			{
			  session.setAttribute("succMsg", "Book Deleted Successfully...");
			  resp.sendRedirect("ShowAllStudents.jsp");
			}else
			{
				session.setAttribute("failedMsg", "Something wrong on Server");
				resp.sendRedirect("ShowAllStudents.jsp");	
			}
    	   
       }catch(Exception e)
       {
    	   e.printStackTrace();
       }
	}
	

}


