<%-- 
    Document   : error
    Created on : 24 Mar, 2019, 10:06:15 AM
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
       <% 
           String s=request.getParameter("comp");
           out.println(s);
           
           %>
    </body>
</html>
