<%@page import="g.*" %>
<%@ page import = "g.verifyLogin1" %>
<%@ page import = "java.io.*,java.lang.*, org.apache.logging.log4j.LogManager,java.sql.ResultSet,java.util.*,java.sql.Connection,java.sql.PreparedStatement, javax.servlet.*, javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse" %>

<%UserDetails userDetails = (UserDetails) request.getSession().getAttribute("UserDetails");
if(userDetails == null){ %>
	<script type="text/javascript">
window.location.assign("/OnlineBankingServ");
</script>
<%} %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Global Banking ..</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>

</head>

<body>

<div id="top_links">
  

<div id="header">
	<h1>APANA - BANK<span class="style1"></span></h1>
    <h2>ExtraOrdinary Service</h2>
    <A href="index.html"><IMG SRC="images/home1.gif"></IMG></A>	
</div>

<div id="navigation">
    <ul>
<!--     <li><a href="create.html">NEW ACCOUNT</a></li> -->
    <li><a href="balance.jsp">BALANCE</a></li>
    <li><a href="deposit1.jsp">DEPOSIT</a></li>
    <li><a href="withdraw1.jsp">WITHDRAW</a></li>
    <li><a href="transfer1.jsp">TRANSFER</a></li>
    
    <li><a href="about.jsp">LOGOUT</a></li>
    </ul>
</div>



<table style="width:897px; background:#FFFFFF; margin:0 auto;">
<tr >
	<td width="300" valign="top" style="border-right:#666666 1px dotted;">
    	<div id="services"><h1>Services</h1><br>
		    <ul>
        	<li><a href="#">www.javatpoint.com</a></li>
            <li><a href="#">www.javacstpoint.com </a></li>
            <li><a href="#">www.javatpoint.com/forum.jsp</a></li>
            </ul>
			
       </div>
	</td>
    
    <td width="1200" valign="top">
    	
    	<% 
%>
				<form method="get" name=F1 onSubmit="return dil(this)" action="index.jsp" >
					<table cellspacing="5" cellpadding="3" style="color: white">	
				   		<tr>
				   			<td>ACCOUNT NO:</td>
				   			<td> <input type="text" name="accountno"/></td>
			   			</tr>
						<tr>
							<td>PASSWORD:</td>
							<td> <input type="password" name="password"/></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Submit"/> <input type=reset value="Clear"></td>
						</tr>
	             	</table>
				</form>
<jsp:forward page="balance1.jsp"></jsp:forward> 
			
    	</table>
    	
		</table>

<script>
function myFunction()
{
	
	}
</script>

  
