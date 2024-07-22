
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="custmainpage.jsp"> Cust Main </A> <BR> <BR> 


<%
            String var1a="",var2a;
            var1a=(String)session.getAttribute("pcode");
            String pvar=var1a.replace("_"," ");
            String sidvar=(String)session.getAttribute("randvar");
            String uvar=(String)session.getAttribute("custcodevar");
            Integer p1var=(Integer)session.getAttribute("pprice");
            //Integer pricevar=Integer.parseInt(p1var.toString());
            
	    Integer t1=Integer.parseInt(request.getParameter("text1"));
	
            Integer totvar=p1var*t1;
          
		
                if(var1a!=null&&var1a!=""){
		stmt.executeUpdate("insert into tCartTab value('" + sidvar + "','" + uvar + "','" + pvar + "'," + p1var + "," + t1 + "," + totvar + ")");
		out.println("Product added to cart Successful");}

%>


<BR> 
<BR> 

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    
    <table border="0"> 
    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> <A href="custsearch1.jsp"><img src="images/search1.bmp"> </td> </tr>
    <tr> <td height="40"> <A href="custviewcart.jsp"><img src="images/viewcart1.bmp"></td> </tr>
    
    </table>
    
</td><td width="25%"></td></tr>
</table>
<BR> 
<BR> 
<BR> 
<BR> 
<%@ include file="footerfile.jsp"%>