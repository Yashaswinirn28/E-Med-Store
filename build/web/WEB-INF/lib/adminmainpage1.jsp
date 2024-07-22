<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>
<link href="newcss1.css" rel="stylesheet" type="text/css" /> 

<BR>

<A href="index.jsp">Log Out</a>       
<BR>


<table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10"> 
<tr> <td><h1> Admin Main </h1> </td> </tr>
</table>
<table border="1" align ="center" width="60%" cellpadding="10" cellspacing="10"> 
<tr> <td height="20"> <A href="admincat.jsp"> Category Details </a> <td> <A href="admincatlist.jsp">Category List</a>  </td> </tr>
<tr> <td height="20"> <A href="adminproduct.jsp"> Product Details </a> <td> <A href="adminproductlist.jsp">Product List</a>  </td> </tr>
<tr> <td height="20"> <A href="admineducation.jsp"> Qualification Details </a> <td> <A href="admineducationlist.jsp">Qualification List</a>  </td> </tr>
<tr> <td height="20"> <A href="adminjob.jsp"> Profession Details </a> </td> <td> <A href="adminjoblist.jsp">Profession List</a>  </tr>
<tr> <td height="20"> <A href="admincustlist.jsp">Customer Details </a></td> <td> <A href="admincustloglist.jsp">Customer Log List</a></td>  </tr>
<tr> <td height="20"> <A href="admincustorders1.jsp">Customer Orders </a></td> <td> <A href="admincustorders2.jsp">Customer Order Detail List</a>  </tr>
<tr> <td height="20"> <A href="adminfaq.jsp">FAQ </a></td> <td> <A href="adminfaqlist.jsp">FAQ List</a>  </tr>
<tr> <td height="20"> </td> <td> <A href="index.jsp">Logout</a>  </tr>
</table>



  
<%@ include file="footerfile.jsp"%>