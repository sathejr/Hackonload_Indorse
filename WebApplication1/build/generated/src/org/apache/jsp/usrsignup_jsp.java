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
      out.write("            <br>pin         :<input type=\"text\" name=\"pin\"></br>\n");
      out.write("            <br>state       :<input type=\"text\" name=\"state\"></br>\n");
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
