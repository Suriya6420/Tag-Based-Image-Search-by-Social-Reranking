package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class ImageSearch_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            Connection con;
            PreparedStatement ps;
        
    
            ResultSet rs;
            String word;
            TreeSet<String> t1;
            TreeSet<String> t2;
            TreeSet<String> t3;
            ArrayList<String> a1, a2, a3, a4;
        
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
      out.write("        <form name=\"form1\" action=\"ImageSearch.jsp\" method=\"POST\">\n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Search Image</td>\n");
      out.write("                    <td><input type=\"text\" name=\"t1\"/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td></td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"submit\" name=\"s1\" value=\"Search\"/>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            t1 = new TreeSet<String>();
            t2 = new TreeSet<String>();
            t3 = new TreeSet<String>();
            a1 = new ArrayList<String>();
            a2 = new ArrayList<String>();
            a3 = new ArrayList<String>();
            a4 = new ArrayList<String>();

            word = request.getParameter("t1");
            ps = con.prepareStatement("select tag1,tag2,tag3,tag4 from UploadedImages where tag1=? or tag2=? or tag3=? or tag4=?");
            ps.setString(1, word);
            ps.setString(2, word);
            ps.setString(3, word);
            ps.setString(4, word);
            rs = ps.executeQuery();
            while (rs.next()) {
                t1.add(rs.getString(1));
                t1.add(rs.getString(2));
                t1.add(rs.getString(3));
                t1.add(rs.getString(4));
            }
            rs.close();
            ps.close();

            for (String s1 : t1) {
                ps = con.prepareStatement("select tag1,tag2,tag3,tag4 from UploadedImages where tag1=? or tag2=? or tag3=? or tag4=?");
                ps.setString(1, s1);
                ps.setString(2, s1);
                ps.setString(3, s1);
                ps.setString(4, s1);
                rs = ps.executeQuery();
                while (rs.next()) {
                    t2.add(rs.getString(1));
                    t2.add(rs.getString(2));
                    t2.add(rs.getString(3));
                    t2.add(rs.getString(4));
                }
                rs.close();
                ps.close();
            }

            for (String s1 : t2) {
                //out.println(s1 + "<br>");
                ps = con.prepareStatement("select imageName from UploadedImages where tag1=? or tag2=? or tag3=? or tag4=?");
                ps.setString(1, s1);
                ps.setString(2, s1);
                ps.setString(3, s1);
                ps.setString(4, s1);
                rs = ps.executeQuery();
                while (rs.next()) {
                    t3.add(rs.getString(1));
                }
                rs.close();
                ps.close();
            }

            out.println("<br><br>Keyword Matching<br>-------------------------<br>");
            for (String s1 : t3) {
                out.println(s1 + "<br>");
            }

            ps = con.prepareStatement("select imagename from UploadedImages where tag1=? or tag2=? or tag3=? or tag4=? order by totalviews desc");
            ps.setString(1, word);
            ps.setString(2, word);
            ps.setString(3, word);
            ps.setString(4, word);
            rs = ps.executeQuery();
            while (rs.next()) {
                a1.add(rs.getString(1));
            }
            rs.close();
            ps.close();


            for (String s1 : t3) {
                if (!a1.contains(s1)) {
                    a2.add(s1);
                }
            }

            String query = "select imageName from UploadedImages where ";
            for (String s1 : a2) {
                query += "imagename='" + s1 + "' or ";
            }
            query=query.substring(0,query.lastIndexOf(" or "));
            //out.println("<br>"+query);
            
            ps = con.prepareStatement(query + " order by totalviews desc");
            rs = ps.executeQuery();
            while (rs.next()) {
                a3.add(rs.getString(1));
            }
            rs.close();
            ps.close();

            a4.addAll(a1);
            

            a1.addAll(a3);
            out.println("<br><br>Inter-Reranking<br>-------------------------<br>");
            for (String s1 : a1) {
                out.println(s1 + "<br>");
            }
            
            out.println("<br><br>Intra-Reranking<br>-------------------------<br>");
            for (String s1 : a4) {
                out.println(s1 + "<br>");
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
