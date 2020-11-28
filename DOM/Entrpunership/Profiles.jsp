<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>	
    <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	<link type="text/css" rel="stylesheet" href="css/style.css" />

	<link rel="icon" type="image/png" href="https://www.shareicon.net/data/128x128/2015/09/24/106774_camera_512x512.png"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 
	<style>
	body
	{
	margin:0px -15px 0px -15px;
	padding:0px 0px 0px 0px;
	background-color:#F3F6F8;
	margin-bottom:50px;
	font-family:poppins;
	}
	#Icon
	{
	margin:5px;
	}
	</style>
	</head>
<body>

<%if(session.getAttribute("Id")==null)
	{
	response.sendRedirect("Index.jsp");
	}
	else
	{
	System.out.println("Id==========================="+session.getAttribute("Id"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Entrpunership","root","sarthak");
	PreparedStatement pst;
	ResultSet rst;
	String Id=(String)session.getAttribute("Id");
	String First_Name="";
	String Last_Name="";
	String Address="";
	String Headline="";
	String Add_Current_Position="Manager";
	String About_Summary="";
	String Email="";
	String Website="";
	String Former_Name="";
	String Country="INDIA";
	String City="DELHI";
	String Industry="";
	String Company="";
	String Birthday_Month="Month";
	String Birthday_Day="Day";
	String Mobile="";
	String Summary="";

	try
	{
		String sql="Select * from profile where Id='"+session.getAttribute("Id")+"'";
		pst=conn.prepareStatement(sql);
		rst=pst.executeQuery(sql);
		while(rst.next())
		{
			
			
			if(!("Name").equals(rst.getString("First_Name")))
			{
				First_Name=rst.getString("First_Name");
			}
			if(!("Last Name").equals(rst.getString("Last_Name")))
			{
				 Last_Name=rst.getString("Last_Name");	
			}
			if(!("Address").equals(rst.getString("Address")))
			{
				 Address=rst.getString("Address");	
			}
			if(!("Headline").equals(rst.getString("Headline")))
			{
				 Headline=rst.getString("Headline");	
			}
			if(!("Ex Manager").equals(rst.getString("Add_Current_position")))
			{
				 Add_Current_Position=rst.getString("Add_Current_position");	
			}
			if(!("Summary").equals(rst.getString("About_Summary")))
			{
				 About_Summary=rst.getString("About_Summary");	
			}
			if(!("Email").equals(rst.getString("Email")))
			{
				
				 Email=rst.getString("Email");	
				 System.out.println(Email);
			}

			if(!("URL").equals(rst.getString("Website_URL")))
			{
				
				 Website=rst.getString("Website_URL");	
				 
			}
			if(!("Former Name").equals(rst.getString("Former_Name")))
			{
				
				Former_Name=rst.getString("Former_Name");	
				 
			}
			if(!("Ex INDIA").equals(rst.getString("Country")))
			{
				
				Country=rst.getString("Country");	
				 
			}
			if(!("Ex DELHI").equals(rst.getString("City")))
			{
				
				City=rst.getString("City");	
				 
			}
			if(!("Industry").equals(rst.getString("Industry")))
			{
				
				Industry=rst.getString("Industry");	
				 
			}
			if(!("Company").equals(rst.getString("Company")))
			{
				
				Company=rst.getString("Company");	
				 
			}
			if(!("Birthday Month").equals(rst.getString("Birthday_Month")))
			{
				
				Birthday_Month=rst.getString("Birthday_Month");	
				 
			}
			if(!("Birthday Day").equals(rst.getString("Birthday_Day")))
			{
				
				Birthday_Day=rst.getString("Birthday_Day");	
				 
			}

			if(!("Mobile Number").equals(rst.getString("Mobile")))
			{
				
				Mobile=rst.getString("Mobile");	
				 
			}
			

			if(!("Summary").equals(rst.getString("About_Summary")))
			{
				
				Summary=rst.getString("About_Summary");	
				 
			}
			
			
		}
	}
	catch(Exception e)
	{
		System.out.println("Exception Occure");
		}
		
			
			
		
	%>
	
	<nav id="nav" class="navbar" style="background-color: #283E4A;">
			<div class="container">

				<div class="navbar-header">
					<!-- Logo -->
					<div class="navbar-brand">

						<a href="index.html">
							<img class="logo" src="img/logo.png" alt="logo">
							<img class="logo-alt" src="img/logo-alt.png" alt="logo">
						</a>

					</div>
					<!-- /Logo -->
								<input type="text" id="Icon"style="width:200px;border-radius:5px;margin-top:5px;margin-bottom:5px;"placeholder="Search">
					<!-- Collapse nav button -->
					<div class="nav-collapse" style="margin-right:25px;">
						<span></span>
					</div>
					<!-- /Collapse nav button -->
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
				    
					<li><a href="#home"><span class="glyphicon glyphicon-home"id="Icon"></span>Home</a></li>
					<li><a href="#about"><i class="fa fa-users"id="Icon" ></i>My Network</a></li>
					<li><a href="#portfolio"><i class="fa fa-suitcase"id="Icon"></i>Jobs</a></li>
					<li><a href="#service"><span class="glyphicon glyphicon-comment"id="Icon"></span>Messaging</a></li>
					<li><a href="#pricing"><i class="glyphicon glyphicon-bell"id="Icon"></i>Notification</a></li>
					
					<!--  <li class="has-dropdown"><a href="#blog">Blog</a>
						<ul class="dropdown">
							<li><a href="blog-single.html">blog post</a></li>
						</ul>
					</li>-->
					
				</ul>
				
				<!-- /Main navigation -->

			</div>
		</nav>
		<!-- /Nav -->

		
		
	
	
<!-- -Main Containt -->

<section class="container" id="records_contant">
	<div class="row"style="">
		<div class="col-lg-10 col-sm-10 col-sm-12"style="margin-top:20px;">
			<div style="border:1px solid grey;">
  				<div style="position:relative;	background-image:url(https://s3-us-west-1.amazonaws.com/bgimglibrary/LinkedIn-Background-Image-8.png);
  					background-size: cover;
  					background-repeat:no-repeat;
					width:100%;
					height:200px;
					
					">
					<div style="width:100%;height:150px;">
						<fieldset>
									<legend style="width:150px;height:150px;border-radius:50%;background-color:white;position:absolute;top:50%;left:15%;"><img src="https://www.paulekman.com/wp-content/uploads/2018/06/personicon-23.png"alt="Image"style="width:150px;height:150px;border-radius:50%;"></legend>
						</fieldset>			
					</div>
			
						<div style="background-color:#FFFFFF;">
							<h1 style="color:white;position:absolute;top:10px;left:10px;"><%out.print(First_Name+" "+Last_Name); %></h1>
						</div>
				</div>
				<div style="background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;">
					<div class="row">
							<div class="col-lg-7 col-md-7 col-sm-7">
									<h2 style="margin-top:45px;margin-left:25px;"><%out.print(First_Name+" "+Last_Name); %></h2>
									<h3 style="margin-left:25px;"><%out.print(Headline);%></h3>
									<h4 style="margin-left:25px;"><%out.print(Address);%></h4>
									<ul style="display:flex;margin-right:10px;">
										<li style='margin-left:10px;margin-right:10px;'><a href=#>Connection</a></li>
										<li style='margin-left:10px;' data-target="#Contact" data-toggle="modal"><a href=#>Contact Us</a></li>
										
										
										<div class="modal"id="Contact">
										<div class="modal-dialog">
										<div class="modal-content">
										<div class="modal-header">
										
										<button type="button"class="close"data-dismiss="modal"> &times; </button>
										<h2 class="text-primary"><%out.println(First_Name+" "+Last_Name);%></h2>
										</div>
										
										<div class="modal-body">
										<form>
										<div >
										<h3 style="color:grey;">Contact Info</h3>
											<label><h4><i class="glyphicon glyphicon-envelope" style="margin:10px;"></i>Email</h4></label><br>
											<a href="mailto:<%out.println(Email);%>"><%out.println(Email);%></a>	
												
											<%

											if(!("URL").equals(Website))
											{
												%><br>
												<label><h4><i class="glyphicon glyphicon-link"style="margin:10px;"></i>Website</h4></label><br>
												<a href="<%out.println(Website);%>"><%out.println(Website);%></a>
												<%
												 
											}
											
											
											
											%>
											
										</div>
										
										</form>
										
										</div>
										
										</div>
																			
										</div>
					
										
										</div>
										
										
										
										 
									</ul>
							</div>
							
							<!-- -Edit Info -->
							
							<div class="modal fade" id="EditInfo" role="dialog">
    	<div class="modal-dialog">
    
      	<!-- Modal content-->
      		<div class="modal-content">
        			<div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h4 class="modal-title">Edit Intro</h4>
        			</div>
        		<div class="modal-body">
          			<!-- <p>Some text in the modal.</p>-->
          			<div class="form-group">
          			
          				<div class="row">
          					<div class="col-md-6 col-sm-6">
          							<label>First Name</label>
			          				<input type="text"placeholder="Username"class="form-control"id="first_Name"value="<%out.print(First_Name); %>">			
          					</div>
          					
          					<div class="col-md-6 col-sm-6">
          							<label>Last Name</label>
          							<input type="text"placeholder="Lastname"class="form-control"id="last_Name"value="<%out.print(Last_Name); %>">		
          					</div>
          				</div>
          				<br>
          				<div class="row">
          					<div class="col-md-12 col-sm-12">
          						<label>Former Name</label>
          						<input type="text"placeholder="Former Name"class="form-control"id="former_Name" value="<%out.print(Former_Name);%>" >
          					</div>
          				</div>
          				<br>
          				<div class="row">
          					<div class="col-md-12 col-sm-12">
          						<label>Headline</label>
          						<textarea rows="4" cols="50" class="form-control"placeholder="Headline"id="headline">
									 <%out.print(Headline); %>
								</textarea>
          					</div>
          				</div>
          				<br>
          				<div class="row">
          					<div class="col-md-12 col-sm-12">
          						<label>Education</label>
          						<select class="form-control">
          							<option value="Select">Select</option>
          						</select>
								<a href="#">Add new education</a>
          					</div>
          				</div>
          				<br>
          			<div class="row">
          					<div class="col-md-12 col-sm-12">
          							<label>Country</label>
			          				<select class="form-control"id="Country">
          								<option value="<%out.print(Country);%>"><%out.print(Country);%></option>
          								<option value="India">India</option>
          							</select>			
          					</div>
          					
          				</div>
          				<br>
          				<div class="row">
          					<div class="col-md-12 col-sm-12">
          							<label>City</label>
			          				<select class="form-control"id="City">
          								<option value="<%out.print(City); %>"><%out.print(City);%></option>
          								<option value="Agra">Agra</option>
          							</select>			
          					</div>
          					
          				</div>
          				<br>
          				
          				<br>
          				<div class="row">
          					<div class="col-md-12 col-sm-12">
          							<label>Industry</label>
			          				<select class="form-control"id="Industry">
          								<option value="<%out.print(Industry);%>" ><%out.print(Industry);%></option>
          								<option value="Software Developer">Software Developer</option>
          							</select>			
          					</div>
          					
          				</div>
          				<br>
          				
          				<div class="row">
          					<div class="col-md-6 col-sm-6">
          							<label>Website URL</label>
			          				<input type="text"placeholder="Website URL"class="form-control"id="Website_Url"value="<%out.print(Website); %>">			
          					</div>
          					
          					<div class="col-md-6 col-sm-6">
          							<br>
          							<select class="form-control"id="Company">
          								<option value="<%out.print(Company); %>"><%out.print(Company); %></option>
          							</select>		
          					</div>
          				</div>
          				<br>
          				
          				<br>
          				
          				<div class="row">
          					<div class="col-md-6 col-sm-6">
          							<label>Phone</label>
			          				<input type="text"placeholder="Phone"class="form-control"id="phone"value="<%out.print(Mobile); %>">			
          					</div>
          					
          					<div class="col-md-6 col-sm-6">
          							<br>
          							<select class="form-control"id="phone_home">
          								<option value="Select">Home</option>
          							</select>		
          					</div>
          				</div>
          				<br>
          					
          				<div class="row">
          					<div class="col-md-12 col-sm-12">
          						<label>Address</label>
          						<textarea rows="4" cols="50" class="form-control"placeholder="Address"id="Address" >
									<%out.print(Address);%>
								</textarea>
          					</div>
          				</div>
          				<br>
          				
          				<div class="row">
          					<div class="col-md-6 col-sm-6">
          							<label>Birthday</label>
			          				<br>
          							<select class="form-control"id="Month" >
          								<option value="<%out.print(Birthday_Month);%>"><%out.print(Birthday_Month);%></option>
          								<option value="January">January</option>
          								<option value="Feberuary">Feberuary</option>
          								<option value="March">March</option>
          								<option value="April">April</option>
          								<option value="May">May</option>
          								<option value="June">June</option>
          								<option value="July">July</option>
          								<option value="August">August</option>
          								<option value="September">September</option>
          								<option value="October">October</option>
          								<option value="November">November</option>
          								<option value="December">December</option>
          							</select>			
          					</div>
          					
          					<div class="col-md-6 col-sm-6">
          							<br>
          							<select class="form-control"id="Day">
          								<option value="<%out.print(Birthday_Day);%>"><%out.print(Birthday_Day);%></option>
          								<option value="1">1</option>
          								<option value="2">2</option>
          								<option value="3">3</option>
          								<option value="4">4</option>
          								<option value="5">5</option>
          								<option value="6">6</option>
          								<option value="7">7</option>
          								<option value="8">8</option>
          								<option value="9">9</option>
          								<option value="10">10</option>
          								<option value="11">11</option>
          								<option value="12">12</option>
          								<option value="13">13</option>
          								<option value="14">14</option>
          								<option value="15">15</option>
          								<option value="16">16</option>
          								<option value="17">17</option>
          								<option value="18">18</option>
          								<option value="19">19</option>
          								<option value="20">20</option>
          								<option value="21">21</option>
          								<option value="22">22</option>
          								<option value="23">23</option>
          								<option value="24">24</option>
          								<option value="25">25</option>
          								<option value="26">26</option>
          								<option value="27">27</option>
          								<option value="28">28</option>
          								<option value="29">29</option>
          								<option value="30">30</option>
          								<option value="31">31</option>
          							</select>		
          					</div>
          				</div>
          				<br>
          				
          				
          				
          				
          			</div>
        		</div>
        		<div class="modal-footer">
        			<button type="button" class="btn btn-danger" onclick="addRecord()">Save</button>
          			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        		</div>
      		</div>
      
    	</div>
  </div>
  
							
							<!-- End Edit Info -->
							
							
							
							
							<div class="col-lg-5 col-md-5 col-sm-5" >
									<h2><button style="margin-top:45px;background-color:#0073B1;color:white;padding:8px 12px;border-radius:5px;font-size:16px;margin-bottom:20px;margin-left:10px;">Add Profile Section</button>
									<button style="margin-top:45px;padding:8px 12px;border:1px solid black;font-size:18px;margin:0px 8px;border-radius:5px;margin-bottom:20px;margin-left:10px;">More.....</button>
									<i class="fa fa-edit" data-toggle="modal" data-target="#EditInfo"></i></h2>
									<a href="#Education_Below"style="margin-left:10px;font-size:1.2em;"id="Top_University" href="#" ><i class="fa fa-university"></i>Education</a>
							</div>
					</div>
				</div>

		</div>
	
	
<div class="row">
<div class="col-sm-12" style="border:1px solid grey;margin-top:25px;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;">
<div class="row"style="padding-left:25px;">
<div class="col-sm-12">	
	<h2>About<i class="fa fa-edit pull-right"data-toggle="modal" data-target="#About_Summary"style="margin-right:5%;"></i></h2><br>
	<p><%out.print(About_Summary);%></p>
</div>
</div>
</div>
</div>


<!-- -----------------About Summary------------------ -->

<div class="modal fade" id="About_Summary" role="dialog">
    	<div class="modal-dialog">    
    
      	<!-- Modal content-->
      		<div class="modal-content">
        			<div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h4 class="modal-title">Edit about</h4>
          					
        			</div>
        		<div class="modal-body">
          			
          			<form>
          			
          			<label>Summary</label>
          			    						<textarea rows="4" cols="50" class="form-control"placeholder="Summary"id="Summary">
													 <%out.print(Summary);%>
												</textarea>
          			
          			</form>
        		</div>
        		<div class="modal-footer">
          			<button type="button" class="btn btn-default" onclick="Summary()"data-dismiss="modal">Save</button>
        		</div>
      		</div>
      
    	</div>
  </div>
  

<!-- -----------------End About Summary------- -->




	<div class="row">
<div class="col-lg-12 col-sm-12 col-sm-12" style="border:1px solid grey;margin-top:25px;padding-left:25px;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;">

<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12">
	
		<h2 id="Education_Below">Education<i class="fa fa-plus pull-right" style="padding-right:5%;"data-toggle="modal" data-target="#Add_Eduaction"></i></h2> <br>
			
	
	</div>
</div>


	<% 
	int i=1;
		try{
			String query="Select * from education where Id='"+Id+"' order by Roll DESC ";
		
		pst=conn.prepareStatement(query);
		rst=pst.executeQuery();
		while(rst.next())
		{
	%>
<div class="row">

	 <div class="col-lg-12 col-md-12 col-sm-12">
	
		
					<h4><i class="fa fa-university"></i><%out.print(rst.getString("Institute"));%><i class="fa fa-edit pull-right" style="padding-right:5%;font-size:1.5em;" data-toggle="modal" data-target="#Update_Eduaction<%out.print(i);%>"></i></h4>
	 				<p><%out.print(rst.getString("Degree"));%><%out.println(", "+rst.getString("Field_of_study"));%></p>
					<p><%out.print(rst.getString("Start_Year"));%><%out.println(" - "+rst.getString("End_Year"));%></p>
			
	
	</div>	
	
	
</div>
			<!-- -------------------------Update Eduaction------------------------------------------------- -->
	<div class="modal fade" id="Update_Eduaction<%out.print(i++);%>" role="dialog">
    	<div class="modal-dialog">    
    
      	<!-- Modal content-->
      		<div class="modal-content">
        			<div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h4 class="modal-title">Edit Education</h4>
          					
        			</div>
        		<div class="modal-body">
          			<form>
          			<div class="row">
          				<div>
          				<label>School</label>
          				<input type="text"id="Update_Education_School<%out.print(i);%>"placeholder="HIMCS"autofocus required class="form-control"value="<%out.print(rst.getString("Institute"));%>">
          				<br>
          				<label>Degree</label>
          				<input type="text"id="Update_Education_Degree<%out.print(i);%>"placeholder="MCA"autofocus required class="form-control"value="<%out.print(rst.getString("Degree"));%>">
          				<br>
          				<label>Feild of study</label>
          				<input type="text"id="Update_Education_Feild<%out.print(i);%>"placeholder="Computer Science"autofocus required class="form-control"value="<%out.print(rst.getString("Field_of_study"));%>">
          	
          				</div>
          				<br>
          				<div class="col-lg-6 col-md-6 col-sm-12">
          				<label>Start Year</label>
          				<select id="Update_Education_Start_Year<%out.print(i);%>" class="form-control">
          				<option value="<%out.print(rst.getString("Start_Year"));%>"><%out.print(rst.getString("Start_Year"));%></option>
          				</select>
          	
          				</div>
          				
          				<div class="col-lg-6 col-md-6 col-sm-12">
          				<label>End Year</label>
          				<select id="Update_Education_End_Year<%out.print(i);%>"class="form-control">
          				<option value="<%out.print(rst.getString("End_Year"));%>"><%out.print(rst.getString("End_Year"));%></option>
          				</select>
          	
          				</div>
          				<br>
          				<div class="col-lg-12 col-md-12 col-sm-12">
          				<label>Grade</label>
          				<input type="text"id="Update_Education_Grade<%out.print(i);%>"placeholder="Grade"autofocus  class="form-control"value="<%out.print(rst.getString("Grade"));%>">
          				<br>
          		
          				<label>Description</label>
          				<textarea rows="5" cols="5"id="Update_Education_Description<%out.print(i);%>"class="form-control"><%out.print(rst.getString("Description"));%></textarea>
          				
          				</div> 
          			</div>
          			
          			</form>
        		</div>
        		<div class="modal-footer">
          			<button type="button" class="btn btn-default" onclick="Update_Eduaction(<%out.print(i);%>,<%out.print(rst.getString("Roll"));%>)">Close</button>
        		</div>
      		</div>
      
    	</div>
  </div>
	<!----------------------------End Update Eduaction---------------------------------------------------------- -- -->
	
	



	
	<%} 
	}
	catch(Exception e)
	{
		System.out.println("Problem Occure");
	}
	%>
	
</div>
	</div>
	<!-- -------------------------Add Eduaction------------------------------------------------- -->
	<div class="modal fade" id="Add_Eduaction" role="dialog">
    	<div class="modal-dialog">    
    
      	<!-- Modal content-->
      		<div class="modal-content">
        			<div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h4 class="modal-title">Add Education</h4>
          					
        			</div>
        		<div class="modal-body">
          			<form style="margin:5px;">
          			
          			
          			
          			
          			<div class="row">
          				<div>
          				<label>School</label>
          				<input type="text"id="Add_Education_School"placeholder="HIMCS"autofocus required class="form-control">
          				<br>
          				<label>Degree</label>
          				<input type="text"id="Add_Education_Degree"placeholder="MCA"autofocus required class="form-control">
          				<br>
          				<label>Feild of study</label>
          				<input type="text"id="Add_Education_Feild"placeholder="Computer Science"autofocus required class="form-control">
          	
          				</div>
          				<br>
          				<div class="col-lg-6 col-md-6 col-sm-12">
          				<label>Start Year</label>
          				<select id="Add_Education_Start_Year" class="form-control">
          				<option value="Year">Year</option>
          				</select>
          	
          				</div>
          				
          				<div class="col-lg-6 col-md-6 col-sm-12">
          				<label>End Year</label>
          				<select id="Add_Education_End_Year"class="form-control">
          				<option value="Year">Year</option>
          				</select>
          	
          				</div>
          				<br>
          				<div class="col-lg-12 col-md-12 col-sm-12">
          				<label>Grade</label>
          				<input type="text"id="Add_Education_Grade"placeholder="Grade"autofocus  class="form-control">
          				<br>
          		
          				<label>Description</label>
          				<textarea rows="5" cols="5"id="Add_Education_Description"class="form-control"></textarea>
          				
          				</div> 
          			</div>
          			
          			</form>
        		</div>
        		<div class="modal-footer">
          			<button type="button" class="btn btn-default" onclick="Add_Eduaction()" data-dismiss="modal">Close</button>
        		</div>
      		</div>
      
    	</div>
  </div>
	<!----------------------------End Add Eduaction---------------------------------------------------------- -- -->
	
	<!-- --------------------------Add New Skill----------------------------------------------------------------------------- -->
	
	
	<div class="modal fade" id="Add_New_Skill" role="dialog">
    	<div class="modal-dialog">    
    
      	<!-- Modal content-->
      		<div class="modal-content">
        			<div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h4 class="modal-title">Add Skills</h4>
          					
        			</div>
        			<div class="modal-body">
          				<input type="text"placeholder="Skill"class="form-control" id="AddNew_Skill">
        			</div>
        			<div class="modal-footer">
          				<button type="button" class="btn btn-default" onclick="Add_New_Skill()"data-dismiss="modal">Close</button>
        			</div>
      			</div>
      
    	</div>
  </div>
  
	
	<!-- --------------------------End Add New Skill------------------------------------------------------------------------------------------ -->
	
	
	<!-- --------------------------Record Skill--------------------------------------------------------------------------------------------- -->
	
	
	<div class="modal fade" id="Record_Skill" role="dialog">
    	<div class="modal-dialog">    
    
      	<!-- Modal content-->
      		<div class="modal-content">
        			<div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h4 class="modal-title">Records Data</h4>
          					
        			</div>
        			<div class="modal-body">
          				<div id="readrecord">
          				
          				</div>
        			</div>
        			<div class="modal-footer">
          				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			</div>
      			</div>
      
    	</div>
  </div>
	
	
	
	<!-- --------------------------End Record Skill--------------------------------------------------------------------------------------------------------- -->	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<div class="row" >
<div class="col-sm-12" style="border:1px solid grey;margin-top:25px;padding-left:25px;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;">
<div class="row">
<div class="col-sm-12">	
	<h2 data-toggle="tooltip" title="Skill and Boost">Skill and Boost<i class="fa fa-edit pull-right"style="margin-right:5%;"data-toggle="modal" data-target="#Record_Skill"></i></h2><br>
	<a><span data-toggle="modal" data-target="#Add_New_Skill"class="pull-right"style="margin-right:5%;cursor:pointer;">+ Add New Skill</span></a>
	
	<div id="Subject_Div"></div>
</div>

</div>
</div>
</div>
	
	
	
	
	
	
	</div>
	
	
	<div class="col-lg-2 col-sm-2 col-sm-12 "style="margin-top:20px;">
	<div style="background-color:skyblue;width:100%;height:100vh;">HELLO JAVA</div>
	</div>
	
	
</div>	
	
	
	
	
	
</section>
<%

}

%>
	<div id="back-to-top"></div>
	<!-- /Back to top -->

	<!-- Preloader -->
	<div id="preloader">
		<div class="preloader">
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>
	<!-- /Preloader -->

	<!-- jQuery Plugins -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	
	
	<script type="text/javascript" src="js/main.js"></script>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  $(document).ready(function(){
	  Add_Skill();
	  //Add_Subject();
  })
  
  
	  function Add_Subject()
	  {
		  $.ajax({
			  type:'post',
			  url:'Backend.jsp',
			  data: { Operation : "Add_Subject"
				  
			  },
			  success:function(data,status){
				  $('#Subject_Div').html(data);
		
				  }
		  });
	  }
  
  
  function addRecord()
  {
	  var firstname=$('#first_Name').val();
	  var lastName=$('#last_Name').val();
	  var formerName=$('#former_Name').val();
	  var headline=$('#headline').val();
	  var Country=$('#Country').val();
	  var City=$('#City').val();
	  var WebsiteUrl=$('#Website_Url').val();
	  var Company=$('#Company').val();
	  var phone=$('#phone').val();
	  var phonehome=$('#phone_home').val();
	  var Address=$('#Address').val();
	  var Month=$('#Month').val();
	  var Day=$('#Day').val();
	  var Industry=$('#Industry').val();
	  //alert(Country);
	  $.ajax({
		 
		  url:"Backend.jsp",
		  type:'post',
		  data: {firstname :firstname,lastname :lastName,formername :formerName,headline :headline,country :Country,city :City,Web_Url :WebsiteUrl,company :Company,
			  Phone :phone,Phonehome :phonehome,address :Address,month :Month,day :Day,Industry :Industry,Operation:"Edit"
			  },
			  success:function(data,status){
				  
				  window.location.replace("Profiles.jsp");
				  readRecords();
			  }
	  });
	  
  }
  
  function Add_Eduaction()
  {
	  var Add_Education_School=$('#Add_Education_School').val();
	  var Add_Education_Degree=$('#Add_Education_Degree').val();
	  document.getElementById("Top_University").innerHTML = Add_Education_School;
	 
	  var Add_Education_Feild=$('#Add_Education_Feild').val();
	  var Add_Education_Start_Year=$('#Add_Education_Start_Year').val();
	  var Add_Education_End_Year=$('#Add_Education_End_Year').val();
	  var Add_Education_Grade=$('#Add_Education_Grade').val();
	  var Add_Education_Description=$('#Add_Education_Description').val();
	  
	  $.ajax({
			 
		  url:"Backend.jsp",
		  type:'post',
		  data: {Add_Education_School :Add_Education_School,Add_Education_Degree :Add_Education_Degree,Add_Education_Feild :Add_Education_Feild,Add_Education_Start_Year :Add_Education_Start_Year,Add_Education_End_Year :Add_Education_End_Year,Add_Education_Grade :Add_Education_Grade,Add_Education_Description :Add_Education_Description,Operation:"Education_Edit"
			  },
			  success:function(data,status){
				  
				  window.location.replace("Profiles.jsp");
				  readRecords();
			  }
	  });
	  
	  
  }
  function Update_Eduaction(D,r)
  {
	 
	  var Update_Education_School=$('#Update_Education_School'+D).val();
	  var Update_Education_Degree=$('#Update_Education_Degree'+D).val();
	  var Update_Education_Feild=$('#Update_Education_Feild'+D).val();
	  var Update_Education_Start_Year=$('#Update_Education_Start_Year'+D).val();
	  var Update_Education_End_Year=$('#Update_Education_End_Year'+D).val();
	  var Update_Education_Grade=$('#Update_Education_Grade'+D).val();
	  var Update_Education_Description=$('#Update_Education_Description'+D).val();
	  //alert(Update_Education_Degree);
	  //alert(Update_Education_School);
	  //alert(Update_Education_Grade);
	  //alert(r);
	  
	  $.ajax({
			 
		  url:"Backend.jsp",
		  type:'post',
		  data: {Update_Education_School :Update_Education_School,Update_Education_Degree :Update_Education_Degree,Update_Education_Feild :Update_Education_Feild,Update_Education_Start_Year :Update_Education_Start_Year,Update_Education_End_Year :Update_Education_End_Year,Update_Education_Grade :Update_Education_Grade,Update_Education_Description :Update_Education_Description,Roll :r,Operation :"Education_Update"
			  },
			  success:function(data,status){
				  
				  window.location.replace("Profiles.jsp");
			  }
	  });
  
	 
	
	    
  }
  
  function Add_New_Skill()
  { 
	  
	  var Add_New_Skill=$('#AddNew_Skill').val();
	  //alert(Add_New_Skill);
	  $.ajax({
		  url:"Backend.jsp",
		  type:'post',
		  data: {Add_New_Skill :Add_New_Skill,Operation :"AddNewSkill"},
		  success:function(data,status){
			  Add_Skill();
		//	  Add_Subject();
		  }
	  });
  }
  
  function Summary()
  {
	  
	  var Summary=$('#Summary').val();
	  //alert(Country);
	  $.ajax({
		 
		  url:"Backend.jsp",
		  type:'post',
		  data: {Summary :Summary,Operation:"Summary"
			  },
			  success:function(data,status){
				  
				  window.location.replace("Profiles.jsp");
			  }
	  });
  }
  function readRecords()
  {
	  var readrecord="readrecord";
	  $.ajax({
		  url:"Backend.jsp",
		  type:"post",
		  data:{readrecord:readrecord,Operation:"Update" },
		  success:function(data,status){
			  $('#records-contant').html(data);
			  
		  }
	  });
	  
  }
  function Add_Skill()
  {
	  var readrecord="readrecord";
	  $.ajax({
		  url:"Backend.jsp",
		  type:"post",
		  data:{readrecord :readrecord },
		  success:function(data,status){
			$('#readrecord').html(data);
			Add_Subject();
		  }
	  });
	  
  }
  function Delete(s)
  {
  	//alert(s);
  	 $.ajax({
  		  url:"Backend.jsp",
  		  type:'post',
  		  data: {Delete :s,Operation :"Delete"},
  		  success:function(data,status){
  			 // window.location.replace("Profiles.jsp");
  			 //document.getElementById("Subject").innerHTML = "Paragraph changed!";
  			Add_Skill(); 
  			Add_Subject();
  			
  		  }
  	  });
  }
  </script>
</body>
</html>