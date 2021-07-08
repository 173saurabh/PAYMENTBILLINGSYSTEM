<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	String username=getServletContext().getInitParameter("Username");
	String password=getServletContext().getInitParameter("Password");
	
	if(request.getParameter("username").equalsIgnoreCase(username) && request.getParameter("userpass").equalsIgnoreCase(password))
	{
		session.setAttribute("islogin","please sign in first");
%>
<jsp:forward page="ahome.jsp"></jsp:forward>
<%
	}
	else
	{
		request.setAttribute("Error","Can't login Username or Password Incorrect. Please enter correct details");
		session.setAttribute("Loginmsg","please sign in first");
%>
<jsp:forward page="admin.jsp"></jsp:forward>
<%
	}
%>

 