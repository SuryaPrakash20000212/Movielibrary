<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="saveAdmin" method="post">

<center><h1><u>HEY ADMIN PLEASE ENTER YOUR TO DATA'S</u></h1></center>

     <table>
            <tbody>
    <tr>
        <td><label for="Adminid">ADMIN ID :</label></td>
        <td> <input type="number" name="adminid" id="id" pattern="[0-9]{3}" placeholder="Enter the ID " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="Adminname">ADMIN NAME :</label></td>
        <td> <input type="text" name="adminname" id="name" placeholder="Enter the Name " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="admincontact">ADMIN CONTACT :</label></td>
        <td> <input type="number" name="admincontact" id="contact" pattern="[0-9]{10}" placeholder="Enter the Contact  " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="mail">ADMIN MAIL:</label></td>
        <td> <input type="email" name="adminmail" id="mail"  placeholder="Enter the Mail " autofocus required ></td>
    </tr>
    <tr>
        <td><label for="pass">ADMIN PASSWORD:</label></td>
        <td> <input type="password" name="adminpassword" id="pass"  placeholder="Enter the password  " autofocus required ></td>
    </tr>
        </tbody>
    </table>
    <br>

    <input type="submit">

</form>    
</body>
</html>