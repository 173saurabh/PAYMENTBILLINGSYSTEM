<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String n=request.getParameter("val");
	String branch=request.getParameter("branch");
	if(n.length()>0)
	{
		try
		{
			DriverManager.deregisterDriver(new com.mysql.jdbc.Driver());
			String url="jdbc:mysql://localhost:3306/paymentbillingsystem",user="root",password="";
			Connection conn=DriverManager.getConnection(url,user,password);
			String sql="select * from payregister where branch='"+branch+"' and username like '%"+n+"%'";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			out.print("<br>");
			ResultSet rs=ps.executeQuery();
			out.print("<table border='5' cellspacing=5 cellpadding=2 id='myTable'>");
			out.print("<tr><td><a href='#' name='ID' onmouseover='javascript:viewAllInfo(this.name)'><B>ID</B></a></td><td><B>Name</B></td><td><B>Salary</B></td></tr>");
			while(rs.next())
			{
				out.print("<tr><td><a href='#' name='"+rs.getString(1)+"' onmouseover='javascript:viewAll(this.name)'>"+rs.getString(1)+"</a></td>");
				out.print("<td>"+rs.getString(2)+"</td>");
				out.print("<td>"+rs.getString(7)+"</td>");
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