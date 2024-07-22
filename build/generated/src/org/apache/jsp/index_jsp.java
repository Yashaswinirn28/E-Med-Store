package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/headfile.jsp");
    _jspx_dependants.add("/footerfile.jsp");
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Blood Bank</title>\n");
      out.write("        <style>\n");
      out.write("            #cc{\n");
      out.write("                position: relative;\n");
      out.write("                bottom: 600px;\n");
      out.write("            }\n");
      out.write("            #aa{\n");
      out.write("                position: relative;\n");
      out.write("                bottom: 700px;\n");
      out.write("                font-size: 60px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"images/back2.bmp\">\n");
      out.write("        <BR><BR>\n");
      out.write("    <center>\n");
      out.write("<!--        <table border=\"0\" width=\"100%\" align=\"center\">\n");
      out.write("               <tr><td width=\"40%\" >\n");
      out.write("        <h1>Welcome to our Site</h1>\n");
      out.write("        <h1></h1>\n");
      out.write("        <h4><A href=\"mainpage.jsp\"> Click here to continue...... </a></h4>\n");
      out.write("                </td>\n");
      out.write("                <td width=\"60%\" align=\"right\"> <img src=\"https://media.istockphoto.com/id/1348823400/photo/pharmacist-using-mobile-smart-phone-for-search-bar-on-display-in-pharmacy-drugstore-shelves.webp?b=1&s=612x612&w=0&k=20&c=-m-3Li5qhiNgul7PQ0KkgD7ciDI1Tq4eub0CvIUmiQU=\" style=\"width: 100%; height: 100%;\"></td> </tr>\n");
      out.write("        </table>-->\n");
      out.write("        <div id=\"bb\">\n");
      out.write("            <img src=\"https://media.istockphoto.com/id/1348823400/photo/pharmacist-using-mobile-smart-phone-for-search-bar-on-display-in-pharmacy-drugstore-shelves.webp?b=1&s=612x612&w=0&k=20&c=-m-3Li5qhiNgul7PQ0KkgD7ciDI1Tq4eub0CvIUmiQU=\"style=\"width: 100%; height: 100%;\"> \n");
      out.write("            <div id=\"aa\">\n");
      out.write("                <b>Welcome to E-Med Store </b>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"cc\">\n");
      out.write("                <b><a href=\"mainpage.jsp\"> Click here to continue...... </a></b>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>\n");
      out.write("        <img src=\"images/Logo2.bmp\">\n");
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
