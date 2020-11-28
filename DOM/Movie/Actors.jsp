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
<link rel="icon" type="image/png" href="https://www.shareicon.net/data/128x128/2015/09/24/106774_camera_512x512.png"/>
	<meta charset="utf-8"/>
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
#sarthak
{
background-color:rgba(0,0,0,0.8);
background-size:cover;
	backgeround-position:center center;
	background-repeat:no-repeat;
	
	width:100%;
	margin-top:-20px;
	padding-right:0px;
	margin-left:0px;
	background-size:cover;
	

}


</style>

<body>
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
 			<nav class="navbar navbar-inverse navbar-fixed-top">

<div class="container-fluid">
<div class="nevbar-header">
			<a href="#" class="navbar-brand" title="FilmyDuniya">FilmyDuniya</a>
			
		</div><form>
<center><input type="text"name="Actor"placeholder="Search Actor"size="20px solid red" style="margin-top:10px;margin-bottom:10px;padding-top:5px;padding-bottom:5px;width:60%;padding-left:15px;height:40px;border-radius:5px;" list="datalist1"/>
<datalist id="datalist1" hidden>
<% 
try{	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
	PreparedStatement pst;
	ResultSet rst;
	String sql="select Actor_Name from actors";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
	while(rst.next())
	{
%>
<option value="<%out.println(rst.getString("Actor_Name"));%>">

<%} %>
</datalist>
<%
}
catch(Exception e)
{
}
%>
<input type="submit"name="Submit"style="margin-left:-80px;background-color:skyblue;border-radius:5px;width:60px;"/></center>
</form>
</div>
</nav>
<%
try{
String v="Ranvir+Kapoor";
String s=request.getParameter("Actor");
char c[]=new char[100];
int l=s.length();
c=s.toCharArray();
char l1[]=new char[100];
for(int i=0;i<l;i++)
{
	if(c[i]!=' ')
{
	l1[i]=c[i];
}
	else
		{
		l1[i]='+';
		}
System.out.println(c[i]);
}
System.out.println(l1);
String s0=String.valueOf(l1);
System.out.println("valueeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee="+s0);
if(s!=null && !s.isEmpty())
{
	response.sendRedirect("http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text="+s0+"&Submit=Search");
}
}
catch(Exception e)
{
	
}

String q[]=new String[10];
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
		q[i]=rst.getString("Industry");
		//ar.add(rst.getString("Industry"));
		i++;
	
	}
	
	
	
}
catch(Exception e)
{
	
}



%>
<div class="container" id="sarthak"style="margin-top:15px;">

<div class="row">
<div class="col-sm-4 collapse navbar-collapse" id="Left-side-slider"><br/><br/><br/><br/><br/><br/>
<div class="panel"style="">
<div class="panel-heading"style="background-color:red;">
<center><h4>Industry</h4></center>
</div>
<div class="panel-body"style="">

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
String sql="Select * from actors where Industry='"+q[m]+"' ";
pst=conn.prepareStatement(sql);
rst=pst.executeQuery(sql); 
%>
<li style="list-style-type:none;"class="dropdown"><a href="#ssss" style="text-decoration:none;"class="dropdown-toggle"data-toggle="dropdown"><%out.println(q[m]); %><span class="caret"></span></a>
<ul class="dropdown-menu">
<%while(rst.next())
	{
	%>
<li style="list-style-type:none;"><a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.println(rst.getString("Actor_Name"));%>" style="text-decoration:none;"><%out.println(rst.getString("Actor_Name"));%></a></li>
<%} %>
</ul>
</li>
</ul>
<%} %>
</div>
</div>
</div>

<div class="row">
<%
for(int k=0;k<i;k++)
{
try
{
%>


<%

	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/filmy","root","OPGfks90219");
	PreparedStatement pst;
	ResultSet rst;
	String sql="Select * from actors where Industry='"+q[k]+"' ";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
%>


<div class="row">
<h4 class="jumbotron" style="padding-top:8px;padding-bottom:8px;margin-left:20px;"id="<%out.print(q[k]);%>"><%out.println(q[k]);%></h4>
<%

	while(rst.next())
	{
%>

<a href="http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text=<%out.print(rst.getString("Actor_Name")); %>&Submit=Search"><img src="<% out.print(rst.getString("Actor_Picture"));%>" style="width:200px;height:200px;margin-left:50px;float:left;"class="img-responsive thumbnail"title="<%out.print(rst.getString("Actor_Name"));%>"></a>
<%	

}
%>
</div>
<%
	
}
catch(Exception e)
{
	
}
}
%>

</div>
</div>
</div>
<div class="container">
<div class="row">
</div>
</div>
</body>
</html>