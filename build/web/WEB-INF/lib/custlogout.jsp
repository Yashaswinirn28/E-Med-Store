<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="connfile.jsp"%>
<%@ page import="java.text.*,java.util.*" %>


<%
		String t1=(String)session.getAttribute("custcodevar");
                String t2=(String)session.getAttribute("logvar");
		DateFormat fmt1 = new SimpleDateFormat("yyyy:MM:dd");
                String dvar = fmt1.format(new java.util.Date());
                DateFormat fmt2 = new SimpleDateFormat("hh:mm:ss");
                String d2var= fmt2.format(new java.util.Date());
                //int t3=Integer.parseInt(t2);
                
                if(t2!=null&&t2!=""){
		stmt.executeUpdate("update CustLogTab set logoutDate ='"+dvar+"',logouttime='"+d2var+"' where logno=" + t2 + "");
                response.sendRedirect("index.jsp");
                }
                
                	

%>