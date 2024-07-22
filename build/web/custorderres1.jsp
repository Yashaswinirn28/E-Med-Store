
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="custmainpage.jsp"> Cust Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<% 
Integer ivar=0;
Integer bvar=0;
Integer tamtvar=0;Integer bamtvar=0;
String var1,b1var;
b1var=(String)session.getAttribute("b1var");
var1=(String)session.getAttribute("custcodevar");
String ccnovar=(String)session.getAttribute( "ccnovar");


rst=stmt.executeQuery("select sum(totAmt) as tAmt from mCartTab where billno="+b1var);
if(rst.next()) tamtvar=Integer.parseInt(rst.getString("tAmt"));



rst=stmt.executeQuery("select (max(tranno)+1) as newNo from tranTab");
if(rst.next()) bvar=Integer.parseInt(rst.getString("newNo"));
//rst.close();
java.util.Date date1 = new java.util.Date();
DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
String dvar = fmt1.format(new java.util.Date());

stmt1.executeUpdate("insert into TranTab value('" + bvar + "','" + dvar + "','" + ccnovar + "','bill No " + b1var + "',0," + tamtvar + ",'')");

                
%>       
<table border="0" cellpadding="5" cellspacing="5"> 
<tr> <td height="20"> <img style="-webkit-user-select: none" src="images/order1.bmp"> </td> </tr>   
<tr> <td height="20">  </td> </tr>   
<tr> <td height="20">  </td> </tr>   
`   <tr> <td height="20"> <h3> Thank you for your order </h3> </td> </tr>   
<tr> <td height="20"> <h3> We will despatch your order products soon. </h3>  </td> </tr>   
<tr> <td height="20"> <h3> Your order no is : <%= bvar%> </h3>  </td> </tr>   
<tr> <td height="20">  </td> </tr>   
<tr> <td height="20"> <A href="custlogin.jsp">Logout </A> </td> </tr>   
</table>

</td><td width="25%"></td></tr>
</table>

<A href="custsearch2.jsp"> Back </A> <BR> 

<%@ include file="footerfile.jsp"%>



