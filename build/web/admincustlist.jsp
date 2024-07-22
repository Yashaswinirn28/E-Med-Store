<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
 
<div class="tableDisplay">
<table border="1" cellpadding="5" cellspacing="5" align="center"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/custlist.bmp"> </td> </tr>
    <tr><td>User Name</td><td>Customer Name</td><td>Phone no</td><td>Image</td></tr>
<% 
                rst=stmt.executeQuery("select * from custDetTab order by uName");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("uName")+ " </td><td height=20>"+rst.getString("custname")+ " </td> <td> " + rst.getString("phonenos")+ "</td>" );
                
                
%>  
    <td><img style="max-width:100px;" src="view3.jsp?uName=<%=rst.getString("uName")%>"/>
    </td></tr>
                     
                        <%       }
                        %>
   
</table>
    </div>

<%@ include file="footerfile.jsp"%>