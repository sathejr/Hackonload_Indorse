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
        if(username=="" || password=="")
        {
            response.sendRedirect("login.jsp");
        }
        session.setAttribute("usr", username);
        
                %>
       
        <input type="text" name="use" value='<%=username%>'/>
        <%
            try
       {
           out.println();
        String url="jdbc:mysql://localhost:7777/munciple";
        String user="root";
        String pass="root";
        Class.forName("org.mariadb.jdbc.Driver");
        Connection con=DriverManager.getConnection(url,user,pass);
        PreparedStatement pst = con.prepareStatement("Select username,password from user where username=? and password=?;");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
       if(rs.next())           
           response.sendRedirect("usrcomp.jsp"); 
        
        else
                       
             response.sendRedirect("error.html");    
                }
        catch(Exception e){
                    System.out.println("Exception occured! "+e.getMessage()+" "+e.getStackTrace());
                }  
    %>
           </body>
           username
    </html>