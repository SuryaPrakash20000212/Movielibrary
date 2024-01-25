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
import dto.Movie;
@WebServlet("/editmovie")
public class EditMovie extends HttpServlet
{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	Integer movieid=Integer.parseInt(req.getParameter("id"));
    	Dao dao=new Dao();
    	
    	try 
    	{
    		
    		HttpSession session= req.getSession();
    		String adminname=(String)session.getAttribute("adminname");
    		
    		if(adminname!=null)
    		{
    			Movie movie=dao.findMovieById(movieid);
    			req.setAttribute("movie", movie);
    			RequestDispatcher r=req.getRequestDispatcher("editmovie.jsp");
    			r.include(req, resp);
    		}
    		else
    		{
    			req.setAttribute("message", "access denined , login required");
    			RequestDispatcher r=req.getRequestDispatcher("adminlogin.jsp");
    			r.include(req, resp);
    		}
    		
			
		}
    	catch (Exception e) 
    	{
			e.printStackTrace();
		}
    }
}
