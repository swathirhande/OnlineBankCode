<%@page import="g.*"%>
<%@ page import="g.verifyLogin1"%>
<%@ page
	import="java.io.*,java.lang.*, org.apache.logging.log4j.LogManager,java.sql.ResultSet,java.util.*,java.sql.Connection,java.sql.PreparedStatement, javax.servlet.*, javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>

<%
	UserDetails userDetails = (UserDetails) request.getSession().getAttribute("UserDetails");
	if (userDetails == null) {
%>
<script type="text/javascript">
	window.location.assign("/OnlineBankingServ");
</script>
<%
	}
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function ctck() {
		var sds = document.getElementById("dum");

	}
</script>

</head>

<body>

	<div id="top_links">


		<div id="header">
			<h1>
				APANA - BANK<span class="style1"></span>
			</h1>
			<h2>ExtraOrdinary Service</h2>
			<A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>
		</div>

		<%
			boolean status1 = false;
			if (userDetails != null) {
				status1 = true;
			} else {

				String num = request.getParameter("accountno");
				int accountno = Integer.parseInt(num);//can i do this sir? but i wont accpts 
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				status1 = username == null ? false : verifyLogin1.checkBalanceDetails(accountno, password);
				if (status1) {
					userDetails = new UserDetails(username, password, accountno);
					request.getSession().setAttribute("UserDetails", userDetails);
				}

			}
		%>
		<div id="navigation">
			<ul style="background-color: orange; color: black">
				<%
					if (!status1) {

						out.print("if block");// is this line printed ??no sir
				%>
				<li><a href="create.jsp">BALANCE</a></li>
				<%
					}
				%>
			</ul>
		</div>



		<table style="width: 897px; background: #FFFFFF; margin: 0 auto;">
			<tr>
				<td width="300" valign="top"
					style="border-right: #666666 1px dotted;">
					<div id="services">
						<h1>Services</h1>
						<br>
						<ul>
							<li><a href="#">www.javatpoint.com</a></li>
							<li><a href="#">www.javacstpoint.com </a></li>
							<li><a href="#">www.javatpoint.com/forum.jsp</a></li>
						</ul>

					</div>
				</td>

				<td width="1200" valign="top">


					<form method="get" name=F1 onSubmit="return dil(this)"
						action="balance.jsp">
						<table cellspacing="5" cellpadding="3" style="color: black">
							<tr>
								<td>ACCOUNT NO:</td>
								<td><input type="text" name="accountno" /></td>
							</tr>
							<tr>
								<td>PASSWORD:</td>
								<td><input type="password" name="password" /></td>
							</tr>
							<tr>
								<td></td>
								<td><input type="submit" value="Submit" /> <input
									type=reset value="Clear"></td>
							</tr>
						</table>
					</form>
		</table>

		<div>


			<%
				String num = request.getParameter("accountno");
				if (num != null) {

					//int accountno=num == null || num.isEmpty() ? 0 : Integer.parseInt(num);

					String username = request.getParameter("username");
				

					String password = request.getParameter("password");
					List<AccountDetail> allRecords = verifyLogin1.checkAccountDeatils(num);

					// if valid allRecords.size() is equal to one else records size 

					// so u can loop it here and show all records 
					//what changes should be done sir

					for (AccountDetail ad : allRecords) {

						out.print("<h1 style=\"color:red\">" + ad.getName() + "</h1>");

						// all records are printing ... write this ith tbale 
					}
				}
			%>









		</div>

		<script>
			function myFunction() {

			}
		</script>