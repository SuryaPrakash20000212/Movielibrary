<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="dto.Movie" %>
    <%@ page import ="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% Movie m =(Movie)request.getAttribute("movie"); %>
   
    <form action="updatemovie" method="post" enctype="multipart/form-data">
   <center> <table>
        <tr>
            <td><label for="movieid">MOVIE ID :</label></td>
            <td> <input type="number" name="movieid" autofocus  placeholder="Enter movie id"
            value="<%= m.getMovieid()%>" readonly></td>
        </tr>
        <tr>
            <td><label for="moviename">MOVIE NAME :</label></td>
            <td> <input type="text" name="moviename" autofocus placeholder="Enter movie name"
            value="<%= m.getMoviename()%>"></td>
        </tr>
        <tr>
            <td><label for="movieprice">MOVIE PRICE :</label></td>
            <td><input type="number" name="movieprice" autofocus  placeholder="Enter movie price" 
             value="<%= m.getMovieprice()%>"></td>
        </tr>
        <tr>
            <td><label for="movierating">MOVIE RATING :</label></td>
            <td><input type="number" name="movierating" autofocus  placeholder="Enter movie rating" 
             value="<%= m.getMovierating()%>"></td>
        </tr>
        <tr>
       <td><label for="genre">MOVIE GENRE :</label></td>
      <td><input type="text" name="moviegenre" autofocus  placeholder="Enter movie genre"
       value="<%= m.getMoviegenre()%>"></td> 
        </tr>
        <tr>
            <td><label for="movielanguage">MOVIE LANGUAGE :</label></td>
            <td><input type="type" name="movielanguage" autofocus  placeholder="Enter movie language"
             value="<%= m.getMovielanguage()%>"></td>
        </tr>
        <tr>
            <td><label for="movieimage">MOVIE IMAGE :</label></td>
            <td><input type="file" name="movieimage" autofocus ></td>
        </tr  >
    </table><br>
</center>
<center>
 <input type="submit"> <br>
 <input type="reset">
</center>

<center>

<%String base64image=new String(Base64.getEncoder().encode(m.getMovieimage())); %>
<img src="data:image/jpeg;base64 , <%= base64image %>" height="150px" width="100px">
</center>

</form>

</body>
</html>