<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />



	<link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/Style1.css" />
	<link rel="icon" type="image/png" href="https://www.shareicon.net/data/128x128/2015/09/24/106774_camera_512x512.png"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />
	
	<title>Search</title>
	
	

	<!-- Font Awesome Icon -->
	
	
	<!-- Custom stlylesheet -->
	<link rel="stylesheet" href="css/Style1.css">
	
	<style>
	body
	{
	margin:0px;
	padding:0px;
	background-color:#F3F6F8;
	}
	.Design
	{
	border:1px solid grey;margin-top:25px;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;
	}
	hr { 
  	display: block;
  	margin-top: 0.5em;
  	margin-bottom: 0.5em;
  	margin-left: auto;
  	margin-right: auto;
  	border-style: inset;
  	border-width: 1px;
	} 

	.topnav 
	{
  	overflow: hidden;
	}

	.topnav a 
	{
  	float: left;
	color: #f2f2f2;
  	text-align: center;
  	padding: 14px 16px;
  	text-decoration: none;
  	font-size: 15px;
  	color:black;
	}

	@media screen and (max-width: 600px) 
	{
  		.topnav a.icon 
  		{
    	float: right;
    	display: block;
  		}
	

  		.topnav.responsive a 
  		{
    	float: none;
    	display: block;
    	text-align: left;
  		}
	}

	#heading-pic
	{
	background-color: dodgerblue;
	background: url(../img/1510Lteachers.jpg) no-repeat;
	background-size: cover;
	width:100%;
	height:600px;
	}
	</style>

</head>
<body>



<!-- Begining Nav -->
	
	<nav id="nav" class="navbar" style="background-color: #283E4A;padding:10px;">		
			<div class="container-fluid">
				<div class="navbar-header">
				
					<!-- Logo -->
					<div class="navbar-brand">
						<span style="font-size:30px;cursor:pointer;margin-right:10px;" onclick="openNav()">&#9776;</span>			
						<a href="index.html">
							<img class="logo" src="img/logo.png" alt="logo">
							<img class="logo-alt" src="img/logo-alt.png" alt="logo">
						</a>
					</div>
					<!-- /Logo -->
					
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
					<input type="text" id="Icon" style="width:100%;height:3em;border-radius:5px;padding-left:10px;"placeholder="Search">
				</ul>
				<!-- /Main navigation -->
			</div>
	</nav>
	
<!-- Ending Nav -->

<!-- -Begining of Side Nav Bar -->
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="#">Course</a>
  <a href="#">Exam</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>
<!-- -Ending of Side Nav Bar -->


<!-- Begining of Main Containt -->
<% 

	try
		{
		String Subject;
		String City;
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tutor","root","sarthak");
		PreparedStatement pst;
		ResultSet rst;
		Subject=request.getParameter("Course");
		City=request.getParameter("Course_Place");	
%>

<div class="container-fluid jumbotron" style="padding-top:5px;padding-bottom:5px;">
<h2>You searched <a id="Search_Item"><%out.print(Subject); %></a></h2>
</div>

<div id="Place_Filter">
</div>

<hr>

<div class="container">
<div class="row">
<%
int flag=0;
String s;
System.out.println("Hello = "+City);
if("null".equals(City))
{

	System.out.println("Hello");
	s="";
}
else
	{
	 s="and Profile.Address='"+City+"'";
	}
String Odr="";//Order By
if("High".equals(request.getParameter("Mode")))
	Odr="order by Fee ASC";//Order By
else if("Low".equals(request.getParameter("Mode")))
	Odr="order by Fee DESC";//Order By
String Sql="select subject.Course,Profile.Address,Profile.Coching_Name,Profile.Phone,subject.Fee,profile.Id from subject join profile on subject.Id=profile.Id and Course='"+Subject+"' "+s  +Odr;

pst=conn.prepareStatement(Sql);

rst=pst.executeQuery(Sql);
System.out.println("Working..........");

while(rst.next())
{
	flag=1;
%>

<div class="col-lg-4 col-md-4 col-sm-4" style="margin-top:2%;">
<div class="card" style="width:100%;border:1px solid grey;float:left;">
    <img class="card-img-top" src="img/TEAMDEVIL.png" alt="Card image" style="width:100%" class="img-responsive">
    <div class="card-body" style="padding:10px;">
      <h4 class="card-title"><i class="fa fa-university"></i><%out.print(rst.getString("Coching_Name"));%></h4>
      <p class="card-text"><i class="glyphicon glyphicon-map-marker"></i><%out.print(rst.getString("Address"));%></p>
      <a href="Profile.jsp?Profile=<%out.print(rst.getString("Id"));%>" class="btn btn-primary">See Profile</a>
    </div>
  </div>
 
</div>
<%
} 
if(flag==0)
{
	%>
		<div class="col-lg-12 col-md-12 col-sm-12">
		<h1><center><img src="img\CochingLogo\search_find_scan_error_unavailable.png" style="width:200px;">
		Oops!.....</h1></center>
		</div>
	<%
}
%> 
</div>
</div>
<!-- Ending of Main Containt -->


<%

}

catch(Exception e)
{
	System.out.println("Exception in Search");	
}
%>





<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
  
  var Course=document.getElementById("Search_Item").innerHTML;
  alert(Course);
  
  //document.getElementById("Search_Item").innerHTML = "New text!";	

  $(document).ready(function(){
	 
	  
	  $.ajax({
		  type:'get',
		  url:'Backend.jsp',
		  data: { Operation : "Place_Filter"
			  
		  },
		  success:function(data,status){
			  $('#Place_Filter').html(data);
	
			  }
	  });
	
	 
	  
	  
	  alert(Course);	    
	    
	 
  });
  
 
	  
  function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
	}

	function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
	}
	
	function Onch()
	{
		var v=document.getElementById('State_Id').value;
		alert(v);
		
		$.ajax({
			  type:'get',
			  url:'Backend.jsp',
			  data: { Operation : "Place",State : v
				  
			  },
			  success:function(data,status){
				  
				  $('#City_Id').html(data);
		
				  }
		  });
		
		
	}
	
	function Save()
	{
		var city=document.getElementById('City_Id').value;
		
		alert(Course);
		location.replace("Search.jsp?Course="+Course+"&Course_Place="+city);
	}
	
	function High_To_Low(v)
	{	var city=ParseURLParameter('Course_Place');
		alert(v);
		location.replace("Search.jsp?Course="+Course+"&Course_Place="+city+"&Mode="+v);
	}
	
	
	function ParseURLParameter(Parameter)
	{
		var FullUrl=window.location.search.substring(1);
		var ParameterArray=FullUrl.split('&');
		for(var i=0;i< ParameterArray.length;i++)
			{
				var Currentparameter=ParameterArray[i].split('=');
				if(Currentparameter[0]==Parameter)
					{
						return Currentparameter[1];
					}
			}
	}
	
  </script>



</body>
</html>