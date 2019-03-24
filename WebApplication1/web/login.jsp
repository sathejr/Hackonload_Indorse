<%-- 
    Document   : login
    Created on : Oct 24, 2018, 10:12:52 PM
    Author     : Shobith Yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOG IN PAGE</title>
        <link href="WEB-INF/stylesheet.css" re="stylesheet" type="css/text">
    </head>
    <body>
    <body bgcolor="yellow">
        <font color="red">
        
    <center> <h1>USER LOGIN</h1>
        <a><a href="http://localhost:8080/WebApplication1/adminlogin.jsp">admin login</a>
            <a><a href="http://localhost:8080/WebApplication1/usrsignup.jsp">user sign up</a>    
        <form name="demo" method="post" action="usrcomp.jsp">
            <br>username:<input type="text" name="username"></br>
            <br>password:<input type="password" name="password"></br>
            </br><input type="submit" value="login"></br>
        </form>
    </center>
    </body>
</html>
