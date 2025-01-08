<%-- 
    Document   : Download
    Created on : Dec 1, 2023, 4:27:20 PM
    Author     : Administrator
--%>

<%@page import="java.io.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="db.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!       
            ResultSet rs;
            ServletOutputStream sout;
            FileInputStream fin;
            String fileName, filePath;
            int c;
        %>
        <%
            fileName = request.getParameter("imagename");
            
            ps=con.prepareStatement("update UploadedImages set TotalViews=TotalViews+1 where imagename=?");
            ps.setString(1, fileName);
            ps.executeUpdate();
            
            sout = response.getOutputStream();
            filePath = application.getRealPath("UploadedImages") + "\\" + fileName;

            response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
            fin = new FileInputStream(filePath);
            while ((c = fin.read()) != -1) {
                sout.write(c);
            }
            fin.close();
            sout.close();
        %>
    </body>
</html>
