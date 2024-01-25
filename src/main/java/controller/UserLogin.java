package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Dao;
import dto.User;

@WebServlet("/userlogin")
public class UserLogin extends HttpServlet
{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
  {
	 String mail=req.getParameter("mail");
	 String password=req.getParameter("password");
	 
	 Dao dao=new Dao();
	 
	   try 
	   {
         User user=dao.findByEmailUser(mail);
         if(user!=null)
         {
        	 if(password.equals(user.getUserpassword()))
        	 {
        		HttpSession session=req.getSession();
        		session.setAttribute("user", user);
        		
        		session.setAttribute("movies", dao.getallMovies());
        		
        		RequestDispatcher rd=req.getRequestDispatcher("userhome.jsp");
        		rd.include(req, resp);
        	 }
        	 else
        	 {
        		req.setAttribute("message", "Password is ,mismatching please try again!!");
        		RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
        		rd.include(req, resp);
        	 }
         }
         else
         {
        	 req.setAttribute ("message" , "email id is mismatching please try again ");
        	 RequestDispatcher rd=req.getRequestDispatcher("userlogin.jsp");
        	 rd.include(req, resp);
         }
	   }  
	   catch (Exception e)
	   {
		  e.printStackTrace();
	   }
	 
  }
}
