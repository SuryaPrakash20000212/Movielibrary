package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.Admin;

@WebServlet("/adminlogin")
public class Adminlogin extends HttpServlet 
{
	@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
     {
         String mail = req.getParameter("mail");
         String password = req.getParameter("password");
         
         
         Dao dao =new Dao();
        

         try 
         {
			Admin admin=dao.findByEmailAdmin(mail);
			
			HttpSession session=req.getSession();
			session.setAttribute("adminname", admin.getAdminname());
			
			if(admin!=null) 
			{
                   if(password.equals(admin.getAdminpassword()))
                      {
                	    req.setAttribute("movies",dao.getallMovies());
				        RequestDispatcher rd=req.getRequestDispatcher("adminhome.jsp");
				        rd.include(req, resp);
			          }
			      else
			          {
			          	req.setAttribute("message"," Mail id is mismatching please try again ");
			          	RequestDispatcher rd=req.getRequestDispatcher("adminlogin.jsp");
			          	rd.include(req, resp);
			          }
			} 
			else
	         {
	             req.setAttribute("message", "mail id is mismatching please try again later ");
	             RequestDispatcher rd=req.getRequestDispatcher("adminlogin.jsp");
			        rd.include(req, resp);
	             
	             
	         }
         }
   		catch(Exception e) 
         {
    	       e.printStackTrace();
         }
      }
     
}

