<%-- 
    Document   : admin3
    Created on : 24 Mar, 2019, 11:19:54 AM
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
            String pid = request.getParameter("pi");
        String pin = request.getParameter("pi");
        String city = request.getParameter("cit");

        String type = request.getParameter("typ");
        
        String issue = request.getParameter("issu");
       
        String raise = request.getParameter("rais");
        String status=request.getParameter("com");
        String action=request.getParameter("act");
        
          String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="update problem set status='"+status+"', action='"+action+"' where pro_id='"+pid+"';";
     pst.executeUpdate(query);
     
        %>
    </body>
</html>
