<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String color=request.getParameter("colorpick");
try
{	
	String TutorId=(String)session.getAttribute("TutorId");
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tutor","root","sarthak");
	PreparedStatement pst;
	String sql="Update profile set Banner_Color ='"+color+"' where Id='"+TutorId+"' ";
	pst=conn.prepareStatement(sql);
	pst.executeUpdate();
	response.sendRedirect("Profile.jsp?Profile="+TutorId);
}
catch(Exception e)
{
	System.out.println("Exception");
}

%>

</body>
</html>