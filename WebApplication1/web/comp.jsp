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
        String pin = request.getParameter("pin");
        out.println(pin);
        String c = request.getParameter("city");
        out.println(c);
        String tp = request.getParameter("type");
        out.println(tp);
        String isu = request.getParameter("issue");
         out.println(isu);
        String rb = request.getParameter("raise");
        out.println(rb);
        
        
          String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="insert into problem (type,city,issue,raised_by) values ('"+tp+"','"+c+"','"+isu+"','"+rb+"');";
     ResultSet rs = pst.executeQuery(query);
     response.sendRedirect("usrcomp.jsp");
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
        %>
        
        
    