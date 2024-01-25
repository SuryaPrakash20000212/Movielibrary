<%@page import="java.util.List"%>
<%@page import="java.util.Base64"%>
<%@page import="dto.Movie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <center><P><strong><u>WELCOME TO ADMIN HOME PAGE</u></strong></center>
 
 
 <%List<Movie> movies= (List) request.getAttribute("movies");%>

        <table border="10px" class="table">
            <thead>
                <tr>
                    <td>MOVIE ID</td>
                    <td>MOVIE NAME</td>
                    <td>MOVIE PRICE</td>
                    <td>MOVIE RATING</td>
                    <td>MOVIE GENRE</td>
                    <td>MOVIE LANGUAGE</td>
                    <td>MOVIE IMAGE</td>
                    <td>MOVIE EDIT</td>
                </tr>
            </thead>
            
            <tbody>
            
            <%for(Movie movie:movies){%>
            
            <tr>
            <td><%=movie.getMovieid() %></td>
             <td><%=movie.getMoviename() %></td> 
              <td><%=movie.getMovieprice() %></td>
               <td><%=movie.getMovierating()%></td>
                <td><%=movie.getMoviegenre() %></td>
                 <td><%=movie.getMovielanguage() %></td>
                 <%String base64image = new String(Base64.getEncoder().encode(movie.getMovieimage())); %>
                 <td>
                    <img src="data:image/jped;base64,<%= base64image %>" height="100px" width="100px">
                 </td>
                 <td><a href="deletemovie?id=<%=movie.getMovieid()%>">delete</a></td>
                 <td><a href="editmovie?id=<%=movie.getMovieid()%>">edit</a></td>
            
            </tr>
            <%}%>
            </tbody> 
                 </table>
            
           <a href="addmovie.jsp">addmovie </a> <br>
           <a href="Logout">Logout</a>   
                    
           
    </body>
</html>