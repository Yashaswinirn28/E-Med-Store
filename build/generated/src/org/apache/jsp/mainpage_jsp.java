package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class mainpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/headfile.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("          <style type=\"text/css\">\n");
      out.write("            label{ margin-right:20px;}\n");
      out.write("            input{ margin-top:5px;}\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Shopping</title>\n");
      out.write("        \n");
      out.write("       \n");
      out.write("    \n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"lightblue\" background=\"images/back2.bmp\" >\n");
      out.write("        <img style=\"-webkit-user-select: none\" src=\"images/Logo1.bmp\">\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  ");

                // using scriptlet
                java.util.Calendar now = new java.util.GregorianCalendar();
                String tod = "";

                if (now.get(now.HOUR_OF_DAY) < 11) {
                    tod = "Morning!";
                } else if (now.get(now.HOUR_OF_DAY) < 15) {
                    tod = "Afternoon!";
                } else {
                    tod = "Evening!";
                }


        
      out.write("\n");
      out.write("\n");
      out.write("        Good ");
      out.print(tod);
      out.write("\n");
      out.write("        \n");
      out.write("        <BR>\n");
      out.write("        <BR>\n");
      out.write(" \n");
      out.write("        <table width=\"80%\" border=\"0\"> \n");
      out.write("        \n");
      out.write("        <tr> <td height=\"50\"> </td> </tr>\n");
      out.write("        <tr> <td height=\"50\"> </td> </tr>\n");
      out.write("        <tr> <td height=\"20\" align=\"center\"> <a href=\"custlogin.jsp\"><img style=\"-webkit-user-select: none\" src=\"images\\custlogin.bmp\"></a> </td> </tr>\n");
      out.write("        <tr> <td height=\"20\" align=\"center\"> <a href=\"customersignup.jsp\"><img style=\"-webkit-user-select: none\" src=\"images\\custsignup.bmp\"></a> </td> </tr>\n");
      out.write("        <tr> <td height=\"50\"> </td> </tr>\n");
      out.write("        <tr> <td height=\"20\" align=\"center\"> <a href=\"adminlogin.jsp\"><img style=\"-webkit-user-select: none\" src=\"images\\adminlogin.bmp\"></a> </td> </tr>\n");
      out.write("        </table>\n");
      out.write("        \n");
      out.write("</html>");
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
