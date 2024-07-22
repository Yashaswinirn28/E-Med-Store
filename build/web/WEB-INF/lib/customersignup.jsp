<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<%@ include file="connfile.jsp"%>

<script language="javascript">
        function Validate()
        {
            var x= document.form1.text1.value;
            if (x.length<=0)
           {
                alert("Please enter the UserName");
                return false;
           }
           
           x= document.form1.pass1.value;
            if (x.length <= 0)
           {
                alert("Please enter the Password");
                return false;
           }
           x= document.form1.pass1.value;
            var y = document.form1.pass2.value;
            if (x!=y)
           {
                alert("The retype password is not correct");
                return false;
           }
           
            y = document.form1.text4.value;
           if(isNaN(y)||y.indexOf(" ")!=-1)
           {
              alert("Enter numeric value")
              return false; 
           }
          if (y.length!=10)
           {
                alert("enter 10 characters");
                return false;
           }


            var emailID = document.form1.text5.value;
            atpos = emailID.indexOf("@");
            dotpos = emailID.lastIndexOf(".");
            if (atpos < 1 || ( dotpos - atpos < 2 )) 
            {
                alert("Please enter correct email ID")
                return false;
            }
            
        }

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
                padding:10px 10px;
                width:595px;
            }
            #output_image
            {
                max-width:100px;
            }
        </style>
        


<A href="index.jsp"> Home </A> <BR> 

<%
String t1=request.getParameter("text1");
String p1=request.getParameter("pass1");
String p2=request.getParameter("pass2");
String t2=request.getParameter("text2");
String t3=request.getParameter("text3");
String t4=request.getParameter("text4");
String t5=request.getParameter("text5");
String t6=request.getParameter("text6");
String t7=request.getParameter("text7");
String t8=request.getParameter("text8");
String t9=request.getParameter("text9");
String t10=request.getParameter("text10");

if(t1!=null&&t1!=""){

rst=stmt.executeQuery("select * from CustDetTab where uName='"+t1+"'");
if( rst.next())
{
out.println("This username is allready taken please choose other user name");
}
else
{
stmt.executeUpdate("insert into custDetTab value('" + t1 + "','" + p1 + "','" + t2 + "','" + t3 + "','" + t4 + "','" + t5 + "','" + t6 + "','" + t7 + "','" + t8 + "','" + t9 + "','" + t10 + "','N')");
//out.println("Record Saved Successful");
response.sendRedirect("custlogin.jsp");
}
}

%>




<table border="0"> 
<tr><td height ="100" width="25%"></td><td>

    <form method="POST"  action="Recommend" enctype="multipart/form-data">
    <table border="0"> 
    <tr> <td height="20" colspan="2"> <img style="-webkit-user-select: none" src="images/custsignup.bmp"> </td> </tr>    
    <tr> <td height="60" colspan="2"> </td> </tr> 
    <tr> <td height="40"> User Name </td> <td> <input type="text" name="text1" value=""></td> </tr>
    <tr> <td height="40"> Password </td> <td> <input type="password" name="pass1" value=""></td> </tr>
    <tr> <td height="40"> Retype Password </td> <td> <input type="password" name="pass2" value=""></td> </tr>
    <tr> <td height="40"> Customer Name </td> <td> <input type="text" name="text2" value=""></td> </tr>
    <tr> <td height="40"> Address </td> <td> <input type="text" name="text3" value=""></td> </tr>
    <tr> <td height="40"> Mobile No </td> <td> <input type="text" name="text4" value=""></td> </tr>
    <tr> <td height="40"> eMail Id </td> <td> <input type="text" name="text5" value=""></td> </tr>

    <tr> <td height="40"> Qualification Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select edname from QualificationTab order by edname");
		out.println("<select  name=text6 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("edname")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>    
    
    <tr> <td height="40"> Profession Name </td> <td> 
   
<% 
                rst=stmt.executeQuery("select jobname from professionTab order by jobname");
		out.println("<select  name=text7 size=1>");
                while( rst.next())
                {
                out.println("<option>" + rst.getString("jobname")+ " </option>");
                }
                out.println("</select>");
%>  
     </td> </tr>        
<tr> <td height="40"> Customer Image </td> <td><input type="file" required="" class="inputs" name="photo" onchange="preview_image(event)" />
         <div id="wrapper">
                         <img id="output_image"/>
                        </div></td> </tr>
    
<tr> <td height="40"> CreditCard No </td> <td> <input type="text" name="text8" value=""></td> </tr>
<tr> <td height="40"> Valid Upto (dd/MMM/yyyy) </td> <td> <input type="text" name="text9" value=""></td> </tr>     
    <tr> <td height="40"> Bank Name </td> <td> 
   
<select  name=text10 size=1>
    <option>City Bank </option>
    <option>HSBC </option>
<option>Anz Grindlas </option>
</select>
     </td> </tr>    

    
    <tr> <td height="40">  </td> <td align="center"> <input type="submit" name="Save" onclick="return Validate()"></td> </tr>       
    </table>
        </form>
</td><td width="25%"></td></tr>
</table>

<%@ include file="footerfile.jsp"%>
