package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class usrsignup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>LOG IN PAGE</title>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("    <body bgcolor=\"yellow\">\n");
      out.write("        <font color=\"red\">\n");
      out.write("        \n");
      out.write("    <center> <h1>USER SIGNUP</h1>\n");
      out.write("      \n");
      out.write("        \n");
      out.write("        <form name=\"demo\" method=\"post\" action=\"addsignup.jsp\">\n");
      out.write("             \n");
      out.write("            <br>   username             :<input type=\"text\" name=\"username\"></br>\n");
      out.write("            <br>   password             :<input type=\"password\" name=\"password\"></br>\n");
      out.write("            <br>re-enter password    :<input type=\"password\" name=\"password1\"></br>\n");
      out.write("            <br>adhar number         :<input type=\"text\" name=\"adhar\"></br>\n");
      out.write("            <br>phone number         :<input type=\"text\" name=\"phone\"></br>\n");
      out.write("            <br>pin         : <select name='pi'>\n");
      out.write("     ");

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
       
       
       
      
      out.write(" \n");
      out.write("       \n");
      out.write("          \n");
      out.write("        <option value=\"");
      out.print(a);
      out.write('"');
      out.write('>');
      out.print(a);
      out.write("</option>\n");
      out.write("     ");
 
     }
String b=null;
    
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("             </select>\n");
      out.write("        \n");
      out.write("            <br>state       : <br>state         : <select name='st'>\n");
      out.write("               ");
 
                   String query1="select sid from state;";
     
      Statement pst1 = con.createStatement();
     ResultSet rs1 = pst1.executeQuery(query1);
     while(rs1.next())
     {
       a=rs1.getString("sid");
       
       
       
      
       
      out.write("\n");
      out.write("          \n");
      out.write("        <option value=\"");
      out.print(a);
      out.write('"');
      out.write('>');
      out.print(a);
      out.write("</option>\n");
      out.write("     ");
 
     }
    
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("             </select>\n");
      out.write("        \n");
      out.write("            <input type=\"submit\" onclick=\"alert(user added)\"  value=\"signup\"></button>\n");
      out.write("                \n");
      out.write("\n");
      out.write("    \n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("                    \n");
      out.write("</html>\n");
      out.write("           \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
