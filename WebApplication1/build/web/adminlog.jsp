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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
    
        
        
        
        
       try
       {
        String url="jdbc:mysql://localhost:7777/munciple";
        String user="root";
        String pass="root";
        Class.forName("org.mariadb.jdbc.Driver");
        Connection con=DriverManager.getConnection(url,user,pass);
        out.println("hei");
        PreparedStatement pst = con.prepareStatement("Select username,password from admin where username=? and password=?;");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();    
        out.println(rs);
        if(rs.next())           
           response.sendRedirect("admnhndl.jsp");        
        else
                       
             response.sendRedirect("error.html");    
                }catch(Exception e){
                    System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                }  
    %>
           </body>
    </html>