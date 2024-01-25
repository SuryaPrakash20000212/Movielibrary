<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <center><h1><u>ADD MOVIE</u></h1></center>
    <form action="savemovie" method="post" enctype="multipart/form-data">
   <center> <table>
        <tr>
            <td><label for="movieid">MOVIE ID :</label></td>
            <td> <input type="number" name="movieid" autofocus required placeholder="Enter movie id"></td>
        </tr>
        <tr>
            <td><label for="moviename">MOVIE NAME :</label></td>
            <td> <input type="text" name="moviename" autofocus required placeholder="Enter movie name"></td>
        </tr>
        <tr>
            <td><label for="movieprice">MOVIE PRICE :</label></td>
            <td><input type="number" name="movieprice" autofocus required placeholder="Enter movie price"></td>
        </tr>
        <tr>
            <td><label for="movierating">MOVIE RATING :</label></td>
            <td><input type="number" name="movierating" autofocus required placeholder="Enter movie rating"></td>
        </tr>
        <tr>
       <td><label for="genre">MOVIE GENRE :</label></td>
      <td><input type="text" name="moviegenre" autofocus required placeholder="Enter movie genre"></td> 
        </tr>
        <tr>
            <td><label for="movielanguage">MOVIE LANGUAGE :</label></td>
            <td><input type="type" name="movielanguage" autofocus required placeholder="Enter movie language"></td>
        </tr>
        <tr>
            <td><label for="movieimage">MOVIE IMAGE :</label></td>
            <td><input type="file" name="movieimage" autofocus required></td>
        </tr  >
    </table><br>
</center>
<center>
 <input type="submit">
</center>
</form>
</body>
</html>