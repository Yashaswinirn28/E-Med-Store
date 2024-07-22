
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<A href="custmainpage.jsp"> Cust Main </A> <BR> 
<form method="POST"    action="custorderres.jsp">

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<table border="1" cellpadding="5" cellspacing="5"> 
<tr> <td height="20" colspan="5"> <img style="-webkit-user-select: none" src="images/viewcart2.bmp"> </td> </tr>   
<tr> <td> Product Code </td> <td> Price</td><td>Qty </td><td>Tot Amount </td><td>Image</td></tr>
<% 
            String var1a,sidvar;
            sidvar=(String)session.getAttribute("randvar");
            
            
                rst=stmt.executeQuery("select * from tCartTab where sid = '"+sidvar+"' order by productcode");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                while( rst.next())
                {
                out.println("<tr> <td height=20> "+rst.getString("ProductCode")+ " </td> <td height=20> "+rst.getString("Price")+ " </td><td height=20>"+rst.getString("Qty")+ " </td> <td> " + rst.getString("totAmt")+ "</td>" );
                
                
%> 
<td><img style="max-width:100px;" src="viewprod.jsp?prodcode=<%=rst.getString("productcode")%>"/>
    </td></tr>
                     
                        <%  
                            }
                        %>
                        
                        <tr>
                        <tr><td>EMAIL</td><td><input type="email" name="email">
                            </td>
                            
                        </tr>
  <tr>  <td align="Right" colspan="5"> <input type="submit" value="&nbsp&nbsp&nbsp&nbsp Confirm Order" ></td> </tr>
    </table>

</td><td width="25%"></td></tr>
</table>
</form>
<A href="custsearch2.jsp"> Back </A> <BR> 

<%@ include file="footerfile.jsp"%>

