<%@page import ="java.sql.*" %>
<%@page import ="java.io.IOException" %>
<%@page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="java.io.*"%>
    <html> 
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Login Check</title> 
        </head> 
        <body> 
        <%
            try
            {
        String username = request.getParameter("username");
        out.println(username);
        String password = request.getParameter("password");
        out.println(password);
        String pas1 = request.getParameter("password1");
        out.println(pas1);
        String adhar = request.getParameter("adhar");
         out.println(adhar);
        String phone = request.getParameter("phone");
        out.println(phone);
        String pin = request.getParameter("pin");
        out.println(pin);
         String state = request.getParameter("state");
          String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="insert into user values('"+username+"','"+password+"','"+adhar+"','"+phone+"','"+state+"','"+pin+"');";
     ResultSet rs = pst.executeQuery(query);
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
        %>
    