<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String n=request.getParameter("val");
	if(n.length()>0)
	{
		try
		{
			DriverManager.deregisterDriver(new com.mysql.jdbc.Driver());
			String url="jdbc:mysql://localhost:3306/paymentbillingsystem",user="root",password="";
			Connection conn=DriverManager.getConnection(url,user,password);
			String sql="select * from payregister where id ='"+n+"'";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			out.print("<br>");
			out.print("<table border='5' cellspacing=5 cellpadding=2>");
			out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:viewAllInfo(this.name)'><B>ID</B></a></td><td><B>User name</B></td><td><B>Password</B></td><td><B>Date of joining</B></td><td><B>Date of Birth</B></td><td><B>Salary</B></td><td><B>Remove</B></td></tr>");
			while(rs.next())
			{
				out.print("<tr><td><a href='#' name='"+rs.getString(1)+"' onmouseover='javascript:viewAllInfo(this.name)'>"+rs.getString(1)+"</a></td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getString(3)+"</td>");
				out.print("<td>"+rs.getString(5)+"</td>");
				out.print("<td>"+rs.getString(6)+"</td>");
				out.print("<td>"+rs.getString(7)+"</td>");
				out.print("<td><a href='aremove.jsp?val="+rs.getString(1)+"' name='"+rs.getString(1)+"'>Delete</a></td>");
				out.print("</tr>");
			}
			out.print("</table>");
			conn.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
%>	