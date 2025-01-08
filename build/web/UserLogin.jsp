<%-- 
    Document   : UserLogin
    Created on : Nov 28, 2023, 6:35:56 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp"%>
<!DOCTYPE HTML>
<html lang="en">
    <head>
        <title>Caprice</title>
        <meta charset="UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png">
        <link rel="stylesheet" type="text/css" href="style/css/style.css" media="all">
        <link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <!--[if IE 7]>
        <link rel="stylesheet" type="text/css" href="style/css/ie7.css" media="all">
        <![endif]-->
        <!--[if IE 8]>
        <link rel="stylesheet" type="text/css" href="style/css/ie8.css" media="all">
        <![endif]-->
        <!--[if IE 9]>
        <link rel="stylesheet" type="text/css" href="style/css/ie9.css" media="all">
        <![endif]-->
        <script src="style/js/jquery-1.6.4.min.js"></script>
        <script src="style/js/ddsmoothmenu.js"></script>
        <script src="style/js/jquery.jcarousel.js"></script>
        <script src="style/js/jquery.prettyPhoto.js"></script>
        <script src="style/js/carousel.js"></script>
        <script src="style/js/jquery.flexslider-min.js"></script>
        <script src="style/js/jquery.masonry.min.js"></script>
        <script src="style/js/jquery.slickforms.js"></script>
    </head>
    <body>
        <div id="wrapper">
            <div id="sidebar">
                <div id="logo">
                    <img src="style/images/logo.png" alt="">
                </div>
                <div id="menu" class="menu-v">
                    <ul>
                        <li><a href="index.jsp" class="active">Home</a></li>
                        <li><a href="AdminLogin.jsp">Admin</a></li>
                        <li><a href="UserLogin.jsp">User</a></li>
                        <li><a href="About.html">About Us</a></li>
                        <li><a href="Contact.html">Contact Us</a></li>
                    </ul>
                </div>
                <div class="sidebox">
                    <ul class="share">
                        <li><a href="#"><img src="style/images/icon-rss.png" alt=""></a></li>
                        <li><a href="#"><img src="style/images/icon-facebook.png" alt=""></a></li>
                        <li><a href="#"><img src="style/images/icon-twitter.png" alt=""></a></li>
                        <li><a href="#"><img src="style/images/icon-dribbble.png" alt=""></a></li>
                        <li><a href="#"><img src="style/images/icon-linkedin.png" alt=""></a></li>
                    </ul>
                </div>
                <div class="sidebox" style="color:#FFF;">
                    <p style="margin-bottom:5px;">Copyright &copy; www.sr.com</p>
                    <p>Design By: <a href="http://elemisfreebies.com">AMS</a></p>
                </div>
            </div>
            <div id="content">
                <h1 class="title">Tag Based Image Search</h1>
                <div class="line"></div>
                <div class="intro" style="text-align: justify;">
                    We propose a social re-ranking system for  tag-based  image  retrieval  with  the  consideration  of  image’s relevance and diversity. First we sort these  images  by  inter-user  re-ranking.  Users  that  have  higher contribution to the given query rank higher. Then we sequentially implement intra-user  re-ranking on the ranked user’s image set, and only the  most  relevant image  from each user’s image set  is selected.
                </div>
                <div id="slider">
                    <div class="">                        
                    </div>
                </div>
                <h3>User Login</h3>
                <p>
                <form name="form1" action="UserLogin.jsp" method="POST">
                    <table>
                        <tr>
                            <td align="right">Enter Username</td>
                            <td><input type="text" name="t1" value="" /></td>
                        </tr>
                        <tr>
                            <td align="right">Enter Password</td>
                            <td><input type="password" name="t2" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="s1" value="Login" />
                                <input type="reset" name="s2" value="Clear" />
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>If New?<a href="UserRegistration.jsp">Click Here</a></td>
                        </tr>
                    </table>
                </form>
                <%!     
                    ResultSet rs;
                %>
                <%
                    if (request.getParameter("t1") != null) {
                        String uid = request.getParameter("t1");
                        String pwd = request.getParameter("t2");

                        ps = con.prepareStatement("select * from UserRegistration where userid=? and password=?");
                        ps.setString(1, uid);
                        ps.setString(2, pwd);
                        rs = ps.executeQuery();
                        if (rs.next()) {
                            session.setAttribute("userid", uid);
                            response.sendRedirect("UserHome.jsp");
                            //response.sendRedirect("UploadImage.jsp");
                        } else {
                            out.println("<span style='color:red;'>Invalid Username/Password.</span>");
                        }
                    }
                %>
            </p>

                <div class="clear"></div>
                <br>
                <div id="footer">
                    <div class="footer-box one-third">
                        <h3>Popular Posts</h3>
                        <ul class="popular-posts">
                            <li> <a href="#"><img src="style/images/art/s1.jpg" alt=""></a>
                                <h5><a href="#">Dolor Commodo Consectetur</a></h5>
                                <span>26 Aug 2011 | <a href="#">21 Comments</a></span> </li>
                        </ul>
                    </div>
                    <div class="footer-box one-third">
                        <h3>Contact</h3>
                        <br>
                        <span class="lite1">Fax:</span> +555 797 534 01<br>
                        <span class="lite1">Tel:</span> +555 636 646 62<br>
                        <span class="lite1">E-mail:</span> name@domain.com</p>
                    </div>
                    <div class="footer-box one-third last">
                        <h3>About</h3>
                        <p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </body>
</html>
