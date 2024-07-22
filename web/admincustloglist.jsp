<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td width="50%">

    
    <table width="100%" border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="6"> <h1> Customer Log List </h1> </td> </tr>   
    <tr> <td>slno </td> <td>Cust Code </td> <td>Date </td>  <td>Time In </td>  <td> Time Out</td>  </tr>
<% 
                rst=stmt.executeQuery("select * from custlogTab order by LogNo desc");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString(1)+ " </td> <td> " + rst.getString(6)+ "</td><td> " + rst.getString(2)+ "</td><td> " + rst.getString(3)+ "</td><td> " + rst.getString(5)+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
