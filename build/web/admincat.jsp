
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 

<%
		String t1=request.getParameter("text1");
		String t2=request.getParameter("text2");
                int a1=0;
                session.setAttribute( "s1var", "");
                rst=stmt.executeQuery("select * from categoryTab where categoryName= '" + t1 + "'");
                if (rst.next())
                {
                session.setAttribute( "s1var", "This record is all ready present please check");
                a1=1;
                }
		
                if(a1!=1){
                if(t1!=null&&t1!=""){
		stmt.executeUpdate("insert into categoryTab value('" + t1 + "','" + t2 + "')");
                session.setAttribute( "s1var", "Record Saved Successfully");
                               }
                else
                {
                session.setAttribute( "s1var", "Please enter all the fields");
                }
                	}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"    action="admincat.jsp">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/categorynames.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> category Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Details </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="20" colspan="2"><%= session.getAttribute( "s1var" )%> </td> </tr> 
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
