<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="4"> <img style="-webkit-user-select: none" src="images/admino1.bmp"> </td> </tr>   
<% 
                rst=stmt.executeQuery("select billno,billdate,custcode,sum(totamt) as TotalAmt from mCartTab group by billno,billdate,custcode  order by billno desc");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("BillNo")+ " </td><td height=20>"+rst.getString("BillDate")+ " </td><td height=20>"+rst.getString("custcode")+ " </td> <td> " + rst.getString("TotalAmt")+ "</td></tr>" );
                }
                
%>  
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
