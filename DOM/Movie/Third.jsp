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
.jumbo
{
background-color:black;
margin-left:-60px;
margin-right:-60px;
}
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
 v=(String)request.getParameter("text");
</jsp:scriptlet>

<nav class="navbar navbar-inverse "> 
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
<div class="col-sm-10">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
InetAddress thisip=InetAddress.getLocalHost();
 Ip=thisip.getHostAddress();
System.out.println(Ip);

   try
{
	   String z="Select * from Survay where Movie_Name='"+v+"' AND Ip='"+Ip+"' ";
		PreparedStatement p0=con.prepareStatement(z);
		ResultSet r5=p0.executeQuery(z);
		if(r5.next())
		{
			 a0=r5.getString("Likes");
			 a1=r5.getString("Dislikes");
			System.out.println("Likes="+a0);
			System.out.println("Disikes="+a1);
		
		
		}
		else 
		{System.out.println("Else Part.................");
			a0=null;
			a1=null;
		}
	   
}
catch(Exception e)
{
	 System.out.println("Problem Here");
}



%>
<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
	PreparedStatement pst;
	ResultSet rst;
	String sql="Select * from movie where Movie_Name='"+v+"' ";//OR Actor_Name='"+v+"' OR Date='"+v+"' OR  Actress_Name='"+v+"' OR Director='"+v+"' OR Singer='"+v+"' "; //AND password='"+request.getParameter("PIN")+"' ";
	 String sq="select distinct movie.Movie_Name,movie.Picture_Path,actors.Description,actors.Birthday,actors.Birth_Place,actors.Actor_name,actors.Actor_Picture,actors.Education,actors.Occupation,actors.Parents,actors.Year_Active,actors.Spouse from movie,casts,actors  where (casts.Actor='"+v+"'OR movie.Date='"+v+"' OR  movie.Actress_Name='"+v+"' OR movie.Director='"+v+"' OR movie.Singer='"+v+"') And movie.movie_Name=casts.Movie_Name And actors.Actor_Name=casts.Actor";
	PreparedStatement ps=conn.prepareStatement(sq);
	ResultSet rs=ps.executeQuery(sq);
	pst=conn.prepareStatement(sql);
	 rst=pst.executeQuery(sql);
	if(rst.next()!=false)
	{String s=rst.getString("Picture_Path");
	String t=rst.getString("Film_Type");
		%>
		<div style="margin-left:20px;">
		<img align="left" title="<%out.print(rst.getString("Movie_Name"));%>" style="width:400px;height:90vh;" class="img-resposive img-thumbnail"src=<%out.print(s);%>>
		</div>
		<div style="margin-left:20px;text-align:justify;">
		<center><h1><%out.print(rst.getString("Movie_Name"));%></h1></center>
		<h3 class="jumbotron" style="margin-left:0px;padding-top:10px;padding-bottom:10px; color:black;font-weight:bold;">Summery</h3>
		<h4><%out.println(rst.getString("Description")); %></h4><br/>
		<h4><span style="font-weight:bolder;">Release Date</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span><%out.println(rst.getString("Date"));%></span></h4>
		<h4><span style="font-weight:bolder;">Director</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.println(rst.getString("Director")); %></span></h4>
		<h4><span style="font-weight:bolder;">Box Office</span></h4>
		<h3 class="jumbotron"style="padding-top:10px;padding-bottom:10px;color:black;font-weight:bold;">Songs</h3>
		<%
		String My="Select * from Songs where Songs.Movie_Name='"+v+"' ";
		PreparedStatement p=conn.prepareStatement(My);
		ResultSet r=ps.executeQuery(My);
		while(r.next()){
			%><a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Songs.jsp?values=<%out.println(r.getString("song"));%>"><%out.println(r.getString("song"));%></a><%
			%>
			<br/>
			<%
		}
		System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
		
		%><br/>
		<span><p><span style="font-weight:bolder;font-size:25px;"><%out.println(rst.getString("Like_Percent")); %></span><span style="font-weight:bold;font-size:25px;">Like This Film</span><span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:15px;">What Do You Thing About This Movie?</span></span></p></span>
		
		<span><h4 style="font-size:50px; float:left;"title="Like" onclick="fun(1)" ><span class="glyphicon glyphicon-thumbs-up"></span></h4></span>		 
	 		<span><h4 style="font-size:50px;margin-left:60%;"title="Dislike" onclick="fun1(1);"><span class="glyphicon glyphicon-thumbs-down"></span></h4></span>
	 		<%
	 		
	 		String v0="";
	 		v0=(String)request.getParameter("values");
	 		
	 		System.out.println("v0==="+v0);
	 		String x="",y="";
	 		if("Like".equals(v0))
	 		{
	 			x="Like";
	 			y="0";
	 		}
	 		else if("Dislike".equals(v0))
	 		{
	 			x="0";
	 			y="Dislike";
	 		}
	 		
	 		System.out.println("a0==="+a0);
	 		System.out.println("a1==="+a1);
	 		if(a0==null && a1==null && v0!=null )
	 		{ System.out.println("WORKING..................................");
	 		try
	 		{PreparedStatement p8;
	 			String s11="insert into Survay(Movie_Name,Ip,Likes,Dislikes)VALUES('"+v+"','"+Ip+"','"+x+"','"+y+"')";
				 p8=conn.prepareStatement(s11);
				 p8.execute();
				 if(x.equals("Like"))
				 {%>
				 <h4>You Liked this Movie</h4>
				 <%
				 }
				 else if(y.equals("Dislike"))
				 {%>
				 <h4>You Disliked this Movie</h4>
				 <%
				 }
				 
				
				 
	 			
	 			
	 		}
	 		catch(Exception e)
	 		{
	 		System.out.println("Problem");	
	 		}
	 		}
	 		else if((a0!=null && v0!=null) || (a1!=null && v0!=null))
	 		{if(v0.equals(a0) || v0.equals(a1))
	 		{
	 			System.out.println("Else if Part ........");
	 			try{
	 				 PreparedStatement p9;
	 				 ResultSet r0;
	 				 String quer="delete  from survay where Movie_Name='"+v+"' AND Ip='"+Ip+"' ";
	 			     p9=conn.prepareStatement(quer);
	 			     p9.executeUpdate();     
					 System.out.println("On The Way....");
					 
					 
	 			}
					catch(Exception e)
					{
						System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkk");
					}
	 		}
	 		else if(!v0.equals(a0) || !v0.equals(a1))
	 		{
	 			System.out.println("Else if Part ........");
	 			try
	 			{
	 				
	 				PreparedStatement p20;
					String s20="Update survay SET Likes='"+x+"' ,  Dislikes='"+y+"' where Ip='"+Ip+"' AND  Movie_Name='"+v+"' ";
					 p20=conn.prepareStatement(s20);
					 p20.execute();		
					 System.out.println("Third.................");
					 if(x.equals("Like"))
					 {%>
					 <h4>You Liked this Movie</h4>
					 <%
					 }
					 else if(y.equals("Dislike"))
					 {%>
					 <h4>You Disliked this Movie</h4>
					 <%
					 }
					
					 
	 		}
					catch(Exception e)
					{
						System.out.println("nowwwww..............");
					}
	 		}
	 		
	 		
	 		}
	 		else if("Like".equals(a0) || "Dislike".equals(a1))
	 		{
	 			if("Like".equals(a0))
	 			{
	 			%>
	 			<h4>You Liked this Movie</h4>
	 			<%
	 			}
	 			else if("Dislike".equals(a1))
	 			{
	 				%>
	 				<h4>You Dislike this Movie</h4>
	 				<%
	 			}	
	 		}
	 		
	 		%>
		</div>
		<div>
		<h3 style="padding-top:10px;padding-bottom:10px;color:black;font-weight:bold;"class="jumbotron">Cast</h3>
		<%
		try{
			PreparedStatement p6;
			ResultSet result;
			String q="select * from Casts where Movie_Name='"+v+"' ";
			p6=conn.prepareStatement(q);
			result=p6.executeQuery(q);
			
			while(result.next())
			{
				%>
				
				<h4 style="margin-left:12px;float:left;"><%out.print(result.getString("Actor")); %> ,</h4>
				
				<%
			}
			%>
			<sub>...</sub>
			<br/><br/><br/><br/>
			<%
			
		}
		catch(Exception e)
		{
			
		}
		%>
		</div>
		<br/>
		<br/>
		<br/><br/>
		<div>
		<h3 style="padding-top:10px;padding-bottom:10px;color:black;font-weight:bold;"class="jumbotron">Suggested</h3>
		<%
		try
		{
			PreparedStatement p25;
			ResultSet result7;
			String s7="select * from movie where Film_Type='"+t+"' AND Movie_Name!='"+v+"' ";
			p25=conn.prepareStatement(s7);
			result7=p25.executeQuery(s7);
			while(result7.next())
			{
%>
				
				
			<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.println(result7.getString("Movie_Name"));%>&Submit=Search"><img src=<%out.println(result7.getString("Picture_Path"));%> align="left"class="img-responsive img-thumbnail" style="width:150px;height:250px;margin-right:10px;"title="<%out.println(result7.getString("Movie_Name"));%>"></a>
				<%	
			}
			
			
		}
		catch(Exception e)
		{
			
		}
		%>
		</div>
		<%
		}
	
	 
	 else
		 {
		
	 int a=0;
	 
while(rs.next())
{ 
	
	if(a==0)
{System.out.println("Working at that Palce");
	%>
	<div class="container-fluid">
	<h1><%out.println(rs.getString("Actor_name"));%></h1>
	<p class="jumbotron" style="margin-left:5px;color:red;padding-top:8px;padding-bottom:8px;font-size:100%;color:black;font-weight:bold;">Your Searching Result Found</p>
	<div class="row">
	<div class="col-sm-8">
	<p style="text-align:justify;"><%out.println(rs.getString("Description"));%></p>
	</div>
	<div class="col-sm-4">
	<div class="panel" style="border:1px solid gray;color:black;">
	<div class="panel-heading">
<center><h4><%out.println(rs.getString("Actor_name"));%></h4>
<a href="#"><img src="<%out.println(rs.getString("Actor_Picture"));%>" title="<%out.print(rs.getString("Actor_name"));%>" style="width:200px;height:250px;" class="img-resposive img-thumbnail"></a></center>
	</div>
	<div class="panel-body">
	
	<table>
	<tr>
	<td>
	
	<h5 style="font-weight:bold;">Born</td><td><span style="font-weight:normal;"><%out.println(rs.getString("Birthday"));%></span></h5></td></tr>
		<tr><td>
	<h5 style="font-weight:bold;">Birth Place</td><td><span style="font-weight:normal;"><%out.println(rs.getString("Birth_Place"));%></span></h5></td></tr>
	
	<tr><td><h5 style="font-weight:bold;">Education</td><td><span style=font-weight:normal;"><%out.println(rs.getString("Education"));%></span></h5></td></tr>
	
<tr><td><br/>	<h5 style="font-weight:bold;">Occupation</td><td><br/><span style="font-weight:normal;"><%out.println(rs.getString("Occupation"));%></span></h5></td></tr>

<tr><td><br/>	<h5 style="font-weight:bold;">Spouse</td><td><br/><span style="font-weight:normal;"><%out.println(rs.getString("Spouse"));%></span></h5></td></tr>

<tr><td>	<h5 style="font-weight:bold;">Year Actives</td><td><span style="font-weight:normal;"><%out.println(rs.getString("Year_Active"));%></span></h5></td></tr>

<tr><td><br/>	<h5 style="font-weight:bold;">Parents</td><td><br/><span style="font-weight:normal;"><%out.println(rs.getString("Parents"));%></span></h5></td></tr>
	</table>
	<h1 class="tooltip">Hover Over Me
	<span class="tooltiptext"><span><img src="C:\Users\user\Desktop\Html\IMAGE\255px-Flag_of_India.svg.png" style="width:200px;height:100px;"><p>Indian flag is a flag of india it is also called tiranga tiranga has three color first is Saffron,White and Green Indian flag is a flag of india it is also called tiranga tiranga has three color first is Saffron,White and Green Indian flag is a flag of india it is also called tiranga tiranga has three color first is Saffron,White and Green Indian flag is a flag of india it is also called tiranga tiranga has three color first is Saffron,White and Green Indian flag is a flag of india it is also called tiranga tiranga has three color first is Saffron,White and Green</p></span></span></h1>
	<br/>
	</div>
	</div>
	
	</div>
	</div>
	</div>	
    <div class="jumbotron"style="margin-left:5px;color:red;padding-top:8px;padding-bottom:8px;font-size:100%;color:black;font-weight:bold;">
    <h4>
    Movie List
    </h4>
    </div>
	<%
	a++;
}
	String s=rs.getString("Picture_Path");
	%>
	<div style="float:left;margin-left:20px;">
	<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.println(rs.getString("Movie_Name"));%>"><img align="left" title="<%out.print(rs.getString("Movie_Name"));%>" style="width:200px;height:300px;" class="img-resposive img-thumbnail"src=<%out.print(s);%>></a>
	<center><h4><%out.print(rs.getString("Movie_Name"));%></h4></center>
	</div>
	<%
	}
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<input type="text"value="<%out.print(v);%>"id="Copy"hidden/>
</div>
</div>
</div>
<form>

</form>

<div class="container-fluid">
<div class="jumbo">
<div class="row" >
<div class="col-sm-12">
<h4 style="padding-left:10px;padding-top:10px;padding-left:50px;">Help</h4>
<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Tv_Hall.jsp?Movie_Name=<%out.println(v);%>"style="padding-left:10px;padding-top:10px;padding-left:50px;">Theater</a>
<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Register.jsp?data=<%out.println(v);%>" style="padding-left:10px;padding-top:10px;padding-left:50px;">Reminder</a>
<h4 style="padding-left:10px;padding-top:10px;padding-left:50px;">Social Sites</h4>
<div id="socialicons">
			<center>		
<a class="icon" href="LINK" title="Follow with Twitter" target="_blank" class="width:50px;"><i class="fa fa-twitter" style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Facebook" target="_blank"><i class="fa fa-facebook" style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Instagram" target="_blank"><i class="fa fa-instagram" style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Google Plus" target="_blank"><i class="fa fa-google-plus"style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with Pinterest" target="_blank"><i class="fa fa-pinterest"style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="LINK" title="Follow with YouTube" target="_blank"><i class="fa fa-youtube"style="font-size:40px;text-align:left;"></i></a>
<a class="icon" href="mailto:LINK" title="Email Me" target="_blank"><i class="fa fa-envelope"style="font-size:40px;text-align:left;"></i></a>


  
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
int j=0;
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
		q[j]=rst.getString("Industry");
		//ar.add(rst.getString("Industry"));
		%>
		<li><a href="Actors.jsp#<%out.print(rst.getString("Industry"));%>"><%out.println(rst.getString("Industry"));%></a></li>
		<%
		j++;
	
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
<%

%>
 <script language="Javascript">
		  var value="";
		  function fun(a)
		  { value="Like";
			  var c=document.getElementById("Copy").value;
			 alert(value);
			  window.location.replace("http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text="+c+"&values="+value);
			}
		  function fun1(b)
		  {alert("Function=Dislike");
		  value="Dislike";
		 var c=document.getElementById("Copy").value;
		 alert(c);
		  window.location.replace("http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text="+c+"&values="+value);
		  }
		  
		 	
		  </script>
</body>
</html>