<%-- 
    Document   : test1
    Created on : May 25, 2012, 10:32:08 PM
    Author     : Keerthi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
  <HEAD>
    <TITLE>HTML Title</TITLE>
  </HEAD>
  <BODY>
    
    <H3 ALIGN="CENTER">
      Ramdom number from 0 to 10 : 
      <FONT COLOR="RED">
      
        <%
Double r1=Math.random()*558963;        

%>
<%=r1%>

</FONT>
    </H3>
    <H4 ALIGN="CENTER">Refresh the page to see if the number changes...</H4>
  </BODY>
</HTML>