<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headfile.jsp"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Shopping</title>
<script type="text/javascript" >
function ajaxfunction()
{
var xmlhttp;
if(window.XMLHttpRequest)
{
  xmlhttp=new XMLHttpRequest();
}
else 
{
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}
xmlhttp.onreadystatechange=function()
{
  if(xmlhttp.readyState==4)
  {
  document.form1.text2.value= xmlhttp.responseText;
  //document.writeln(xmlhttp.responseText);
  }
}
xmlhttp.open("GET","ajaxbill1.jsp?bvar="+document.form1.text1.value,true);
xmlhttp.send(null);
}
</script>

    </head>
    <body background="images/back2.bmp">
<A href="adminmainpage1.jsp"> Admin Main </A> <BR> 

    <center>
        
        

        <form name="form1">        
        <table border="0" width="50%" align="center">
                <tr><td height="40" > </td> </tr>
                <tr><td  > Enter the Bill No </td> <td  > <input type="text" name="text1"> </td> <td  > <input type="button" name="find" value="   Find    " onclick="ajaxfunction()"> </td></tr>
                <tr> </tr>
                <tr> <td colspan="3"> <textarea name="text2" cols="60" rows="20"></textarea></tr>
                
        </table>
        </form>   
            
           
    </center>
    </body>
    
</html>
