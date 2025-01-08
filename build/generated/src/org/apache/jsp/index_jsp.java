package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Caprice</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"style/images/favicon.png\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style/css/style.css\" media=\"all\">\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>\n");
      out.write("        <!--[if IE 7]>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style/css/ie7.css\" media=\"all\">\n");
      out.write("        <![endif]-->\n");
      out.write("        <!--[if IE 8]>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style/css/ie8.css\" media=\"all\">\n");
      out.write("        <![endif]-->\n");
      out.write("        <!--[if IE 9]>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style/css/ie9.css\" media=\"all\">\n");
      out.write("        <![endif]-->\n");
      out.write("        <script src=\"style/js/jquery-1.6.4.min.js\"></script>\n");
      out.write("        <script src=\"style/js/ddsmoothmenu.js\"></script>\n");
      out.write("        <script src=\"style/js/jquery.jcarousel.js\"></script>\n");
      out.write("        <script src=\"style/js/jquery.prettyPhoto.js\"></script>\n");
      out.write("        <script src=\"style/js/carousel.js\"></script>\n");
      out.write("        <script src=\"style/js/jquery.flexslider-min.js\"></script>\n");
      out.write("        <script src=\"style/js/jquery.masonry.min.js\"></script>\n");
      out.write("        <script src=\"style/js/jquery.slickforms.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <div id=\"sidebar\">\n");
      out.write("                <div id=\"logo\">\n");
      out.write("                    <img src=\"style/images/logo.png\" alt=\"\">\n");
      out.write("                </div>\n");
      out.write("                <div id=\"menu\" class=\"menu-v\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"index.jsp\" class=\"active\">Home</a></li>\n");
      out.write("                        <li><a href=\"AdminLogin.jsp\">Admin</a></li>\n");
      out.write("                        <li><a href=\"UserLogin.jsp\">User</a></li>\n");
      out.write("                        <li><a href=\"About.html\">About Us</a></li>\n");
      out.write("                        <li><a href=\"Contact.html\">Contact Us</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"sidebox\">\n");
      out.write("                    <ul class=\"share\">\n");
      out.write("                        <li><a href=\"#\"><img src=\"style/images/icon-rss.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"style/images/icon-facebook.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"style/images/icon-twitter.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"style/images/icon-dribbble.png\" alt=\"\"></a></li>\n");
      out.write("                        <li><a href=\"#\"><img src=\"style/images/icon-linkedin.png\" alt=\"\"></a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"sidebox\" style=\"color:#FFF;\">\n");
      out.write("                    <p style=\"margin-bottom:5px;\">Copyright &copy; www.sr.com</p>\n");
      out.write("                    <p>Design By: <a href=\"http://elemisfreebies.com\">AMS</a></p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div id=\"content\">\n");
      out.write("                <h1 class=\"title\">Tag Based Image Search</h1>\n");
      out.write("                <div class=\"line\"></div>\n");
      out.write("                <div class=\"intro\" style=\"text-align: justify;\">\n");
      out.write("                    We propose a social re-ranking system for  tag-based  image  retrieval  with  the  consideration  of  image’s relevance and diversity. First we sort these  images  by  inter-user  re-ranking.  Users  that  have  higher contribution to the given query rank higher. Then we sequentially implement intra-user  re-ranking on the ranked user’s image set, and only the  most  relevant image  from each user’s image set  is selected.\n");
      out.write("                </div>\n");
      out.write("                <div id=\"slider\">\n");
      out.write("                    <div class=\"\">                        \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <h3>Home</h3>\n");
      out.write("                <p>\n");
      out.write("                    <img src=\"style/images/one.png\" style=\"width: 694px; height: 350px;\"/>\n");
      out.write("                </p>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"clear\"></div>\n");
      out.write("\n");
      out.write("                <div id=\"footer\">\n");
      out.write("                    <div class=\"footer-box one-third\">\n");
      out.write("                        <h3>Popular Posts</h3>\n");
      out.write("                        <ul class=\"popular-posts\">\n");
      out.write("                            <li> <a href=\"#\"><img src=\"style/images/art/s1.jpg\" alt=\"\"></a>\n");
      out.write("                                <h5><a href=\"#\">Dolor Commodo Consectetur</a></h5>\n");
      out.write("                                <span>26 Aug 2011 | <a href=\"#\">21 Comments</a></span> </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-box one-third\">\n");
      out.write("                        <h3>Contact</h3>\n");
      out.write("                            <br>\n");
      out.write("                            <span class=\"lite1\">Fax:</span> +555 797 534 01<br>\n");
      out.write("                            <span class=\"lite1\">Tel:</span> +555 636 646 62<br>\n");
      out.write("                            <span class=\"lite1\">E-mail:</span> name@domain.com</p>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"footer-box one-third last\">\n");
      out.write("                        <h3>About</h3>\n");
      out.write("                        <p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum.</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"clear\"></div>\n");
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
