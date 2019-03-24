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
        String password = request.getParameter("password");
        String pas1 = request.getParameter("password1");

        String adhar = request.getParameter("adhar");
        
        String phone = request.getParameter("phone");
       
        String pin = request.getParameter("pi");
        
        
      
         String stat = request.getParameter("st");
         if(username=="" || password=="" || pas1=="" || adhar=="" || phone==""|| pin=="" || stat=="")
         {
             response.sendRedirect("usrsignup.jsp");
         }
          String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="insert into user values('"+username+"','"+password+"','"+adhar+"','"+phone+"','"+stat+"','"+pin+"');";
     ResultSet rs = pst.executeQuery(query);
     out.println(pin);
     %>
     <script type="text/javascript">
          function alertname()
          {
              alert("user added")
          }
          
          <%response.sendRedirect("login.jsp");%>  
         
     <%
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            
        %>
    