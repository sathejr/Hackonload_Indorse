<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOG IN PAGE</title>
        
    </head>
    <body>

    <body bgcolor="yellow">
        <font color="red">
        
    <center> <h1>USER SIGNUP</h1>
      
        
        <form name="demo" method="post" action="addsignup.jsp">
             
            <br>   username             :<input type="text" name="username"></br>
            <br>   password             :<input type="password" name="password"></br>
            <br>re-enter password    :<input type="password" name="password1"></br>
            <br>adhar number         :<input type="text" name="adhar"></br>
            <br>phone number         :<input type="text" name="phone"></br>
            <br>pin         :<input type="text" name="pin"></br>
            <br>state       :<input type="text" name="state"></br>
            <input type="submit" onclick="alert(user added)"  value="signup"></button>
                

    
        </form>
    </center>
    </body>
                    
</html>
           
