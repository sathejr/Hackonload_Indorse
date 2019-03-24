<%-- 
    Document   : readpin
    Created on : 24 Mar, 2019, 2:22:29 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            function my()
            {
                alert("values added");
            }
            </script>
      <form action="sinp.jsp" method="post">
          <br>STATE ID:<input type="text" name="sid"></br>
          <br>STATE NAME:<input type="text" name="sname"></br>
          <br><input type="submit" onclick="my()" value="ADD"></br>
        </form>
     
    </body>
</html>
