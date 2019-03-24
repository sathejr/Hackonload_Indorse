<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOG IN PAGE</title>
        
    </head>
    <body>

    <body bgcolor="yellow">
        <font color="red">
        
    <center> <h1>USER SIGNUP</h1>
      
        
        <form name="demo" method="post" action="addsignup.jsp">
             
            <br>   username             :<input type="text" name="username"></br>
            <br>   password             :<input type="password" name="password"></br>
            <br>re-enter password    :<input type="password" name="password1"></br>
            <br>adhar number         :<input type="text" name="adhar"></br>
            <br>phone number         :<input type="text" name="phone"></br>
            <br>pin         : <select name='pi'>
     <%
         String a=null;
         String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
         Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="select pin from pin;";
     
     
     ResultSet rs = pst.executeQuery(query);
     while(rs.next())
     {
       a=rs.getString("pin");
       
       
       
      %> 
       
          
        <option value="<%=a%>"><%=a%></option>
     <% 
     }
String b=null;
    %>

        
             </select>
        
            <br>state       : <br>state         : <select name='st'>
               <% 
                   String query1="select sid from state;";
     
      Statement pst1 = con.createStatement();
     ResultSet rs1 = pst1.executeQuery(query1);
     while(rs1.next())
     {
       a=rs1.getString("sid");
       
       
       
      
       %>
          
        <option value="<%=a%>"><%=a%></option>
     <% 
     }
    %>

        
             </select>
        
            <input type="submit" onclick="alert(user added)"  value="signup"></button>
                

    
        </form>
    </center>
    </body>
                    
</html>
           
