package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.info.model.User;
import java.sql.*;

public final class check_005fproblem_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');

                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome"+verifiedUser.getUserName());
            
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
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
      out.write("        <body >\n");
    
     Class.forName("com.mysql.jdbc.Driver");
            
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sairam","root","");
           

    
    try{
            
            String qry= "SELECT * FROM problem WHERE status = ? ";
            PreparedStatement pst= con.prepareStatement(qry);
            pst.setInt(1,1);
            ResultSet rs = pst.executeQuery();
                while(rs.next()){
           
      out.write(" \n");
      out.write("           <div id=\"notification\" style=\"display: none;\"> \n");
      out.write("\t\t<div> <font color=\"red\">You have a new request! </font></div>\n");
      out.write("        <form action=\"show_problem.jsp\" method=\"POST\">\n");
      out.write("            <input type=\"hidden\" name=\"pid\" value=\"");
      out.print(rs.getInt("Pid"));
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"pname\" value=\"");
      out.print(rs.getString("Pname"));
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"pdes\" value=\"");
      out.print(rs.getString("Pdescription"));
      out.write("\">\n");
      out.write("            <input type=\"hidden\" name=\"dep\" value=\"");
      out.print(rs.getString("Department"));
      out.write("\">\n");
      out.write("            \n");
      out.write("            <input type=\"submit\" name=\"View problem\" value=\"View Problem\" >\n");
      out.write("        </form> \n");
      out.write("        </div>\n");
      out.write("          <script>notify123();  </script>   \n");
      out.write("           \n");
      out.write("               ");

                  }
            
        }
               
                            
        catch(Exception e){
            
            e.printStackTrace();
        }
        
        finally{
            con.close();
        }
  
      out.write("  \n");
      out.write("    ");

            } else{
                response.sendRedirect("login.jsp");
                }


        
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
