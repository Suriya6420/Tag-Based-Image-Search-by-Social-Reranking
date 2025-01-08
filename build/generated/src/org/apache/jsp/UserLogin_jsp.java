package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class UserLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection con;
            PreparedStatement ps;
        

            ResultSet rs;
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/db.jsp");
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
      out.write("        ");
      out.write("\n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tagbasedimagesearch","root","");
        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"form1\" action=\"UserLogin.jsp\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Username</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t1\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Enter Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"t2\" value=\"\" /></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\" name=\"s1\" value=\"Login\" />\n");
      out.write("                        <input type=\"reset\" name=\"s2\" value=\"Clear\" />\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            if(request.getParameter("t1")!=null){
                String uid=request.getParameter("t1");
                String pwd=request.getParameter("t2");
                
                ps=con.prepareStatement("select * from UserRegistration where userid=? and password=?");
                ps.setString(1, uid);
                ps.setString(2, pwd);
                rs=ps.executeQuery();
                if(rs.next()){
                    session.setAttribute("userid", uid);
                    //response.sendRedirect("UserHome.jsp");
                    response.sendRedirect("UploadImage.jsp");
                }
                else{
                    out.println("Invalid Username/Password.");
                }
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
