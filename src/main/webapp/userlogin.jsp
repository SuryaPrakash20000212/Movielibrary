<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <center><h2><u>WELCOME TO USER LOGIN PAGE</u></h2></center>
    <BR></BR>
    <form action="userlogin" method="post">
    <center>
    
        <table>
            <tr>
                <td><label for="mail">EMAIL : </label></td>
                <td> <input type="email"  name="mail" placeholder="Enter the mail"> </td>
            </tr> <br>
            <tr>
                <td><label for="pass">PASSWORD :</label></td>
                <td> <input type="password" name="pass" placeholder="Enter the password"></td>
            </tr>
           
        </table> <br>
        <tr>
            <button type="submit"> <a href="" style="text-decoration: none; color: black;">SUBMIT</a></button>
        </tr>
</center>
    
    
    </form>
    
    <%String msg=(String)request.getAttribute("message"); %>
    <%if (msg!=null) { %>
    <%= msg %>
    <% } %>
    
</body>
</html>