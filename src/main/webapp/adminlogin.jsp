<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>


</style>




</head>
<body>
      
       <center><h2><u>WELCOME TO ADMIN LOGIN PAGE</u></h2></center>
    <BR></BR>
    <form action="adminlogin" method="post">
    <center>
            <table>
            <tr>
                <td><label for="mail">EMAIL : </label></td>
                <td> <input type="email"  name="mail" placeholder="Enter the mail"> </td>
            </tr> <br>
            <tr>
                <td><label for="pass">PASSWORD :</label></td>
                <td> <input type="password" name="password" placeholder="Enter the password"></td>
            </tr>
            
           
        </table> <br>
        <tr>
             <input type="submit">
           
        </tr>
</center>
    
    
    </form>
    
    <%String msg=(String)request.getAttribute("message"); %>
    <%if (msg!=null) { %>
    <%= msg %>
    <% } %>
    
</body>
</html>