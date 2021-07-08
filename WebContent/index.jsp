<%@ page language="java" import="java.util.*" contentType="text/html; charset=ISO-8859-1"
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
			</ul>
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
								5th semester results will be
								published on 16/06/2021 on 
								wednesday morning. Students 
								are advised to reach the 
								administrative block by 
								2p.m & collect their report 
								cards from exam cell.
							</marquee>
						</div>
					</td>
				</tr>
			</table>
			<center><a href="admin.jsp"><font style="color:navy;">Login as Administrator</font></a></center>
			<div id="sidebar">
				<div class="box">
					<form method="post" action="loginprocess.jsp">
						<table>
							<tr><td style="color:navy;"><b>Login form</b></td></tr>
							<tr><td><br></td></tr>
							<tr><td>Branch:</td>
								<td>
									<select name="branch">
										<option>Select a branch</option>
										<option>Tollygunj</option>
										<option>Garia</option>
										<option>Budge Budge</option>
										<option>Behala</option>
									</select>
								</td>
							</tr>
							<tr><td><br></td></tr>
							<tr><td>User Name:</td><td><input type="text" name="username"></td></tr>
							<tr><td>Password:</td><td><input type="password" name="userpass"></td></tr>
							<tr><td><input type="submit" value="Sign in"></td></tr>
						</table>
					</form>
				</div>
			</div><br class="clear">
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>