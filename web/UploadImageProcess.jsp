<%-- 
    Document   : UploadImageProcess
    Created on : Nov 29, 2023, 3:23:27 PM
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
            InputStream in;
            ByteArrayOutputStream bout;
            FileOutputStream fout;
            byte[] buffer;
            String contentType, content;
            int c;
            String imageid, userid, fileName, imgname, tag1, tag2, tag3, tag4;
            int totalViews = 0;

            public String getParameterValue(String content, String paramName) {
                String paramValue = "";
                int startIndex = content.indexOf(paramName) + paramName.length() + 3;
                int endIndex = content.indexOf("--", startIndex);
                paramValue = content.substring(startIndex, endIndex).trim();
                return paramValue;
            }

        %>

        <%
            userid = session.getAttribute("userid").toString();

            contentType = request.getContentType();
            in = request.getInputStream();
            bout = new ByteArrayOutputStream();

            while ((c = in.read()) != -1) {
                bout.write(c);
            }
            buffer = bout.toByteArray();
            content = new String(buffer);
            bout.close();


            // Start of Code for getting the uploaded file name            
            String saveFile = content.substring(content.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
            fileName = saveFile;     //this is uploaded file name       
            // End of Code for getting the uploaded file name

            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1, contentType.length());
            int pos;

            // Start of Code for extracting the index of content
            pos = content.indexOf("filename=\"");
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;
            pos = content.indexOf("\n", pos) + 1;

            int boundaryLocation = content.indexOf(boundary, pos) - 4;
            int startPos = pos;
            int endPos = boundaryLocation;
            //End of Code for extracting the index of content


            // Code for creating a new file with the same name and writing the content in new file
            File f1 = new File(application.getRealPath("UploadedImages"));

            fout = new FileOutputStream(f1.getPath() + "\\" + fileName);
            fout.write(buffer, startPos, endPos - startPos);
            fout.flush();
            fout.close();

            //Start of Code for getting parameter values requested by client
            imageid = getParameterValue(content, "imageid");
            userid = getParameterValue(content, "username");
            imgname = fileName;
            tag1 = getParameterValue(content, "tag1");
            tag2 = getParameterValue(content, "tag2");
            tag3 = getParameterValue(content, "tag3");
            tag4 = getParameterValue(content, "tag4");

            //End of Code for getting parameter values requested by client

            ps = con.prepareStatement("insert into UploadedImages values(?,?,?,?,?,?,?,?)");
            ps.setString(1, imageid);
            ps.setString(2, userid);
            ps.setString(3, imgname);
            ps.setString(4, tag1);
            ps.setString(5, tag2);
            ps.setString(6, tag3);
            ps.setString(7, tag4);
            ps.setInt(8, totalViews);
            ps.executeUpdate();
            ps.close();
            response.sendRedirect("UploadImage.jsp?msg=Image Uploaded to the Server!!");
            //out.println("<script>alert('File Sent to the User!!');</script>");            
%>
    </body>
</html>