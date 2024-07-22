<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/edlist.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select * from qualificationTab");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("edname")+ " </td> <td> " + rst.getString("details")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
