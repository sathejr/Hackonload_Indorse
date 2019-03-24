<%-- 
    Document   : pin.jsp
    Created on : 24 Mar, 2019, 2:19:29 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       String a=request.getParameter("sid");
       String b=request.getParameter("sname");
       if(a=="" || b=="")
       {
           response.sendRedirect("readstate.jsp");
       }
       String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
   
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="insert into state values ('"+b+"','"+a+"');";
     
     
      pst.executeQuery(query);
      response.sendRedirect("admnhndl.jsp");
       %>
    </body>
</html>
