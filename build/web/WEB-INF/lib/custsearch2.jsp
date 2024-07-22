<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<A href="custmainpage.jsp"> Cust Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="5"> <img style="-webkit-user-select: none" src="images/searchlist.bmp"> </td> </tr>
    <tr><td>Product code</td><td>Product name</td><td>Category</td><td>Price</td><td>Image</td></tr>
<% 
            String var1a,var2a;
            var1a=(String)session.getAttribute("var1");
           
            
                rst=stmt.executeQuery("select * from ProductTab where category = '"+var1a+"' order by prodcode");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                while( rst.next())
                {
                    String a1=rst.getString("ProdCode");
                    a1=a1.replace(" ","_");
                out.println("<tr> <td height=20><A href=custsearch3.jsp?pcode="+a1+">"+rst.getString("ProdCode")+ " </a> </td><td height=20>"+rst.getString("ProdName")+ " </td><td height=20>"+rst.getString("Category")+ " </td> <td> " + rst.getString("sPrice")+ "</td>" );
                
                
%>  
    <td><img style="max-width:100px;" src="viewprod.jsp?prodcode=<%=rst.getString("prodcode")%>"/>
    </td></tr>
                     
                        <% 
                             }
                        %>
    </table>

</td><td width="25%"></td></tr>
</table>

<A href="custsearch1.jsp"> Back </A> <BR> 

<%@ include file="footerfile.jsp"%>

