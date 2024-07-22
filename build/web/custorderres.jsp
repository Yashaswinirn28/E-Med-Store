
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<%@page import="network.mail"%>

<A href="custmainpage.jsp"> Cust Main </A> <BR> 


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>


<% 

Integer tamtvar=0;Integer bamtvar=0;
String var1,b1var;
String email=request.getParameter("email");
String msg="YOUR ORDER HAS BEEN SUCCESSFULLY PLACED";
b1var=(String)session.getAttribute("randvar");
var1=(String)session.getAttribute("custcodevar");
String ccnovar=(String)session.getAttribute( "ccnovar");

rst=stmt.executeQuery("select sum(dbamt)-sum(cramt) as BalAmt from tranTab where ccno="+ccnovar);
if(rst.next()) 
    if(rst.getString("BalAmt")!=null)
    bamtvar=Integer.parseInt(rst.getString("BalAmt"));

rst=stmt.executeQuery("select sum(totAmt) as tAmt from tCartTab where sid="+b1var);
if(rst.next())
if(rst.getString("tAmt")!=null)
tamtvar=Integer.parseInt(rst.getString("tAmt"));

if(bamtvar <tamtvar)
{
response.sendRedirect("custnobalance.jsp");
}
else
{
String var1a,sidvar;
Integer ivar=0;
Integer bvar=1001;
sidvar=(String)session.getAttribute("randvar");
rst=stmt.executeQuery("select (max(billno)+1) as billno1 from mCartTab where btype=2");
if(rst.next())
if(rst.getString("billno1")!=null)
bvar=Integer.parseInt(rst.getString("billno1"));
//rst.close();
java.util.Date date1 = new java.util.Date();
DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
String dvar = fmt1.format(new java.util.Date());


rst=stmt.executeQuery("select * from tCartTab where sid = '"+sidvar+"' order by productcode");
//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
while( rst.next())
{
ivar=ivar+1;
mail m = new mail();
            m.secretMail(msg, var1, email);
stmt1.executeUpdate("insert into mCartTab value('" + bvar + "','" + dvar + "','" + ivar + "','" + rst.getString("custcode") + "','" + rst.getString("productcode") + "'," + rst.getString("qty") + "," + rst.getString("price") + "," + rst.getString("totAmt") + ",2)");
session.setAttribute( "b1var", bvar.toString() );
}
rst.close();
response.sendRedirect("custorderres1.jsp");
}
%>       




