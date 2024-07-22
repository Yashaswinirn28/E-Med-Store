<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.*,java.util.*" %>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<A href="index.jsp">Home</a>  

<BR>
<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                session.setAttribute( "custcodevar", "" );
		rst=stmt.executeQuery("select ccNo from custDetTab where uName= '" + t1 + "' and pWord='" + t2 + "'");
		
                if (rst.next())
                {out.println("Login Successful");
                 Double r1=Math.random()*558963;
                session.setAttribute( "randvar", r1.toString() );
                session.setAttribute( "custcodevar", t1 );
                session.setAttribute( "ccnovar", rst.getString("ccNo"));
                
                
                
                DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
                String dvar = fmt1.format(new java.util.Date());
                DateFormat fmt2 = new SimpleDateFormat("hh:mm:ss");
                String d2var= fmt2.format(new java.util.Date());

		int i1=1000;
                rst=stmt.executeQuery("select (max(LogNo) + 1) as mNo from custLogTab");
                if (rst.next())
                {
                    session.setAttribute("logvar", rst.getString("mNo") );
                i1= Integer.parseInt(rst.getString("mNo"));
                }
                //session.setAttribute( "logvar", i1 );
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into CustLogTab(logno,loginDate,logintime,custcode) value(" + i1 + ",'" + dvar + "','" + d2var + "','" + t1 + "')");
                	}
                
                
                response.sendRedirect("custmainpage.jsp");
                
                }
                
                
                else
                {out.println("User Name or Password is not correct");
                }

%>


<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

        <form method="POST"    action="custlogin.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <A href="adminlogin.jsp"><img style="-webkit-user-select: none" src="images/custlogin.bmp"></a> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> User Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Login" ></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>

