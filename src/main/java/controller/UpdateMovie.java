package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import dao.Dao;
import dto.Movie;

@WebServlet("/updatemovie")
@MultipartConfig(maxFileSize = 10*1024*1024)
public class UpdateMovie extends HttpServlet
{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
    	int movieid=Integer.parseInt(req.getParameter("movieid"));
    	String moviename=req.getParameter("moviename");
    	Double movieprice=Double.parseDouble(req.getParameter("movieprice"));
    	Double movierating=Double.parseDouble(req.getParameter("movierating"));
    	String moviegenre=req.getParameter("moviegenre");
    	String movielanguage=req.getParameter("movielanguage");
    	Part imagepart=req.getPart("movieimage");
    	
        Movie movie=new Movie();
        
        movie.setMovieid(movieid);
        movie.setMoviename(moviename);
        movie.setMovieprice(movieprice);
        movie.setMovierating(movierating);
        movie.setMoviegenre(moviegenre);
        movie.setMovielanguage(movielanguage);
       
         Dao dao=new Dao();
        
         try {

 			if (imagepart.getSize() > 0) {
 				movie.setMovieimage(imagepart.getInputStream().readAllBytes());
 				dao.updateMovie(movie);

 				req.setAttribute("movies", dao.getallMovies());
 				RequestDispatcher dispatcher = req.getRequestDispatcher("adminhome.jsp");
 				dispatcher.include(req, resp);
 			} else {
 				Movie dbmovie = dao.findMovieById(movieid);
 				movie.setMovieimage(dbmovie.getMovieimage());
 				dao.updateMovie(movie);

 				req.setAttribute("movies", dao.getallMovies());
 				RequestDispatcher dispatcher = req.getRequestDispatcher("adminhome.jsp");
 				dispatcher.include(req, resp);
 			}

 		} catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		} 
 		

 	}

 }
