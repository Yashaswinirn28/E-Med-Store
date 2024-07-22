<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="custmainpage.jsp"> Cust Main </A> <BR> 
 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="7"> <img style="-webkit-user-select: none" src="images/admino1.bmp"> </td> </tr>   

    <tr> <td>Bill No </td><td>Cust Code </td><td> Product Code</td><td>Price </td><td>Qty </td><td> Total Amt</td><td>Image</td></tr>
    <% 
   String var1=(String)session.getAttribute("custcodevar");
                rst=stmt.executeQuery("select * from mCartTab where custcode='"+var1+"' and btype=2 order by billno desc,slno");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("BillNo")+ " </td><td height=20>"+rst.getString("custcode")+ " </td> <td> " + rst.getString("ProductCode")+ "</td><td height=20>"+rst.getString("Price")+ " </td><td height=20>"+rst.getString("Qty")+ " </td><td height=20>"+rst.getString("TotAmt")+ " </td>" );
                
                
%>  
<td><img style="max-width:100px;" src="viewprod.jsp?prodcode=<%=rst.getString("productcode")%>"/>
    </td></tr>
                     
                        <%  
                            }
                        %>
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
