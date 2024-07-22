

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="headfile.jsp"%>


  <%
                // using scriptlet
                java.util.Calendar now = new java.util.GregorianCalendar();
                String tod = "";

                if (now.get(now.HOUR_OF_DAY) < 11) {
                    tod = "Morning!";
                } else if (now.get(now.HOUR_OF_DAY) < 15) {
                    tod = "Afternoon!";
                } else {
                    tod = "Evening!";
                }


        %>

        Good <%=tod%>
       
 
        <table width="80%" border="0"> 
        
        <tr> <td height="50"> </td> </tr>
        <tr> <td height="50"> </td> </tr>
        <tr> <td height="20" align="center"> <a href="custlogin.jsp"><img style="-webkit-user-select: none" src="images\custlogin.bmp"></a> </td> </tr>
        <tr> <td height="20" align="center"> <a href="customersignup.jsp"><img style="-webkit-user-select: none" src="images\custsignup.bmp"></a> </td> </tr>
        <tr> <td height="50"> </td> </tr>
        <tr> <td height="20" align="center"> <a href="adminlogin.jsp"><img style="-webkit-user-select: none" src="images\adminlogin.bmp"></a> </td> </tr>
        </table>
        
</html>