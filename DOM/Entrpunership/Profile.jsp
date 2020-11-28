
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>	
    <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="https://www.shareicon.net/data/128x128/2015/09/24/106774_camera_512x512.png"/>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width-device-width, initial-state=1/">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<link rel="stylesheet" href="Style1.css">
</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Patua+One');
</style>
<body>
<div class="wrapper">
<nav class="navbar navbar-inverse navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
     		<div class="nevbar-header">
			<a href="#" class="navbar-brand" title="FilmyDuniya" >Hindustan</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#BookStore" style="margin-right:0px;margin-bottom:35px;"/>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 			</button>
		</div>
		<div class="nav nabbar-nav navbar-right"Style="margin-top:10px;">
			
		</div>
		<div class="collapse navbar-collapse" id="BookStore">
		<ul class="nev navbar-nav">
			<li style="margin-top:15px; margin-left:15px;list-style:none;"title="Home"><a href="#" style="text-decoration:none;">Home</a></li>
		    <li style="margin-top:15px; margin-left:15px;list-style:none;"title="Contact Us"><a href="#"style="text-decoration:none;">Contact Us</a></li>
		</ul>
		</div>
	</div>
</nav>
<%
String id=(String)request.getParameter("Id");
try
{
	Class.forName("com.mysql.jdbc.Driver");
  	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Entrpunership","root","sarthak");
  	PreparedStatement pst;
  	ResultSet rst;
  	System.out.println("Yessssssssssssssssssssssssssssss");
  	String sql=" select * from verification where Id='"+id+"' ";
  	pst=conn.prepareStatement(sql);
  	rst=pst.executeQuery(sql);
  	if(rst.next())
  	{
  		String pic=rst.getString("pic");
  		String name=rst.getString("Username");
  		String Subject=rst.getString("Subject");
  		String Address=rst.getString("Address");
  		String Education=rst.getString("Education");
  		String Email=rst.getString("Id");
  		String Quote=rst.getString("Quotes");
  		
  		%>
  		
  		<div class="Container"style="margin:5%;">
  		<div class="row">
  		<div class="col-sm-2">
  		</div>
  		<div class="col-sm-8">
  		     	<br><br><br>
  		 		<h1 style="font-family: 'Patua One', cursive;"><%out.println(name);%></h1>
  		<div class="panel panel-primary"style="width:100%;">
  		<div class="panel-heading">
  				<h2 style="font-weight:bolder;"><%out.println(name);%></h2>
  		</div>
  		<div class="panel-body">
  				<img src=<%out.println(pic);%>style="width:250px;height:250px;border-radius:100%;"class="img-responsive">
  		<div class="row">
  		<div class="col-sm-6"style="margin-left:35px;">
  				<h3><%out.println(name);%></h3>
  				<h4><%out.println(Subject);%></h4>
  				<h4><%out.println(Address);%></h4>
  				<a href="#" class="btn btn-info btn-lg">
          		Message 
        		</a>
  		</div>
  		<div class="col-sm-4">
  				<h4 style="margin:15px 0px 0px 30px;font-weight:normal;"><span class="glyphicon glyphicon-education"></span>&nbsp;<%out.println(Education);%></h4>
  				<h4 style="margin:15px 0px 0px 30px;font-weight:normal	;" onclick="fun('<%=Email%>')"><span class="glyphicon glyphicon-envelope"></span>&nbsp;<%out.println("See Contact Info");%></h4>
  		</div>
  		</div>
  				<br><br>
  				<p><%out.println(Quote); %></p>
  		</div>
  		</div>
  		</div>
  		<div  class="col-sm-2"style="margin:8%;">
  		</div>
  		</div>
  		</div>
  		<%
  	}
}
catch(Exception e)
{
	
}
%>




<script language="Javascript">
function fun(s)
{ 
	
	
	alert(s);
}
</script>
</body>
</html>