<%-- 
    Document   : ImageSearch
    Created on : Nov 29, 2023, 7:26:05 PM
    Author     : Administrator
--%>

<%@page import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
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
                <h3>Image Searching</h3>
                <p>
                <form name="form1" action="ImageSearch.jsp" method="POST">
                    <table>
                        <tr>
                            <td>Search Image</td>
                            <td><input type="text" name="t1"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="s1" value="Search"/>
                            </td>
                        </tr>
                    </table>
                </form>
                <%!            ResultSet rs;
                    String word, st;
                    TreeSet<String> t1;
                    TreeSet<String> t2;
                    TreeSet<String> t3;
                    ArrayList<String> a1, a2, a3, a4;
                    String[] words;
                    boolean flag;
                %>
                <%
                    flag = false;
                    if (request.getParameter("t1") != null) {
                        t1 = new TreeSet<String>();
                        t2 = new TreeSet<String>();
                        t3 = new TreeSet<String>();
                        a1 = new ArrayList<String>();
                        a2 = new ArrayList<String>();
                        a3 = new ArrayList<String>();
                        a4 = new ArrayList<String>();

                        st = request.getParameter("t1");
                        words = st.split(" ");


                        for (String word : words) {
                            ps = con.prepareStatement("select tag1,tag2,tag3,tag4 from UploadedImages where tag1=? or tag2=? or tag3=? or tag4=?");
                            ps.setString(1, word);
                            ps.setString(2, word);
                            ps.setString(3, word);
                            ps.setString(4, word);
                            rs = ps.executeQuery();
                            if (rs.next()) {
                                flag = true;
                                rs.close();
                                ps.close();
                            }
                        }
                        if (!flag) {
                            out.println("No Images Found for the Given Word.");
                            return;
                        }

                        for (String word : words) {
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
                        }

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




                        /*
                         i=0;
                         Object []t3ArrayObject=t3.toArray();
                         String []t3Array=new String[t3.size()];
                         for(Object o:t3ArrayObject){
                         t3Array[i]=o.toString();
                         i++;
                         }                    
                
                         i=0;
                         out.println("<br><br>Keyword Matching<br>-------------------------<br>");
                         out.println("<table>");
                         while(i<t3.size()){
                         out.println("<tr>");
                         for (int j=i;j<t3Array.length;j++) {
                         out.println("<td><a href='Download.jsp?imagename=" + t3Array[j] + "'><img src='UploadedImages/" + t3Array[j] + "' style='height:50px;width:50px;'/></a></td>");
                         i++;
                         if(i%3==0)
                         break;
                         }
                         out.println("</tr>");
                         }
                         out.println("</table>");
                         */



                        out.println("<div style='margin-left:10px;'>");
                        out.println("<br><br>Keyword Matching<br>-------------------------<br>");
                        for (String s1 : t3) {
                            out.println("<a href='Download.jsp?imagename=" + s1 + "'><img src='UploadedImages/" + s1 + "' style='height:50px;width:50px;'/></a><br>");
                        }
                        out.println("</div>");

                        for (String word : words) {
                            ps = con.prepareStatement("select imagename from UploadedImages where tag1=? or tag2=? or tag3=? or tag4=? order by totalviews desc");
                            ps.setString(1, word);
                            ps.setString(2, word);
                            ps.setString(3, word);
                            ps.setString(4, word);
                            rs = ps.executeQuery();
                            while (rs.next()) {
                                String temp = rs.getString(1);
                                if (!a1.contains(temp)) {
                                    a1.add(temp);
                                }
                            }
                            rs.close();
                            ps.close();
                        }
                        //out.println(a1.size()+"<br>");

                        for (String s1 : t3) {
                            if (!a1.contains(s1)) {
                                a2.add(s1);
                            }
                        }

                        String query = "select imageName from UploadedImages where ";
                        for (String s1 : t3) {
                            query += "imagename='" + s1 + "' or ";
                        }
                        query = query.substring(0, query.lastIndexOf(" or "));
                        //out.println("<br>"+query);

                        ps = con.prepareStatement(query + " order by totalviews desc");
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            a3.add(rs.getString(1));
                        }
                        rs.close();
                        ps.close();

                        a4.addAll(a1);


                        //a1.addAll(a3);

                        if(a3.size()>=5)
                            out.println("<div style='margin-left:220px;margin-top:-360px;'>");
                        else
                            out.println("<div style='margin-left:220px;margin-top:-240px;'>");
                        
                        out.println("<br><br>Inter-Reranking<br>-------------------------<br>");
                        for (String s1 : a3) {
                            out.println("<a href='Download.jsp?imagename=" + s1 + "'><img src='UploadedImages/" + s1 + "' style='height:50px;width:50px;'/></a><br>");
                        }
                        out.println("</div>");


                        if(a3.size()>=5)
                            out.println("<div style='margin-left:450px;margin-top:-365px;'>");
                        else
                            out.println("<div style='margin-left:450px;margin-top:-230px;'>");
                        
                        out.println("<br><br>Intra-Reranking<br>-------------------------<br>");
                        for (String s1 : a4) {
                            out.println("<a href='Download.jsp?imagename=" + s1 + "'><img src='UploadedImages/" + s1 + "' style='height:50px;width:50px;'/></a><br>");
                        }
                        out.println("</div>");
                    }
                %>
                </p>

                
                <div class="clear"></div>
<br><br><br><br><br>
                <div id="footer" style="margin-left: 0px;">
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
