
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>



<A href="custmainpage.jsp"> Cust Main </A> <BR> 
<form method="POST"    action="custsearch4.jsp">

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="1" cellpadding="5" cellspacing="5"> 
    <tr> <td height="20" colspan="5"> <img style="-webkit-user-select: none" src="images/productdetails.bmp"> </td> </tr>   
<% 
            String var1a,var2a;
            var1a=request.getParameter("pcode");
            var1a=var1a.replace("_"," ");
            session.setAttribute( "pcode", var1a );
            
                rst=stmt.executeQuery("select * from ProductTab where prodcode = '"+var1a+"' order by prodcode");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                while( rst.next())
                {
                String a1=rst.getString("ProdCode");
                a1=a1.replace(" ","_");
                Integer p1=Integer.parseInt(rst.getString("sPrice"));
                session.setAttribute( "pprice",  p1);
                out.println("<tr> <td height=20> Product Code : "+rst.getString("ProdCode")+ " </td> </tr><td height=20> Product Name : "+rst.getString("ProdName")+ " </td></tr><td height=20> Category : "+rst.getString("Category")+ " </td> </tr><td> Price : " + rst.getString("sPrice")+ "</td></tr>" );
                }
                
%>      <tr>  <td align="left"> Enter Quantity : <input type="text" name="text1"> </td> </tr>       
        <tr>  <td align="Right"> <input type="submit" value="&nbsp&nbsp&nbsp&nbsp Add to cart" ></td> </tr>       
        <tr>  <td  align="left"> <A href="custviewcart.jsp"> <img src="images/viewcart.bmp"></td> </tr>       

    </table>

</td><td width="25%"></td></tr>
</table>
</form>
<A href="custsearch2.jsp"> Back </A> <BR> 

<%@ include file="footerfile.jsp"%>
