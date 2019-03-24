<%-- 
    Document   : error
    Created on : 24 Mar, 2019, 10:06:15 AM
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
        <form action="admin3.jsp" method="get">
       <% 
           String s=request.getParameter("comp");
           
            String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
      int z=0;String a=null,b=null,c=null,d=null,e=null,f=null;
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="select * from problem where pro_id='"+s+"';";
     String q2="select p.pin from pin p,problem where  city=post_name and pro_id='"+s+"';";
     
     ResultSet rs = pst.executeQuery(query);
    
      
     
     while(rs.next())
     {
         z=rs.getInt("pro_id");
         a=rs.getString("type");
         b=rs.getString("city");
         c=rs.getString("issue");
         d=rs.getString("raised_by");
         f=rs.getString("action");
     }
         if(z==0)
       {
           
          response.sendRedirect("admnhndl.jsp");
       }
     
 ResultSet rs1 = pst.executeQuery(q2);
 
if(rs1.next())
{
 e=rs1.getString("pin");
}
           %>
             <br>PID           :<input type="text" value="<%=z%>" name="pi"></br>
            <br>PIN           :<input type="text" value="<%=e%>" name="pi"></br>
            <br>CITY          :<input type="text" value="<%=b%>" name="cit"></br>
            <br>TYPE          :<input type="text"  value="<%=a%>"name="typ"></br>
            <br>ISSUE         :<input type="text" value="<%=c%>" name="issu"></br>
            <br> RAISED BY:<input type="text" value="<%=d%>" name="rais"></br>
            <br> Action:<input type="text" value="<%=f%>" name="act"></br>
            <br>Status    :<select name="com">
                <option value="Not Handled">Not Handled</option>
                <option value="Handled">Handled</option>
            </select>
            
            <input type="submit" value='Update' >
        </form>
    </body>
</html>
