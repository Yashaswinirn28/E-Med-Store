<%-- 
    Document   : view3
    Created on : Dec 13, 2016, 6:17:53 PM
    Author     : java4
--%>
<%@ include file="connfile.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%
    Blob image = null;
    byte[] imgData = null;
    String name = request.getParameter("uName");
    System.out.println(name);
    try {
        
        rst = stmt.executeQuery("select custimage from CustDetTab where uName = '" + name + "' ");
        if (rst.next()) {
            image = rst.getBlob(1);
            imgData = image.getBytes(1, (int) image.length());
        } else {
            out.println("Display Blob Example");
            out.println("image not found for given image>");
            return;
        }
// display the image
        response.setContentType("image/gif");
        OutputStream o = response.getOutputStream();
        o.write(imgData);
        o.flush();
        o.close();
    } catch (Exception e) {
        out.println("Unable To Display image");
        out.println("Image Display Error=" + e.getMessage());
        return;
    } finally {
        try {
            rst.close();
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

%> 
