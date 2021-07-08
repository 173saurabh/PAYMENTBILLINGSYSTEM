<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div id="outer">
		<div id="header">
			<div id="logo">
				<h1>Payment Billing System</h1>
			</div>
		</div>
		<div id="banner">
			<div class="captions">
				<h2>Sign in</h2>
			</div>
			<img alt="" src="images/banner.jpg" height="300" width="100%" />
		</div>
		<div id="nav">
			<ul>
			 <li class="first">
			    <a href="home.jsp">Home</a>
			  </li>
			  <li>
			    <a href="generalinfo.jsp">New Registration</a>
			  </li>
			  <li>
			    <a href="modify.jsp">Modify Detail</a>
			  </li>
			  <li>
			    <a href="ahome.jsp">Administrator</a>
			  </li>
			  <li>
			    <a href="contactus.jsp">Contact us</a>
			  </li>
			</ul><br class="clear"/>
		</div>
		<%
			if(request.getAttribute("notlogin_msg")!=null)
			{
				out.print("<font size='2' color='red' m>");
				out.print(request.getAttribute("notlogin_msg"));
				out.print("</front>");
			}
		%>
		<%
			if(request.getAttribute("Error")!=null)
			{
				out.print("<font size='2' color='red' m>");
				out.print(request.getAttribute("Error"));
				out.print("</front>");
			}
		%>
		<div id="main">
			<table align="right">
				<tr align="center"><td style="color: navy;"><B>Notice</B></td></tr>
				<tr>
					<td>
						<div>
							<marquee direction="up" width="300px" truespeed="truespeed" onmouseover="stop()" onmouseout="start()" style="color:red;">
								You can visit lots of
								information about various
								accountants & create
								accountant after logging 
								in as admin.
							</marquee>
						</div>
					</td>
				</tr>
			</table>
			<h3 style="color:navy;" align="center"><b>Admin Login</b></h3>
			<div class="box">
				<form method="post" action="aloginprocess.jsp">
					<table>
						<tr><td style="color:navy;"><b>Login Form</b></td></tr>
						<tr><td><br></td></tr>
						<tr><td>User Name:</td><td><input type="text" name="username"/></td></tr>
						<tr><td><br></td></tr>
						<tr><td>Password:</td><td><input type="password" name="userpass"/></td></tr>
						<tr><td>      </td><td><input type="submit" value="Sign in"></td></tr>
					</table>
				</form>
				<br>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>