<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<% 
            String var1a,var2="";
            var1a=request.getParameter("bvar");
           
                       
                rst=stmt.executeQuery("select * from ProductTab where prodcode = '"+var1a+"'");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                //var2=var2+"<table border=1>";
                
                while( rst.next())
                {
                var2=" Product Code     :  "+rst.getString("prodcode")+ "\n\n Product Name     :  "+rst.getString("ProdName")+ "\n\n Details          :  "+rst.getString("details")+ " \n\n Price            :  " + rst.getString("sPrice")+ " \n\n" ;
                }
                //var2=var2+"</table>";
%>  
<%=var2%>
