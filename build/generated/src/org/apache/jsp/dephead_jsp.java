package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.info.model.User;

public final class dephead_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Department Head</title>\n");
      out.write("         <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("        <style>\n");
      out.write("               #notification {\n");
      out.write("    position:fixed;\n");
      out.write("        top:0px; /* Set to 0 or wherever */\n");
      out.write("        width:30%; /* set to 100% if space is available */\n");
      out.write("        z-index:105;\n");
      out.write("        margin-left: 200px; \n");
      out.write("        text-align:center;\n");
      out.write("        font-weight:normal;\n");
      out.write("        font-size:14px;\n");
      out.write("        font-weight:bold;\n");
      out.write("        color:white;\n");
      out.write("        background:#ddd;\n");
      out.write("        padding:5px;\n");
      out.write(" }\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        <script>\n");
      out.write("            function notify123() {\n");
      out.write("\n");
      out.write("\n");
      out.write("               $(\"#notification\").fadeIn(1000);\n");
      out.write("               $(\"#notification\").delay(2000);\n");
      out.write("               $(\"#notification\").fadeOut(1000);\n");
      out.write("    \n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <a href=\"logout.jsp\" >Logout</a>\n");
      out.write("            ");

                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome"+verifiedUser.getUserName());
            
      out.write("\n");
      out.write("        <form action=\"depnot.jsp\">       \n");
      out.write("        <button onclick=\"notify123()\">Request</button>\n");
      out.write("        </form>\n");
      out.write("    \n");
      out.write("            <h1>Department Head</h1>\n");
      out.write("        <a href=\"ProblemList\">View Request List</a>\n");
      out.write("         ");

            } else{
                response.sendRedirect("login.jsp");
                }


        
      out.write("\n");
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
