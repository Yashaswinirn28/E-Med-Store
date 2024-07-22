<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<% 
            String var1a,var2="";
            var1a=request.getParameter("bvar");
            Integer b1=Integer.parseInt(var1a);
                       
                rst=stmt.executeQuery("select * from mCartTab where billno = '"+b1+"' order by slno");
		//out.println("select custname,cAdd,cityname,phonenos,email from custdetTab where bloodgroup = '"+var1a+"' and cityname='"+var2a+"'");
                //var2=var2+"<table border=1>";
                var2=var2+"SlNo          CustCode          ProdCode          Qty \n\n";
                while( rst.next())
                {
                var2=var2+"     "+rst.getString("slno")+ "          "+rst.getString("CustCode")+ "          "+rst.getString("ProductCode")+ "          " + rst.getString("Qty")+ " \n\n" ;
                }
                //var2=var2+"</table>";
%>  
<%=var2%>
