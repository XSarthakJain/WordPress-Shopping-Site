<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.lang.*" %>
    <%@page import="java.io.BufferedReader"%>
	<%@page import="java.io.InputStreamReader"%>
	<%@page import="java.io.OutputStreamWriter"%>
	<%@page import="java.net.URL"%>
	<%@page import="java.net.* "%>		
	<%@page import="java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Style.css">
</head>
<body class="bgground">
<jsp:declaration>
int OTP;
</jsp:declaration>
<div class="cent">
	<div class="log"><h1>Sign In</h1></div>
	<form method="get" action="OTP.jsp">
		<center>
		<input type="text" name="User" class="input"placeholder="Username"><br><br>
		<input type="Password" name="Password" class="input"placeholder="Password"><br><br>
		<input type="text" name="Password1" class="input"placeholder="Retype Password"><br><br>
		<input type="number"name="Mobile"placeholder="Mobile Number"class="input"><br>
		
		<a href="#" style="color:red;
        text_decoration:none;"class="input" onclick="OTP()">Send OTP</a><br>
        <%
        Random rand=new Random();
        OTP=rand.nextInt(9999);
        System.out.println(OTP);
        %>
        <input type="number"name="OTP"placeholder="OTP"TITLE="This OTP is Valid only 10 Minute"class="input">
        <br><br>
        <input type="Submit"name="Submit"value="Sign In"class="Sub"><br>
        <a href="#" style="color:red;
        text_decoration:none;padding-left:0px;"class="input">Forget Password</a><br>
       
		</center>
	</form>
	
        <button style="color:blue;border-radius:20%;margin-top:-50px;background-color:red;" name="OTP_BTN">Send OTP</button>
        <%System.out.println(request.getParameter("OTP_BTN")); %>
</div>
</div>

<%


//if(request.getParameter("Submit")!="")
%>



<script type="text/javascript">
function OTP()
{
	alert("Working.......");
	
	}
</script>

</body>
</html>