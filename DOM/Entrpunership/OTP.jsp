<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.Random" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:declaration>
int OTP;
String name;
String Mobile;
String Password;
</jsp:declaration>>
<%
Random rand=new Random();
OTP=rand.nextInt(9999);

%>
<%
 name=(String)request.getParameter("User");
 Mobile=(String)request.getParameter("Mobile");
 Password=(String)request.getParameter("Password");
 
%>
<center>
<form method=OTP.jsp">
<input type="number"name="OTP"placeholder="OTP"TITLE="This OTP is Valid only 10 Minute"class="input">
        <br><br>
        <input type="Submit"name="Submit"value="Sign In"class="Sub"><br>
        <a href="#" style="color:red;
        text_decoration:none;padding-left:0px;"class="input">Forget Password</a><br>
</form>
</center>

</body>
</html>