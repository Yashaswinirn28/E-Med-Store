<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>


<A href="adminmainpage1.jsp"> Home </A> <BR> 

<%
String t1=request.getParameter("text1");
if(t1!=null&&t1!=""){
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
Integer t5=Integer.parseInt(request.getParameter("text5"));
String t6=request.getParameter("text6");

stmt.executeUpdate("insert into productTab value('" + t1 + "','" + t2 + "','" + t3 + "','" + t4 + "'," + t5 + ",'" + t6 + "')");
//out.println("Record Saved Successful");
//response.sendRedirect("mainpage.jsp");
session.setAttribute( "s1var", "Record Saved Successfully");
}
else
{
session.setAttribute( "s1var", "Please enter all the fields");
}

%>


<script>
    function preview_image(event) 
                {
                    var reader = new FileReader();
                    reader.onload = function()
                        {
                            var output = document.getElementById('output_image');
                            output.src = reader.result;
                        }
                    reader.readAsDataURL(event.target.files[0]);
                }
        </script>
        <style>
            #wrapper
            {
                text-align:center;
                margin:0 auto;
               
                width:595px;
            }
            #output_image
            {
                max-width:100px;
            }
        </style>

<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

<form method="POST" action="Product" enctype="multipart/form-data">
<table border="0"> 
<tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/productdetails.bmp"> </td> </tr>    
<tr> <td height="60" colspan="2"> </td> </tr> 
<tr> <td height="40"> Product Code </td> <td> <input type="text" name="text1" value=""></td> </tr>
<tr> <td height="40"> Product Name </td> <td> <input type="text" name="text2" value=""></td> </tr>
<tr> <td height="40"> Details </td> <td> 
<textarea rows="5" cols="20" name="text3">

</textarea>
</td> </tr>


<tr> <td height="40"> Category </td> <td> 

<% 
rst=stmt.executeQuery("select CategoryName from CategoryTab order by Categoryname");
out.println("<select  name=text4 size=1>");
while( rst.next())
{
out.println("<option>" + rst.getString("Categoryname")+ " </option>");
}
out.println("</select>");
rst.close();
%>  
</td> </tr>    
<tr> <td height="40">  Image </td> <td width="20"><input type="file" required="" class="inputs" name="photo" onchange="preview_image(event)" />
         <div id="wrapper">
                         <img id="output_image"/>
                        </div></td> </tr>
<tr> <td height="40"> Price </td> <td> <input type="text" name="text5" value=""></td> </tr>
<tr> <td height="40"> Remarks </td> <td> <input type="text" name="text6" value=""></td> </tr>

<tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" ></td> </tr>       

<tr> <td height="60" colspan="2"> </td> </tr> 
<tr> <td height="20" colspan="2"><%= session.getAttribute( "s1var" )%> </td> </tr> 

</table>
</form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
