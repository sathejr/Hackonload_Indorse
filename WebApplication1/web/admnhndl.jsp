<%-- 
    Document   : admnhndl
    Created on : 24 Mar, 2019, 9:43:34 AM
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
    <center><h1>ADMIN PANEL</h1>
    <p>-----Unsolved problems-----</p>
        <form action='error.jsp' method="get">
             <%String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
    int a=0;
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="select pro_id from problem where status='not hanadled';";
     
     
     ResultSet rs = pst.executeQuery(query);
     %>
      select problem id:<select name='comp'>
     <%
     while(rs.next())
     {
       a=rs.getInt("pro_id");
       
       
       }
      %> 
       
          
        <option value="<%=a%>"><%=a%></option>
      
     
    

        
             </select>
        
        <input type='submit' name='sel' value="submit"></input>
        <br></br>
        <br></br
        <p>---insert new pin and city---</p>
        <br><a><a href="http://localhost:8080/WebApplication1/readpin.jsp"><b>add values;</b></a></br>
        
        <p>---insert new state id and name---</p>
        <br><a><a href="http://localhost:8080/WebApplication1/readstate.jsp"><b>add values;</b></a></br>
        
    </body>
</html>
