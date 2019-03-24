package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class error_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"admin3.jsp\" method=\"get\">\n");
      out.write("       ");
 
           String s=request.getParameter("comp");
           
            String url="jdbc:mysql://localhost:7777/munciple";
     String user="root";
     String pass="root";
      int z=0;String a=null,b=null,c=null,d=null,e=null;
     Class.forName("org.mariadb.jdbc.Driver");
     Connection con=DriverManager.getConnection(url,user,pass);
     Statement pst = con.createStatement();
     String query="select * from problem where pro_id='"+s+"';";
     String q2="select p.pin from pin p,problem where  city=post_name and pro_id='"+s+"';";
     
     ResultSet rs = pst.executeQuery(query);
    
      
     
     while(rs.next())
     {
         z=rs.getInt("pro_id");
          out.println(z);
         a=rs.getString("type");
         b=rs.getString("city");
         c=rs.getString("issue");
         d=rs.getString("raised_by");
     }
     
 ResultSet rs1 = pst.executeQuery(q2);
 
if(rs1.next())
{
 e=rs1.getString("pin");
}
           
      out.write("\n");
      out.write("             <br>PID           :<input type=\"text\" value=\"");
      out.print(z);
      out.write("\" name=\"pi\"></br>\n");
      out.write("            <br>PIN           :<input type=\"text\" value=\"");
      out.print(e);
      out.write("\" name=\"pi\"></br>\n");
      out.write("            <br>CITY          :<input type=\"text\" value=\"");
      out.print(b);
      out.write("\" name=\"cit\"></br>\n");
      out.write("            <br>TYPE          :<input type=\"text\"  value=\"");
      out.print(a);
      out.write("\"name=\"typ\"></br>\n");
      out.write("            <br>ISSUE         :<input type=\"text\" value=\"");
      out.print(c);
      out.write("\" name=\"issu\"></br>\n");
      out.write("            <br> RAISED BY:<input type=\"text\" value=\"");
      out.print(d);
      out.write("\" name=\"rais\"></br>\n");
      out.write("            <br>Status    :<select name=\"com\">\n");
      out.write("                <option value=\"Not Handled\">Not Handled</option>\n");
      out.write("                <option value=\"Handled\">Handled</option>\n");
      out.write("            </select>\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" value='Update' >\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
