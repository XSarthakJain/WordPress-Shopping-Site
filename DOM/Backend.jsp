<%@ page language="java" session="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>	
        <%@page import="java.lang.*" %>
        <%@page import="java.util.*" %>
            <%@page import="java.util.Random" %>
        <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<link type="text/css" rel="stylesheet" href="css/Style1.css" />
	<link rel="icon" type="image/png" href="https://www.shareicon.net/data/128x128/2015/09/24/106774_camera_512x512.png"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    

    <style>
.circle
{
	
	background-repeat:no-repeat;
	background-size:cover;
	width:15em;
	height:80%;	
	border:2px solid grey;
	box-shadow:0 0 10px #000;
	position:absolute;
	top:15%;
	left:15%;
}

progress
{
	color: red;
	background-color: yellow; 
	border-radius: 25px;
}


</style>
    
</head>
<body>

<jsp:declaration>

String Operation;


</jsp:declaration>

<%
HashMap<Integer,String>Map=new HashMap<Integer,String>();
int Del=0;//Delete Value
String Tutor=request.getParameter("Profile");
String sql="";
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tutor","root","sarthak");
PreparedStatement pst,ps;
ResultSet rst,rs;
String s5="";
int One=0,two=0,three=0,four=0,five=0,Out_Of_rating=0;
	try
	{	
		Operation=request.getParameter("Operation");
		
		if(Operation.equals("Place_Filter"))
		{
			%>
					<div class="container" style="">
			<h4>Sort By<i class="glyphicon glyphicon-filter"></i>
			<a href="#" style="padding-right:1%;padding-left:5%;" data-toggle="modal" data-target="#PlaceFilter">Place</a>
			<a href="#" style="padding-right:1%;padding-left:5%;" onclick="High_To_Low('High')">High to low fee</a>
			<a href="#" style="padding-right:1%;padding-left:5%;" onclick="High_To_Low('Low')">Low to High fee</a>
			</h4>	
</div>
			
			
  
  <div class="modal fade" id="PlaceFilter" role="dialog">
    	<div class="modal-dialog">    
    
      	<!-- Modal content-->
      		<div class="modal-content">
        			<div class="modal-header">
          				<button type="button" class="close" data-dismiss="modal">&times;</button>
          					<h4 class="modal-title">Filter by Place</h4>
          					
        			</div>
        			<div class="modal-body">
        				
        				<form>
        				<label>State</label>
        				<Select name="State" class="form-control" id="State_Id" onchange="Onch()">
        				
        				<%
        					sql="Select distinct city_state from cities order by city_state";
        					pst=conn.prepareStatement(sql);
        					rst=pst.executeQuery(sql);
        					while(rst.next())
        					{
        						%>
        						<option value=<%out.print(rst.getString("city_state"));%>><%out.print(rst.getString("city_state"));%></option>
        						<%		
        					}
        				%>
        				
        				</Select>
        				<br>
        				<label>City</label>
        				<Select name="City" class="form-control" id="City_Id">
        				<option value="Select">Select</option>
        				</Select>
        				</form>
        							
        			
          			</div>
        			<div class="modal-footer">
        				<a class="btn btn-danger" id="Submit" onclick="Save()">Submit</a>
          				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        			</div>
      			</div>
      
    	</div>
  </div>
	
	

	

						
			<%
		}
		
		else if(Operation.equals("JoinNow"))
		{	response.sendRedirect("Profile.jsp");
			String Name=request.getParameter("JoinName");
			String Email=request.getParameter("JoinEmail");
			String Enroll;
			//get Last Tutor Value
			
		String qry="SELECT Id FROM profile ORDER BY Id DESC LIMIT 1 ";
        pst=conn.prepareStatement(qry);
        rs=pst.executeQuery();
        if(rs.next())
        {
            String rl=rs.getString("Id");
            int ln=rl.length();
            String stxl=rl.substring(0,5);
            String snum=rl.substring(5,ln);
            int n=Integer.parseInt(snum);
            n++;
            snum=Integer.toString(n);
            Enroll=stxl+snum;
            
            
        }
        else
        {
            Enroll="Tutor1201";
        }
        
        Random rand=new Random();
        int OTP=rand.nextInt(9999);
		int OTP1=rand.nextInt(29999);
		String Pass=Enroll+OTP+OTP1;
		System.out.println("Enroll = "+Pass);
    	String Query="INSERT INTO profile(Id,Tutor_Name,Tutor_Email,Tutor_Password)VALUES('"+Enroll+"','"+Name+"','"+Email+"','"+Pass+"')";
		pst=conn.prepareStatement(Query);
		pst.execute();
		System.out.println("Donnnnnnnnnnnnnnnnnnnnneeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
		
		
	//	return;
		//System.out.println("DonnnnnnnnnnnnnnnnnnnnneeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeCommmmmmmmmmmmmmmmmmmmmmmmppppppppppppppppplllllllllllleeeeeeeeeettttttttttteeeeeeee");
			
		
		
		
		
		}
		
		
		else if(Operation.equals("Section1"))
		{
				 sql="SELECT * from profile where Id='"+Tutor+"' ";
				 pst=conn.prepareStatement(sql);
				 rst=pst.executeQuery(sql);
				 while(rst.next())
				 {
			
			%>
			
				<div  style="position:relative;">
				
				<!-- Begining Of Banner -->
				
					<%String Banner= rst.getString("banner_Image"); 
					System.out.println("Bannerr=============="+Banner);
					%>
					
  					<div style="position:relative;background-color:<%out.print(rst.getString("Banner_Color"));%>;" >
					<img src="<%out.print(rst.getString("Banner_Image"));%>" style="width:100%;
					height:300px;">
					<a  href="form.jsp" style="font-size:2em;"><i class="fa fa-edit pull-right" style="border:5px solid gray;border-radius:50%;" ></i></a>

				<!-- Begining of Coching Logo -->

					<div class="circle" style="background-image:url(<%out.println(rst.getString("logo_Image"));%>);background-color:black;" data-toggle="modal" data-target="#Section1_Logo_Image">
																		
						<a style="font-size:2em;"><i class="fa fa-edit pull-right" style="border:5px solid gray;border-radius:50%;"></i></a>
																								
					</div>
			

				<!-- Ending of Coching Logo -->

			</div>				
			<!-- Ending of Banner -->





<div  style="padding-top:2em;padding-left:2%;border:1px solid grey;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;">
<h2><i class="fa fa-edit pull-right" style="padding-right:5%;" data-toggle="modal" data-target="#Section1_Edit"></i></h2><br>
<h2><%out.println(rst.getString("Coching_Name"));%></h2>	
<h3><%out.println(rst.getString("Headline"));%></h3>
<h4><%out.println(rst.getString("Address"));%></h4>
<h4><%out.println(rst.getString("Phone"));System.out.println("Phone = "+rst.getString("Phone"));%></h4>
<%if((rst.getString("Website")!=null)){
	String web=(rst.getString("Website"));%>
	<a href="<%out.println(web);%>"><%out.println(rst.getString("Website"));%></a>
	<%} %>
</div>
</div>
		
			
<!-- -----------------About Summary------------------ -->

					<div class="modal fade" id="Section1_Edit" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">Edit about</h4>				          					
					        			</div>
					        		<div class="modal-body">
					          			
					          			<form>
					          			<label>Coching name</label>
					          			 <input type="text" id="Section1_CochingName" value="<%out.println(rst.getString("Coching_Name"));%>" class="form-control">
					          			 <label>Headline</label>
					          			 <textarea rows="4" cols="50" class="form-control"placeholder="Headline" id="Section1_Headline">
													 <%out.print(rst.getString("Headline"));%>
										</textarea>
										  			<label>Address</label>
					          			 <input type="text" id="Section1_Address" value="<%out.println(rst.getString("Address"));%>" class="form-control">
					          			<label>Contact No.</label>
					          			 <input type="text" id="Section1_Phone" value="<%out.println(rst.getString("Phone"));%>" class="form-control">
							  			<label>Website</label>
					          			 <input type="text" id="Section1_Website" value="<%out.println(rst.getString("Website"));%>" class="form-control">
					        					        
					          			</form>
					        		</div>
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" onclick="BackendSection()"data-dismiss="modal">Save</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>
					  

					<!-- -----------------End About Summary------- -->
	
											
					<%
				 }

		}
		
		else if(Operation.equals("Section2"))
		{
			
			%>
			
					<div style="border:1px solid grey;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;margin-top:5%;">
					<h2 style="background-color:#4B7447;padding-top:1em;padding-bottom:1em;padding-left:15px;">Highlight<i class="fa fa-edit pull-right" style="padding-right:5%;" data-target="#Delete_Highlight" data-toggle="modal"></i></h2><br>
					<a><span data-toggle="modal" data-target="#Add_New_Highlight" class="pull-right"style="padding-right:5%;cursor:pointer;">+ Add New Highlight</span></a>
					<div style="padding-top:2em;padding-left:2%;">
					<%sql="SELECT * from highlight where Id='"+Tutor+"' ";
					 pst=conn.prepareStatement(sql);
					 rst=pst.executeQuery(sql);
					 while(rst.next())
					 {
						 
					 %>
					 
					<h4><%out.print(rst.getString("Text"));%></h4>
					<% }%>
					</div>
					</div>
				
					
			<%
		}
		
		
		else if(Operation.equals("Section2_Deletion"))
		{	  System.out.println("Deleting");
			  sql="DELETE FROM highlight WHERE Id='"+request.getParameter("Profile")+"' and Text='"+request.getParameter("Delete")+"' ";
		      pst =conn.prepareStatement(sql);
		      pst.executeUpdate();
		}
		
		else if(Operation.equals("Section2_Add"))
		{	
			String Id=request.getParameter("Profile");
			String Add_New_Highlight=request.getParameter("Add_New_Highlight");
			String Query="INSERT INTO highlight(Id,Text)VALUES('"+Id+"','"+Add_New_Highlight+"')";
			pst=conn.prepareStatement(Query);
			pst.execute(Query);
			
		}
		
		else if(Operation.equals("Section3_Deletion"))
		{	  System.out.println("Deleting in Achivement");
			  sql="DELETE FROM achivement WHERE Id='"+request.getParameter("Profile")+"' and Title='"+request.getParameter("Delete3")+"' ";
		      pst =conn.prepareStatement(sql);
		      pst.executeUpdate();
		}
		
		else if(Operation.equals("Section3_Add"))
		{	
			String Id=request.getParameter("Profile");
			String Add_New_Achivement=request.getParameter("Add_New_Achivement");
			
			String Query="INSERT INTO achivement(Id,Title,URL)VALUES('"+Id+"','"+Add_New_Achivement+"','"+request.getParameter("Add_New_Achivement_URL")+"')";
			pst=conn.prepareStatement(Query);
			pst.execute(Query);
			
		}
		
		else if(Operation.equals("Section4_Deletion"))
		{	  System.out.println("Deleting in Course");
			  sql="DELETE FROM subject WHERE Id='"+request.getParameter("Profile")+"' and Course='"+request.getParameter("Delete4")+"' ";
		      pst =conn.prepareStatement(sql);
		      pst.executeUpdate();
		      sql="DELETE FROM rating WHERE Id='"+request.getParameter("Profile")+"' and Course='"+request.getParameter("Delete4")+"' ";
		      pst =conn.prepareStatement(sql);
		      pst.executeUpdate();
		}
		
		else if(Operation.equals("Section4_Add"))
		{	
			String Id=request.getParameter("Profile");
			String Add_New_Course=request.getParameter("Add_New_Course");
			String Type_Course=request.getParameter("Type_Course");
			String PromoCode_Course=request.getParameter("PromoCode_Course");
			String Fee_Course=request.getParameter("Fee_Course");
			
			String Query="INSERT INTO subject(Id,Course,PromCode,Title,Fee)VALUES('"+Id+"','"+Add_New_Course+"','"+PromoCode_Course+"','"+Type_Course+"','"+Fee_Course+"')";			
			pst=conn.prepareStatement(Query);
			pst.execute(Query);
			
			 Query="Insert INTO rating(Id,Course)VALUES('"+Id+"','"+Add_New_Course+"')";
			 pst=conn.prepareStatement(Query);
			 pst.execute(Query);			
		}
		
		else if(Operation.equals("Section3"))
		{
			%>
			
					<div style="border:1px solid grey;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;margin-top:5%;">
					<h2 style="background-color:#4B7447;padding-top:1em;padding-bottom:1em;padding-left:15px;">Achivement<i class="fa fa-edit pull-right" style="padding-right:5%;" data-target="#Delete_Achivement" data-toggle="modal"></i></h2><br>
					<a><span data-toggle="modal" data-target="#Add_New_Achivement"class="pull-right"style="padding-right:5%;cursor:pointer;">+ Add New Achivement</span></a>
					<div style="padding-top:2em;padding-left:2%;">
					
					<%sql="SELECT * from achivement where Id='"+Tutor+"' ";
					 pst=conn.prepareStatement(sql);
					 rst=pst.executeQuery(sql);
					 while(rst.next())
					 {
						 
					 %>
					<hr> 
					<h4><%out.print(rst.getString("Title"));%><a class="pull-right" style="padding-right:5%;"href="<%out.print(rst.getString("URL"));%>"><%out.print(rst.getString("URL"));%></a></h4>
					<% }%>
					</div>
					</div>
				
					
			<%		
		}
		
		else if(Operation.equals("Section4"))
		{
				
			%>
			
			<div style="border:1px solid grey;background-color:#FFFFFF;box-shadow:5px 5px 5px 5px grey;margin-top:5%;">
			<h2 style="background-color:#4B7447;padding-top:1em;padding-bottom:1em;padding-left:15px;">Course<i class="fa fa-edit pull-right" style="padding-right:5%;" data-target="#Delete_Course" data-toggle="modal"></i></h2><br>
			<a><span data-toggle="modal" data-target="#Add_New_Course"class="pull-right"style="padding-right:5%;cursor:pointer;">+ Add New Course</span></a>
			<div style="padding-top:2em;padding-left:2%;">
			
			<%sql="SELECT * from subject where Id='"+Tutor+"' ";
			 pst=conn.prepareStatement(sql);
			 rst=pst.executeQuery(sql);
			 while(rst.next())
			 {
				 System.out.println("Break Point = "+rst.getString("Course"));
			 %>
			 <details>	
						<summary style="outline:none;"><h4><%out.print(rst.getString("Course"));%><span class="glyphicon glyphicon-star" style="font-size:1.5em;"></span></h4></summary>
						<h4 style="background:gray;margin-right:2%;padding-bottom:25px;"><br/><br/><span style="padding-left:5%;"><%out.print(rst.getString("PromCode"));%>(Coopan Code)</span><span style="padding-left:5%;"><%out.print(rst.getString("Fee"));%>(Fee)</span></h4>
		   <!-- Begining of Rating and Review -->
		   <% 
		   try{
		   	 String Query="SELECT * from rating where Id='"+Tutor+"' and Course='"+rst.getString("Course")+"' ";
			 ps=conn.prepareStatement(Query);
			 rs=ps.executeQuery(Query);
			 
			 while(rs.next())
			 {	
				 Out_Of_rating++;
				 if(Integer.parseInt(rs.getString("Star"))==5)
					 five=five+5;
				 else if(Integer.parseInt(rs.getString("Star"))==4)
					 four=four+4;
				 else if(Integer.parseInt(rs.getString("Star"))==3)
					 three=three+3;
				 else if(Integer.parseInt(rs.getString("Star"))==2)
					 two=two+2;
				 else if(Integer.parseInt(rs.getString("Star"))==1)
					 One=One+1;
				
									 
				 
				
		   	%>
						<%}
			 }catch(Exception e)
			 {
				 
				 System.out.println("Exception Here");
			 }%>
						
			<div class="jumbotron" style="margin-right:2%;">
			
			<div class="row" >
			<h4>Rating </h4>
			<h5 ><i class="glyphicon glyphicon-user">  <%out.print(Out_Of_rating-1);%></i></h5>
			<div class="col-lg-4 col-md-4 col-sm-4">
				<h2><%out.print(One+two+three+four+five);%>/<%out.println(Out_Of_rating*5);%></h2>
				<h3><%
					int Cal=(((One+two+three+four+five)*100)/(Out_Of_rating*5))/20;
					if(Cal>=1){
					for(int k=1;k<=Cal;k++){ %>
					<span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);font-size:1.5em;"></span>
					<%}}%></h3>
				
			</div>

			
			<div class="col-lg-4 col-md-4 col-sm-4">
			
				<h6><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span></h6>
				<h5><progress value=<%out.print(five);%> max=<%out.print(Out_Of_rating*5);%>></progress><%out.print(five/5);%></h5>
				
				<h6><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span></h6>
				<h5><progress value=<%out.print(four);%> max=<%out.print(Out_Of_rating*5);%>></progress><%out.print(four/4);%></h5>
					
				<h6><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span></h6>
				<h5><progress value=<%out.print(three);%> max=<%out.print(Out_Of_rating*5);%>></progress><%out.print(three/3);%></h5>
				
				<h6><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span></h6>
				<h5><progress value=<%out.print(two);%> max=<%out.print(Out_Of_rating*5);%>></progress><%out.print(two/2);%></h5>
				
				<h6><span class="glyphicon glyphicon-star" style="color:rgb(255,215,0);"></span></h6>
				<h5><progress value=<%out.print(One);%> max=<%out.print(Out_Of_rating*5);%>></progress><%out.print(One);%></h5>
																	
			</div>
			
			<div class="col-lg-4 col-md-4 col-sm-4" style="background:url(img/SittingMan.png) center no-repeat;height:250px;background-size: cover;">
			</div>
			
			
			<br/>
			
			<hr>
						
			</div>
			<a class="btn btn-success" href="http://127.0.0.1:8082/DOS/Coching/Login_Rating.jsp?Sub=<%out.print(rst.getString("Course"));%>">Rate this product</a>
			</div>
						
			<!-- Ending of Rating and Review -->
		
			</details>
					<hr>
			
			<%
			 One=0;two=0;three=0;four=0;five=0;Out_Of_rating=0;
			 
			 }%>
			</div>
				</div>
		
			
	<%		

			
		}
		
		else if(Operation.equals("Place"))
		{    
			
			
			%>
			
			<%
			sql="Select city_name from cities where city_state like '"+request.getParameter("State")+"%' ";
			pst=conn.prepareStatement(sql);
			rst=pst.executeQuery(sql);
			while(rst.next())
			{
				System.out.println(rst.getString("city_name"));
				%>
				<option value=<%out.print(rst.getString("city_name"));%>><%out.print(rst.getString("city_name"));%></option>
				<%		
			}
		
		
		}
		
		else if(Operation.equals("Footer"))
		 {
			%>
			
			<!--Begining of Footer-->
			<footer class="container-fluid">
			<center><h3 style="color:white;margin-bottom: 3%">____SUGGESTED____</h3></center>
			<div>
			<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-12">
			<center>
				 	
			<ul style="list-style: none;margin-top: 10px;color:white;">
						<li><h4 style="color: white;">Top courses</h4></li>
						<li>Chemistry</li>
						<li>Physics</li>
						<li>Python</li>
						<li>Java</li>
						<li>HTML</li>	
						<li><a>more...</a></li>	
					</ul>
			</center>
		</div>

		<div class="col-lg-4 col-md-4 col-sm-12">
			<center>
			<ul style="list-style: none;margin-top: 10px;color:white;">
				<li><li><h4 style="color: white;">Top Exams</h4></li></li>
				<li>IIT</li>
				<li>IIM</li>
				<li>Bank</li>
				<li>Railway</li>
				<li>Postoffice</li>	
				<li><a>more...</a></li>
			</ul>
			</center>
		</div>

		<div class="col-lg-4 col-md-4 col-sm-12">
			<center>
				
				<ul style="list-style: none;margin-top: 10px;color:white;">
					<li><li><h4 style="color: white;">Other Links</h4></li></li>
					<li>About Us</li>
					<li>Terms and Condition</li>
					<li>Privacy Policy</li>
					<li>Copyright</li>
					<li>Contact us</li>
					
				</ul>
		</center>
	</div>

	
	</div>
	<center>
	<h4 style="background-color: grey;width:100%;background-size: cover;margin-bottom:-5%;">
	Copyright
	</h4>
	</center>
</div>	

</footer> 
 
<!--Ending of Footer-->


			
			
			<%
		 }
		

		//Update New Data Of Section1
		
		else if(Operation.equals("Backend_Section1"))
		{
			String Coching_Name=request.getParameter("Coching_Name");
			String Coching_Phone=request.getParameter("Phone");
			String Coching_Website=request.getParameter("Coching_Website");
			String Coching_Headline=request.getParameter("Coching_Headline");
			String Coching_Address=request.getParameter("Coching_Address");
			String profile=request.getParameter("Profile");
			
		    sql="Update Profile set Coching_Name ='"+Coching_Name+"',Address='"+Coching_Address+"',Phone='"+Coching_Phone+"',Headline='"+Coching_Headline+"',Website='"+Coching_Website+"' where Id='"+profile+"' ";
	        pst=conn.prepareStatement(sql);
          	pst.execute();

			System.out.println("Update SuccessFully");
	
			
		}
		//Show All Section2 Deleted Items Block
		else if(Operation.equals("Update"))
		{
			System.out.println("Updatingggggggggggggggggggggggggggggggggggggggggg");
			sql="SELECT * from highlight where Id='"+request.getParameter("readrecord")+"' ";
			 pst=conn.prepareStatement(sql);
			 rst=pst.executeQuery(sql);
			 while(rst.next())
			 {
				 System.out.println(rst.getString("Text"));
				 String s=rst.getString("Text");
				 %>
				 <div>
				
				 <h4><%out.println(s);%><a class="btn btn-danger pull-right" onclick="BackendSection2_Delete('<%=s %>')">Delete</a></h4><br>
				 </div>
				 <%
			 }
		}
		
		//Show All Section3 Deleted Items Block
				else if(Operation.equals("Update3"))
				{
					System.out.println("Updatingggggggggggggggggggggggggggggggggggggggggg Achivement");
					sql="SELECT * from achivement where Id='"+request.getParameter("readrecord3")+"' ";
					 pst=conn.prepareStatement(sql);
					 rst=pst.executeQuery(sql);
					 while(rst.next())
					 {
						 System.out.println(rst.getString("Title"));
						 String s=rst.getString("Title");
						 %>
						 <div>
						
						 <h4><%out.println(s);%><a class="btn btn-danger pull-right" onclick="BackendSection3_Delete('<%=s %>')">Delete</a></h4><br>
						 </div>
						 <%
					 }
				}
	
		//Given Rating
				else if(Operation.equals("Rating"))
				{	
					String RatingValue=request.getParameter("RatingValue");
					String TutorId=request.getParameter("TutorId");
					String Subject=request.getParameter("Subject");
					String Email=request.getParameter("Email");
					try
					{
						 System.out.println("Updatingggggggggggggggggggggggggggggggggggggggggg Course");
						 sql="SELECT * from rating where Id='"+TutorId+"' and Email='"+Email+"' ";
			 			 pst=conn.prepareStatement(sql);
						 rst=pst.executeQuery(sql);
						 if(rst.next())
						 {
    			    			sql="Update rating set Star ='"+RatingValue+"' where Id='"+TutorId+"' and Email='"+Email+"' ";
						        pst=conn.prepareStatement(sql);
					          	pst.execute();
				 		 
						 }
						 else
						 {
							 	sql="Insert into rating(Id,Course,Star)Values('"+TutorId+"','"+Subject+"','"+RatingValue+"')";
								pst=conn.prepareStatement(sql);
								pst.execute(sql);	
						 }
						
					}
					catch(Exception e)
					{
						
					}
					System.out.println("Working Successfully.....................................Done");
					
					
					
				}
		//Show All Section4 Deleted Items Block
				else if(Operation.equals("Update4"))
				{
					 System.out.println("Updatingggggggggggggggggggggggggggggggggggggggggg Course");
					 sql="SELECT * from subject where Id='"+request.getParameter("readrecord4")+"' ";		 pst=conn.prepareStatement(sql);
					 rst=pst.executeQuery(sql);
					 while(rst.next())
					 {
						 System.out.println(rst.getString("Course"));
						 String s=rst.getString("Course");
						 %>
						 <div>
						
						 <h4><%out.println(s);%><a class="btn btn-danger pull-right" onclick="BackendSection4_Delete('<%=s %>')">Delete</a></h4><br>
						 </div>
						 <%
					 }
				}
				

	
		
	}
	catch(Exception e)
	{
		System.out.println("Exception");	
	}

	
%>
				<!-- -----------------Begining of Add New Headline------------------ -->

					<div class="modal fade" id="Add_New_Highlight" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">+Add New Headline</h4>				          					
					        			</div>
					        		<div class="modal-body">
					          			
					          			<form>
					          			 <label>Headline</label>
					          			 <input type="text" class="form-control"placeholder="Headline" id="Section2_Headline" value="" style="padding:0px;" autofocus>
										</form>
					        		</div>
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" onclick="BackendSection2()"data-dismiss="modal">Save</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>
					  

					<!-- -----------------End New Headline------- -->
					
					
					<!-- -----------------Begining of Add New Achivement------------------ -->

					<div class="modal fade" id="Add_New_Achivement" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">+Add New Achivement</h4>				          					
					        			</div>
					        		<div class="modal-body">
					          			
					          			<form>
					          			 <label>Achivement</label>
					          			 <input type="text" class="form-control"placeholder="Achivemenet" id="Section3_Achivement" value="" style="padding:0px;" autofocus>
					          			 <label>URL</label>
					          			 <input type="URL" class="form-control"placeholder="URL" id="Section3_Achivement_URL" value="" style="padding:0px;" autofocus>
										</form>
					        		</div>
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" onclick="BackendSection3()"data-dismiss="modal">Save</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>
					  

					<!-- -----------------End New Achivement------- -->
										
					
					
					<!-- -----------------Begining of Add New Course------------------ -->

					<div class="modal fade" id="Add_New_Course" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">+Add New Course</h4>				          					
					        			</div>
					        		<div class="modal-body">
					          			
					          			<form>
					          			 <label>Course</label>
					          			 <input type="text" class="form-control"placeholder="Course" id="Section4_Course" value="" style="padding:0px;" autofocus>
					          			 <label>Type</label>
					          			 <Select id="Combo_Section4" class="form-control">
					          			 <option value="Select">Select</option>
					          			 <option value="Skill">Course</option>
					          			 <option value="Exam">Competitive Exam</option>
					          			 </Select>
					           			 <label>PromoCode</label>
					        			 <input type="text" class="form-control"placeholder="PromoCode" id="Section4_PromoCode" value="" style="padding:0px;" oninput="Promo()">
					        			 <p id="Promo_Check" style="color:red;"></p>
					           			 <label>Fee</label>
					          			 <input type="text" class="form-control"placeholder="Fee" id="Section4_Fee" value="" style="padding:0px;" >
					  
					          			 </form>
					        		</div>
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" onclick="BackendSection4()"data-dismiss="modal">Save</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>
					  

					<!-- -----------------End New Course------- -->
										
					
					<!-- -----------------Add Logo------------------ -->

					<div class="modal fade" id="Section1_Logo_Image" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">Edit about</h4>				          					
					        			</div>
					        		<div class="modal-body">
					        		<center>
									<FORM ENCTYPE="multipart/form-data" ACTION="uploadFileLogo.jsp" METHOD=POST>
									<INPUT NAME="file" TYPE="file" class="btn btn-danger" id="contentType" >
									<input type="submit" value="Send File" class="btn btn-default" style="margin-top:10px;">
									</form>
									</center>	
					         		</div>
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>
					  

					<!-- -----------------End Add Logo------- -->
	
											
										



<script>
</script>
</body>
</html>