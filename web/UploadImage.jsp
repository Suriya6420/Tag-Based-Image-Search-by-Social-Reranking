<%-- 
    Document   : UploadImage
    Created on : Nov 28, 2023, 7:00:28 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
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
                        <li><a href="UploadImage.jsp">Upload Image</a></li>
                        <li><a href="ImageSearch.jsp">Search Image</a></li>
                        <li><a href="MyImages.jsp">My Image</a></li>
                        <li><a href="MyAccountInfo.jsp">My Account</a></li>
                        <li><a href="Signout.jsp">Sign out</a></li>
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
                <h3>Uploading Images</h3>
                <p>
                    <%!   
                        ResultSet rs;
                        int imgid;
                    %>
                    <%
                        ps = con.prepareStatement("select ifnull(max(imageid),0)+1 from uploadedimages");
                        rs = ps.executeQuery();
                        if (rs.next()) {
                            imgid = rs.getInt(1);
                        }
                        rs.close();
                        ps.close();
                    %>
                <form name="form1" action="UploadImageProcess.jsp" method="POST" enctype="multipart/form-data">
                    <table cellpadding="6">
                        <tr>
                            <td align="right">Image Id</td>
                            <td><input type="text" name="imageid" value="<%=imgid%>" /></td>
                        </tr>
                        <tr>
                            <td align="right">Username</td>
                            <td><input type="text" name="username" value="${sessionScope.userid}" /></td>
                        </tr>
                        <tr>
                            <td align="right">Image</td>
                            <td><input type="file" name="imagename" value="" /></td>
                        </tr>
                        <tr>
                            <td align="right">Tag1</td>
                            <td><input type="text" name="tag1" value="" /></td>
                        </tr>
                        <tr>
                            <td align="right">Tag2</td>
                            <td><input type="text" name="tag2" value="" /></td>
                        </tr>
                        <tr>
                            <td align="right">Tag3</td>
                            <td><input type="text" name="tag3" value="" /></td>
                        </tr>
                        <tr>
                            <td align="right">Tag4</td>
                            <td><input type="text" name="tag4" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" name="s1" value="Upload" /></td>
                        </tr>
                    </table>
                </form>
                ${param.msg}
                </p>


                <div class="clear"></div>

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
















<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    </body>
</html>
