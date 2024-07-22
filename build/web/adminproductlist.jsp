<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="6"> <img style="-webkit-user-select: none" src="images/productdetails.bmp"> </td> </tr> 
    <tr><td>Product code</td><td>Product name</td><td>Details</td><td>Category</td><td>Price</td><td>Image</td></tr>
<% 
                rst=stmt.executeQuery("select * from productTab order by prodcode");
		
                while( rst.next())
                {
                out.println("<tr> <td height=20>"+rst.getString("prodcode")+ " </td> <td height=20>"+rst.getString("prodname")+ " </td><td height=20>"+rst.getString("details")+ " </td>  <td height=20>"+rst.getString("category")+ " </td> <td> " + rst.getString("sprice")+ "</td>" );
                
                
%>  
    <td><img style="max-width:100px;" src="viewprod.jsp?prodcode=<%=rst.getString("prodcode")%>"/>
    </td></tr>
                     
                        <%       }
                        %>
    </table>

</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>

