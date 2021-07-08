<%@ page language="java" import="java.util.*" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%try
	{
		int id=Integer.parseInt(request.getParameter("id"));
		String username=request.getParameter("username");
		String userpass=request.getParameter("userpass");
		String dateofbirth=request.getParameter("dob");
		String dateofjoining=request.getParameter("doj");
		String salary=request.getParameter("salary");
		String branch=request.getParameter("branch");
		
		DriverManager.deregisterDriver(new com.mysql.jdbc.Driver());
		String url="jdbc:mysql://localhost:3306/paymentbillingsystem",user="root",password="";
		Connection conn=DriverManager.getConnection(url,user,password);
		String sql="insert into payregister(id,username,userpass,branch,dateofjoining,dateofbirth,salary) values(?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		
		ps.setInt(1,id);
		ps.setString(2,username);
		ps.setString(3,userpass);
		ps.setString(4,branch);
		ps.setString(5,dateofbirth);
		ps.setString(6,dateofjoining);
		ps.setString(7,salary);
		
		int s=ps.executeUpdate();
		/* System.out.println(s); */
	}
	catch(SQLException e2)
	{
		e2.printStackTrace();		
	}
%>
<jsp:forward page="ahome.jsp"></jsp:forward>