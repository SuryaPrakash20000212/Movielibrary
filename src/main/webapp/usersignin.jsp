<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="saveuser" method="post">
   
    <center><h1><u>HEY USER PLEASE ENTER YOUR TO DATA'S</u></h1></center>

     <table>
            <tbody>
    <tr>
        <td><label for="userid">USER ID :</label></td>
        <td> <input type="number" name="userid" id="id" pattern="[0-9]{3}" placeholder="Enter the ID " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="username">USER NAME :</label></td>
        <td> <input type="text" name="username" id="id" placeholder="Enter the Name " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="usercontact">USER CONTACT :</label></td>
        <td> <input type="number" name="usercontact" id="id" pattern="[0-9]{10}" placeholder="Enter the Contact  " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="mail">USER MAIL:</label></td>
        <td> <input type="email" name="usermail" id="id" pattern="[0-9]{3}" placeholder="Enter the Mail " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="pass">USER PASSWORD:</label></td>
        <td> <input type="password" name="userpassword" id="id" pattern="[0-9]{3}" placeholder="Enter the password  " autofocus required ></td>
    </tr>
        </tbody>
    </table>
    <br>

    <center><input type="checkbox" required="required"> Have you accept all the terms and condition.</center><br><br>
    <center><button type="submit"> <a href="" style="text-decoration: none; color: black;">SUBMIT</a></button> 
    
    </form>

</body>
</html>