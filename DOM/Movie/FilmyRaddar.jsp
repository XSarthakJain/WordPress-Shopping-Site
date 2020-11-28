
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>	
    <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</head>
<style>
html,body
{
	margin:0px;
	padding:0px;
}
.backgroundimg
{
	background-image:url('https://s-i.huffpost.com/gen/1909465/images/o-OLD-MOVIE-FILM-facebook.jpg');
	background-size:cover;
	backgeround-position:center center;
	background-repeat:no-repeat;
	height:100vh;
	width:100%;
	margin-top:-20px;
	padding-right:0px;
	margin-left:0px;
}
.jumbo
{
background-color:black;
margin-left:-60px;
margin-right:-60px;
}
</style>
<body>
<div >
<nav class="navbar navbar-inverse navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
     		<div class="nevbar-header">
			<a href="#" class="navbar-brand" title="FilmyDuniya" >FilmyDuniya</a>
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
</div>

<div class="row backgroundimg">
<form action="Third.jsp">
<center><input type="text"name="text"placeholder="Search"size="20px solid red" style="margin-top:30%;width:60%;height:40px;border-radius:5px;" list="datalist1"autofocus/>
<datalist id="datalist1" hidden>
<% 
try{	



	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
	PreparedStatement pst;
	ResultSet rst;
	System.out.println("Yessssssssssssssssssssssssssssss");
	String sql=" select movie.Movie_Name,casts.Actor,songs.song from movie Inner join casts on movie.Movie_Name=casts.Movie_Name inner join songs on songs.Movie_Name=movie.Movie_Name;";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
	while(rst.next())
	{
%><%out.println("hghhhg"); %>
<option value="<%out.println(rst.getString("Movie_Name"));%>">
<option value="<%out.println(rst.getString("Actor"));%>">
<option value="<%out.println(rst.getString("song"));%>">
<%} %>
</datalist>
<%
}
catch(Exception e)
{System.out.println(e);
}
%>
<input type="submit"name="Submit"value="Search"style="margin-left:-80px;background-color:skyblue;border-radius:5px;width:60px;"/></center>
</form>
	<div class="container">
		
	
</div>
</div>
<div class="container">
<div class="jumbotron" style="margin-top:25px;padding-bottom:5px;padding-top:5px;">
<h4>Current Movies</h4>
</div>
<div class="row jumbotron"style="margin-left:-80px;margin-right:-80px;">
	<div class="col-sm-12">
	<center>
	<%
	try{
		int i;
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
		PreparedStatement pst;
		ResultSet rst;
		String sql="select * from movie where (Date between (current_date-interval 30 day) AND (current_date+interval 30 day))";
		pst=conn.prepareStatement(sql);
		rst=pst.executeQuery(sql);
		
		while(rst.next())
		{
			
		%>
		<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.print(rst.getString("Movie_Name"));%>" style="margin-left:-5px;border:none;" title="<%out.print(rst.getString("Movie_Name"));%>"><img src="<%out.println(rst.getString("Picture_Path"));%>"align="left" class="img-responsive img-thumbnail" width="200px"  style="margin-left:45px;height:300px;margin-top:20px;"/></a>
		<%
		
		}
		
		
		
	}
	catch(Exception e)
	{
		
	}

	%>
		
		</center>
</div>	
</div>
<div class="jumbotron"style="margin-top:25px;padding-bottom:5px;padding-top:5px;">
<h4>Film Industries</h4>
</div>
<%

try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
	PreparedStatement pst;
	ResultSet rst;
	String sql="Select * from others";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
	
	while(rst.next())
	{
		
		
		%>
		
<div class="row">
<div class="col-sm-8" style="text-align:justify;"hspace:10px;vspace:10px;>
<p>
<h2 style="text-align:left;margin-left:15px;" Title="<%out.println(rst.getString("Industry"));%>"><%out.println(rst.getString("Industry"));%></h2>
<a href="#"><img src=<%out.println(rst.getString("Industry_Picture"));%> align="left"class="img-responsive img-circle" width="200px"title="<%out.print(rst.getString("Industry"));%>"/></a>
<%out.println(rst.getString("Description"));%>
</p></div>
<div class="col-sm-4">
<div class="panel panel-primary" style="margin-top:60px;">
   <div class="panel-heading">
<h4><%out.println(rst.getString("Industry"));%></h4>
   </div>

		
		
		
		<%String In=rst.getString("Industry");
			try
		{
				PreparedStatement ps;
				Connection con;
				ResultSet rs;
				String sq="select * from movie where (Date between (current_date-interval 15 day) AND (current_date+interval 15 day)) AND Film_Industry='"+In+"' ";
				ps=conn.prepareStatement(sq);
				rs=ps.executeQuery(sq);
			
			while(rs.next()){%>
			<div class="panel-body">
			<p>
<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.print(rs.getString("Movie_Name"));%>"><img src="<%out.print(rs.getString("Picture_Path"));%>" align="left"class="img-responsive img-thumbnail" width="150px"title="<%out.println(rs.getString("Movie_Name"));%>"/></a>
Movie Name-<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.print(rs.getString("Movie_Name"));%>"><span style="color:red;"><%out.println(rs.getString("Movie_Name"));%>
</span></a><br/>
Production-<span style="color:red;">Xyz Production</span></p>
</div>
		
			
			
			<%
			}
			%>
			</div>
</div>
			<%
		}
		catch(Exception e)
		{
			
		}
		
		
	
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
</div>

<div class="container-fluid">
<div class="jumbo">
<div class="row" >
<div class="col-sm-12">
<h4 style="padding-left:10px;padding-top:10px;padding-left:50px;">Logout With</h4>
<a href="https://www.facebook.com/logout.php?ref=ds&h=Affo9VEJG9sfoJgd"style="padding-left:10px;padding-top:10px;padding-left:50px;">Facebook Logout</a>
<a href="https://accounts.google.com/Logout?hl=en-GB&continue=https://mail.google.com/mail&service=mail&timeStmp=1534599964&secTok=.AG5fkS9o8bENh_jsqD5SXUTsrkCsNziaeg"style="padding-left:10px;padding-top:10px;padding-left:50px;">Google Account Logout</a>
<h4 style="padding-left:10px;padding-top:10px;padding-left:50px;">Social Sites</h4>
<div id="socialicons">
			<center>		<ul>
<a class="icon" href="LINK" title="Follow with Twitter" target="_blank" class="width:50px;"><i class="fa fa-twitter" style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Facebook" target="_blank"><i class="fa fa-facebook" style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Instagram" target="_blank"><i class="fa fa-instagram" style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Google Plus" target="_blank"><i class="fa fa-google-plus"style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Pinterest" target="_blank"><i class="fa fa-pinterest"style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with YouTube" target="_blank"><i class="fa fa-youtube"style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="mailto:LINK" title="Email Me" target="_blank"><i class="fa fa-envelope"style="font-size:40px;text-align:left;"></i></a>
</ul>

  
			</center>
		</div>

</div>
</div>
<div class="row">
<div class="col-sm-12">
<h4   style="align:left;padding-left:50px;">
ACTOR</h4>
<ul class="nav navbar-nav"style="padding-left:50px;">
<%
String q[]=new String[10];
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
		q[i]=rst.getString("Industry");
		//ar.add(rst.getString("Industry"));
		%>
		<li><a href="Actors.jsp#<%out.print(rst.getString("Industry"));%>"><%out.println(rst.getString("Industry"));%></a></li>
		<%
		i++;
	
	}
	
	
	
}
catch(Exception e)
{
	
}




%>
</ul>
</div>
</div>
<div class="row">
<hr style="
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
 ">
<div class="col-sm-12">

 <h4 style="align:left;padding-left:50px;">Discover Site</h4>
 
 <ul class="nav navbar-nav"style="padding-left:50px;">
 
 <li><a href="#">About us</a></li>
 <li><a href="#">Contact Us</a></li>
 <li><a href="#">Search Tips</a></li>
 <li><a href="#">Tearms and Condition</a></li>
 </ul>
 </div>
 </div>
 <br/>
 <div class="row ">
 <hr style="
    margin-left:auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
 ">
 <div class="col-sm-8">
 
 <a href="#" class="navbar-brand"style="padding-left:50px;">MovieRaddar</a>
 </div>
 <div class="col-sm-4">
 <ul class="nav navbar-nav navbar-right" style="padding-right:50px;padding-bottom:20px;padding-left:50px;">
 <li><a href="#">Privacy Policy</a></li>
 <li><a href="#">Tearms & Condition</a></li></ul>
 
</div>
</div>
</div>
</div>
</body>
</html>