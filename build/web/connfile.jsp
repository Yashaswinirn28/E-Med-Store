
<%@ page language="java" import="java.sql.*" %>
<%
	String driver = "com.mysql.jdbc.Driver";
	Class.forName(driver).newInstance();
	
	Connection con=null;
	ResultSet rst=null;
        ResultSet rst1=null;
	Statement stmt=null;
	Statement stmt1=null;
	try{
		String url="jdbc:mysql://localhost/MedStoredata?user=root&password=root"; //mysql123
		con=DriverManager.getConnection(url);
		stmt=con.createStatement();
                stmt1=con.createStatement();
	}
	catch(Exception e){
		System.out.println(e.getMessage());
	}
%>