<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	try
	{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		String url="jdbc:mysql://localhost:3306/paymentbillingsystem",user="root",password="";
		Connection conn=DriverManager.getConnection(url,user,password);
	}catch(SQLException e2)
	{
		e2.printStackTrace();
	}
%>