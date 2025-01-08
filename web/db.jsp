<%-- 
    Document   : db
    Created on : Nov 28, 2023, 5:38:51 PM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection con;
            PreparedStatement ps;
        %>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tagbasedimagesearch","root","");
        %>
    </body>
</html>
