<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
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
<meta charset="utf-8"/>
	<meta name="viewport" content="width-device-width, initial-state=1/">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="http://pixelcog.github.io/parallax.js/parallax.js"></script>
</head>
<style>
.First
{position:relative;
	display:inline-block;
	border:bottom:1px dotted black;}
.First .Second
{
	visibility:hidden;
	width:auto;
	height:400px;
	background-color:#555;
	color:#fff;
	text-align:center;
	border-radius:6px;
	padding:5px 0;
	position:absolute;
	z-index:1;
	top:0px;
	bottom:125%;
	left:80%;
	margin-left:-60px;
	opacity:0;
	transaction:opacity 1s;
	}

.First:hover .Second
{
visibility:visible;
	opacity:1;
	transition-duration: 1s;
}
body
{background-color:rgba(0,0,0,0.8);
color:white;
}
.glyphicon-thumbs-up:hover
{color:green;
}
.glyphicon-thumbs-down:hover
{
color:red;

}
</style>
<script>
var a="xyz";
</script>
<body>
<jsp:declaration>
String v;

String Ip ,a0="",a1="",a3="";

</jsp:declaration>
<jsp:scriptlet>
 v=(String)request.getParameter("Movie_Name");
</jsp:scriptlet>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
     		<div class="nevbar-header">
			
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#Left-side-slider" style="margin-right:0px;margin-bottom:5px;position:absolute;top:-8px;left:0px;"/>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 			</button>
		</div>
		
		
	</div>
</nav>


<nav class="navbar navbar-inverse">
	<div class="container-fluid">
     		<div class="nevbar-header">
			<a href="#" class="navbar-brand" title="FilmyDuniya">FilmyDuniya</a>
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
		<%

String q1[]=new String[10];
ArrayList<String> ar=new ArrayList<String>();
int i=0;
try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://https://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
	PreparedStatement pst;
	ResultSet rst;
	String sql="Select distinct Industry from actors";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
	
	while(rst.next())
	{
		q1[i]=rst.getString("Industry");
		//ar.add(rst.getString("Industry"));
		i++;
	
	}
	
	
	
}
catch(Exception e)
{
	
}

		
		%>
		<ul class="nev navbar-nav">
			<li style="margin-top:15px; margin-left:15px;list-style:none;"title="Home"><a href="#" style="text-decoration:none;">Home</a></li>
		    <li style="margin-top:15px; margin-left:15px;list-style:none;"title="Contact Us"><a href="#"style="text-decoration:none;">Contact Us</a></li>
		</ul>
		</div>
	</div>
</nav>
<div class="container">
<div class="row">
<div class="col-sm-2 collapse navbar-collapse"  id="Left-side-slider" style="margin-top:15%;">
<center><div style=""><h2>Industry</h2></div></center>
<%
for(int m=0;m<i;m++)
	{
	%>
	<ul>
<%
	Class.forName("com.mysql.jdbc.Driver");
	
Connection conn=DriverManager.getConnection("jdbc:mysql://https://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
PreparedStatement pst;
ResultSet rst;
String sql="Select * from actors where Industry='"+q1[m]+"' ";
pst=conn.prepareStatement(sql);
rst=pst.executeQuery(sql); 
%>
<li style="list-style-type:none;"class="dropdown"><a href="#ssss" style="text-decoration:none;"class="dropdown-toggle"data-toggle="dropdown"><%out.println(q1[m]); %><span class="caret"></span></a>
<ul class="dropdown-menu">
<%while(rst.next())
	{
	%>
<li style="list-style-type:none;"><a href="http://https://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.println(rst.getString("Actor_Name"));%>" style="text-decoration:none;"class="First"><%out.println(rst.getString("Actor_Name"));%>
     <div class="Second" style="padding:8px;">
     	<img src="<%out.println(rst.getString("Actor_Picture"));%>"style="width:200px;height:200px;">
     	<h4><%out.println(rst.getString("Actor_Name"));%></h4>
     	<p><%out.println(rst.getString("Actor_Name"));%> is an <%out.println(rst.getString("Occupation"));%> and <%out.println(rst.getString("Actor_Name"));%> belongs to <%out.println(rst.getString("Industry"));%></p>
     	<p><%out.println(rst.getString("Actor_Name"));%> born in <%out.println(rst.getString("Birthday"));%></p>
     	<p><%out.println(rst.getString("Actor_Name"));%> Parent name <%out.println(rst.getString("Parents"));%></p>
     </div>
     
	</a></li>

<%} %>
</ul>
</li>
</ul>
<%} %>
<%
String q2="";
String v2=request.getParameter("hide");
System.out.println(v);
System.out.println(v2);
if(v==null || v.isEmpty())
{
	q2=v2;
}
else{
	q2=v;
}
%>
</div>
<div class="col-sm-10"style="background-image:url('http://www.pptbackgrounds.org/uploads/film-movies-movie-making-minimalism-creative-backgrounds-wallpapers.jpg');
	background-size:cover;
	backgeround-position:center;
	background-repeat:no-repeat;
	height:100vh;
	width:80%;
	margin-top:-20px;
	padding-right:0px;
	margin-left:0px;">
	
	
	<form style="color:black;">
	<center><input type="text" class="form-control"style="position:absolute;top:20%;left:0px;padding-right:0%;margin-left:0px;"name="city" autofocus placeholder="Place Name"/></center>
	<input type="submit"value="Search"style="position:absolute;top:21%;right:5px;border-radius:5px;background-color:skyblue;"name="sub">

<input type="text"name="hide"value="<%out.println(q2);%>"hidden>
	</form>

</div>
</div>

</div>
<div class="container">
<div class="row">
<div>
<%
String q="";
String v1=request.getParameter("hide");
System.out.println(v);
System.out.println(v1);
if(v==null || v.isEmpty())
{
	q=v1;
}
else{
	q=v;
}

String a=request.getParameter("city");
System.out.println("city="+a);
if(a==null || a.isEmpty())
{
try
{

	Class.forName("com.mysql.jdbc.Driver");
	
Connection conn=DriverManager.getConnection("jdbc:mysql://https://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
PreparedStatement pst;
ResultSet rst;
String sql="Select * from theater where Movie_Name='"+q+"' ";
pst=conn.prepareStatement(sql);
rst=pst.executeQuery(sql);
%>
<h3 class="jumbotron"style="padding-top:5px;padding-bottom:5px;color:black;"><%out.println(q);%></h3>
<%
String na="";
while(rst.next())
		{
	%>
	<div class="row">
	<div class="col-sm-6">
	   <%try{ 
		   PreparedStatement ps;
		   ResultSet rs;
		   Connection con=DriverManager.getConnection("jdbc:mysql://https://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
		   String sq="Select * from city where CityName='"+rst.getString("Location")+"' ";
		   ps=con.prepareStatement(sq);
		   rs=ps.executeQuery(sq);
	   while(rs.next())
	   {
	   %>
		<h4><img src="<%out.println(rs.getString("City_Picture"));%>"style="margin-left:15%;width:20%; height:20%; border-radius:50%;">
		<%out.println(rst.getString("Location"));%></h4>
		<br/>
		<%
	   }
	   }
	   catch(Exception e)
	   {
		   
	   }
	
	
	
	     na=(String)rst.getString("Location");
	     %>
	     <h4 style="margin-left:20%;"><%out.println(rst.getString("Theater_Name"));%></h4>
	       <h4 style="margin-left:20%;"><%out.println(rst.getString("Contact_Number"));%></h4>
	      <a href="#"><h4 style="margin-left:20%;"><%out.println(rst.getString("Website"));%></h4></a>
	     
	       <br/>
	       </div>
	       <div class="col-sm-6">
	       <br/>
	        <img src="<%out.println(rst.getString("Theater_Picture"));%>"style="width:50%;height:35%;margin-left:10%;"class="img-thumbnail img-responsive">
	       </div>
	       </div>
	       <hr color="black"width="100%"size="10px">
	     <%
		}
}
catch(Exception e)
{
	
}
}
else
{
	System.out.println("Else Part");
	
	try
	{

		Class.forName("com.mysql.jdbc.Driver");
		
	Connection conn=DriverManager.getConnection("jdbc:mysql://https://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
	PreparedStatement pst;
	ResultSet rst;
	String sql="Select * from theater where Movie_Name='"+q+"' and Location='"+request.getParameter("city")+"'  ";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
	%>
	<h3 class="jumbotron"style="padding-top:5px;padding-bottom:5px;color:black;"><%out.println(q);%></h3>
	<%
	String na="";
	while(rst.next())
			{
		%>
		<div class="row">
		<div class="col-sm-6">
		   <%try{ 
			   PreparedStatement ps;
			   ResultSet rs;
			   Connection con=DriverManager.getConnection("jdbc:mysql://https://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
			   String sq="Select * from city where CityName='"+rst.getString("Location")+"' ";
			   ps=con.prepareStatement(sq);
			   rs=ps.executeQuery(sq);
		   while(rs.next())
		   {
		   %>
			<h4><img src="<%out.println(rs.getString("City_Picture"));%>"style="margin-left:15%;width:20%; height:20%; border-radius:50%;">
			<%out.println(rst.getString("Location"));%></h4>
			<br/>
			<%
		   }
		   }
		   catch(Exception e)
		   {
			   
		   }
		
		
		
		     na=(String)rst.getString("Location");
		     %>
		     <h4 style="margin-left:20%;"><%out.println(rst.getString("Theater_Name"));%></h4>
		       <h4 style="margin-left:20%;"><%out.println(rst.getString("Contact_Number"));%></h4>
		      <a href="#"><h4 style="margin-left:20%;"><%out.println(rst.getString("Website"));%></h4></a>
		     
		       <br/>
		       </div>
		       <div class="col-sm-6">
		       <br/>
		        <img src="<%out.println(rst.getString("Theater_Picture"));%>"style="width:50%;height:35%;margin-left:10%;"class="img-thumbnail img-responsive">
		       </div>
		       </div>
		       <hr color="black"width="100%"size="10px">
		     <%
			}
	}
	catch(Exception e)
	{
		
	}

}
%>

</div>
</div>
</div>
</body>
</html>