<%@ page session="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>	
    <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="Style.css">
<body class="bgground">
	<div>
<div class="cent">
	<div class="log"><h1>Sign In</h1></div>
	<form method="get">
		<center>
		<input type="Email" name="User" class="input"placeholder="Username"><br><br>
		<input type="Password" name="Password" class="input"placeholder="Password"><br><br>
		<input type="Submit"name="Submit"value="Login"class="Sub"><br>
		<a href="#" style="color:red;text_decoration:none;">forget Password</a>
		</center>
		<a href="Create_Account.jsp" style="color:red;text_decoration:none;margin-left:25%;">Sign Up</a>
		
		
	</form>
</div>
</div>
<%
String r=(String)request.getParameter("User");
String p=(String)request.getParameter("Password");
System.out.println(r);
try{	


    String sub,pass;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Entrpunership","root","sarthak");
	PreparedStatement pst;
	ResultSet rst;
	System.out.println("Yessssssssssssssssssssssssssssss");
	String sql=" select * from accounts where Email='"+r+"' and Password='"+p+"'";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
	while(rst.next())
	{	
		String Id=rst.getString("Id");
		HttpSession session=request.getSession();
    	System.out.println("Id = "+Id);
    	session.setAttribute("Id",Id);
		response.sendRedirect("Profiles.jsp");
	
	}
}
catch(Exception e)
{
 out.println("Please Insert Valide Username and password");
}
%>
</body>
</html>