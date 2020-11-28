<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.lang.*" %>
    <%@page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

try
{
	System.out.println(request.getParameter("OPEN_ACCOUNT"));
if(request.getParameter("OPEN_ACCOUNT")!=null)
   {System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkkkk");
	 response.sendRedirect("open.html");
	}
   else if(request.getParameter("DEPOSIT")!=null)
   {
	   response.sendRedirect("deposit.html");
   }
   else if(request.getParameter("WITHDROW")!=null)
   {response.sendRedirect("withdrow.html");
	   
   }
   else if(request.getParameter("DISPLAY")!=null)
   {
	   response.sendRedirect("display.html");
   }
   else if(request.getParameter("ABOUT")=="ABOUT")
   {
	   response.sendRedirect("about.html");
   }
   else
   {
	   response.sendRedirect("WRONG.HTML");
   }
}
catch(Exception e)
{
	System.out.println(e);
}


%>
</body>
</html>