
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="custmainpage.jsp"> Cust Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<% 
String var1a,sidvar,ccnovar;
Integer ivar=0;
Integer bvar=0;

String t1=request.getParameter("text1");
String t2=request.getParameter("text2");

if(t1!=null&&t1!=""){
rst=stmt.executeQuery("select (max(tranno)+1) as newNo from tranTab");
if(rst.next())
bvar=Integer.parseInt(rst.getString("newno"));
//rst.close();

ivar=Integer.parseInt(t2);
java.util.Date date1 = new java.util.Date();
DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
String dvar = fmt1.format(new java.util.Date());
stmt1.executeUpdate("insert into TranTab value('" + bvar + "','" + dvar + "','" + t1 + "','deposit',"+t2+ ",0,'')");
}                
            
ccnovar=(String)session.getAttribute( "ccnovar");
                  

%>       

<form method="POST"    action="custdeposit.jsp">
<table border="0" cellpadding="5" cellspacing="5"> 
<tr> <td height="20"> <img style="-webkit-user-select: none" src="images/deposit.bmp"> </td> </tr>   
<tr> <td height="20">  </td> </tr>   

<tr> <td height="20">  Card No </td> </tr>  
<tr> <td height="20">   <input type="text" name="text1" readonly value="<%=ccnovar%>" ></td> </tr>  
<tr> <td height="20">  Amount </td> </tr>  
<tr> <td height="20">   <input type="text" name="text2" ></td> </tr>  
 <tr> <td align="center"> <input type="submit" name=" &nbsp&nbsp Deposit" ></td> </tr>       
</table>
</form>
</td><td width="25%"></td></tr>
</table>

<A href="custsearch2.jsp"> Back </A> <BR> 

<%@ include file="footerfile.jsp"%>
