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
<meta name="viewport" content="width-device-width, initial-state=1/">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="http://pixelcog.github.io/parallax.js/parallax.js"></script>
<title>Insert title here</title>
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

<body>
<jsp:declaration>
String v;
String m;
</jsp:declaration>
<jsp:scriptlet>
 v=(String)request.getParameter("values");
</jsp:scriptlet>
<nav class="navbar navbar-inverse navbar-fixed-top">
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

<nav class="navbar navbar-inverse navbar-fixed-top;">
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
	Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
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
<div class="row"><div class="col-sm-2 collapse navbar-collapse"  id="Left-side-slider" style="margin-top:15%;">
<center><div style=""><h2>Industry</h2></div></center>
<%
for(int m=0;m<i;m++)
	{
	%>
	<ul>
<%
	Class.forName("com.mysql.jdbc.Driver");
	
Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
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
<li style="list-style-type:none;"><a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.println(rst.getString("Actor_Name"));%>" style="text-decoration:none;"class="First"><%out.println(rst.getString("Actor_Name"));%>
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
</div>

<div class="col-sm-10">
			<%
			try{
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
				PreparedStatement pst;
				ResultSet rst;
				String sql="Select * from songs where song='"+v+"' ";
				pst=conn.prepareStatement(sql);
				rst=pst.executeQuery(sql); 				
				while(rst.next()!=false)
				{m=rst.getString("Movie_Name");
			%>
    <iframe style="height:70vh;width:80%;" src="<%out.print(rst.getString("Video"));%>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    <h4><%out.println(v);%>-Full Song Video <%out.println(rst.getString("Movie_Name"));%></h4>
    <p>Artist :&nbsp;&nbsp;<%out.println(rst.getString("Artist"));%></p>
    <p>Movie :&nbsp;&nbsp;<%out.println(rst.getString("Movie_Name"));%></p>
    <h1 class="jumbotron"style="color:black;padding-top:5px;padding-bottom:5px;">Lyrics</h1>
    <div>
    <div class="row">
    <div class="col-sm-4">
    <p style="text-align:justify;font-size:17px;"><%out.println(rst.getString("Lyrics"));%></p>
    </div>
    <div class="col-sm-8">
    <img src="<%out.println(rst.getString("Poster"));%>"style="width:100%;height:50vh;margin-top:15vh;margin-bottom:20px;box-shadow:5px 3px 1px gray;border-radius:10px;"class="img-responsive" >
    </div>
    </div>
    </div>
			<%}
				

					
				}
			catch(Exception e)
			{
				
			}
			
			
    %>
 
    <div class="row"><%
    try
	{int n=1;
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
		PreparedStatement ps;
		ResultSet rs;
		String sq="Select * from songs where Movie_Name='"+m+"' AND song!='"+m+"' ";
		ps=con.prepareStatement(sq);
		rs=ps.executeQuery(sq); 				
		while(rs.next()!=false)
		{
	 %>
	 <center><a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Songs.jsp?values=<%out.print(rs.getString("song"));%>"title="<%out.print(rs.getString("song"));%>"style="float:left;margin-left:15px;font-size:30px;"><%out.print(n);%></a></center>
	 <%
	 n++;
		}
		}
	catch(Exception e)
	{
		
	}


    %>
    </div>
</div>
</div>

</div>


</body>
</html>