<%@ page   language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>	
    <%@page import="java.lang.*" %>
    <%@page import="java.util.Map"%>
    <%@page import="java.util.HashMap"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width-device-width, initial-state=1/">
<title>Insert title here</title>

	
	
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

<jsp:declaration>


String video;
String poster;



</jsp:declaration>


	
					<!-- -----------------Begining of Join Now Signin------------------ -->

					<div class="modal" id="JoinNow" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">Join Now</h4>				          					
					        			</div>
					        		<div class="modal-body">
					          			
					          			
					          				
					          				<label>Name</label>
					          				<input type="text" name="name" class="form-control" placeholder="Name" autofocus id="Join_Name">
					          				<label>Email</label>
					          				<input type="Email"  value="" class="form-control" placeholder="Email" id="Join_Email">
					          				<input type="Submit"class="form-control" style="background-color:red;color:white;" onclick="JoinNow()">
					          								          				
					          			
					        		</div>
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>


	<!-- -----------------End of Join now SignIn------- -->




	<!---Begining of Nav---->
<nav>
	<div class="container-fluid" >

					<div class="Nav_Section">
					<!-- Logo -->								
						<a href="index.html"style="font-size:3vw;">
							GenuineGyaan
							<!--<img class="logo" src="img/logo.png" alt="logo">
							<img class="logo-alt" src="img/logo-alt.png" alt="logo">
						-->
						</a>
					<!-- /Logo -->
						<a href="#" class="btn btn-basic pull-right" id="Btn_Style"style="font-size:2.5vw;margin-right:5%;">Sign In</a>
						<a href="#" class="btn btn-basic pull-right"style="font-size:2.5vw;" data-toggle="modal" data-target="#JoinNow">Join now</a>
					

					</div>
					
					
				    
				
	</div>
</nav>
<!---Ending of Nav---->

<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tutor","root","sarthak");
PreparedStatement pst;
ResultSet rst;

try
{	int Course_Count=0;//Count Course
    int Exam_Count=0;//Count Exam
	HashMap<Integer, String>map = new HashMap<Integer, String>();
	HashMap<Integer,String>Exam =new HashMap<Integer,String>();
	map.clear();
	Exam.clear();
	String sql="select distinct Course,video,Poster from subject INNER JOIN home;";
	pst=conn.prepareStatement(sql);
	rst=pst.executeQuery(sql);
	while(rst.next())
	{
		video=rst.getString("video");
		poster=rst.getString("Poster");
		//System.out.println("Course = "+rst.getString("Course"));
		//System.out.println("Course = "+rst.getString("Exam"));
		if(rst.getString("Course")!=null )
			map.put(Course_Count++,rst.getString("Course"));
			
	//	if(rst.getString("Exam")!=null )
		//	Exam.put(Exam_Count++,rst.getString("Exam"));
		
		
	}

	%>


<!-------Begining Main Page------>

<div class="container"style="margin-bottom:5%;">

<div class="row">

<div class="col-lg-6 col-md-6 col-sm-12">

	<h1 class="Quote">Welcome to your <br> professional community</h1>
	 <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Course</a></li>
    <li><a data-toggle="tab" href="#menu1">Coching</a></li>
 	</ul>
 	
 	<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <form action="Search.jsp">
	<input type="text"placeholder="Course"class="form-control"id="textplace" name="Course">

	<input type="text"placeholder="Place"class="form-control"id="textplace1" name="Course_Place">
	<input type="submit"value="Search"id="Search">
	</form>

    </div>
    <div id="menu1" class="tab-pane fade">
      <form>
	<input type="text"placeholder="Coching"class="form-control"id="textplace">

	<input type="text"placeholder="Place"class="form-control"id="textplace1">
	<input type="submit"value="Search"id="Search">
	</form>
 </div>
  	</div>
	</div>

<div class="col-lg-6 col-md-6 col-sm-12">
<div id="BannerImage">
	 
		<img src="https://www.group.ba/wp-content/uploads/2018/03/animated-international-students-1.jpg"class="img-responsive">

</div>
</div>
</div>	
</div>

<!-------Ending Main Page------>

<!-----Begining Another Section 1----->

<section class="jumbotron" style="">
	
	<div>
		<div class="row" id="Course_Section">
        <div class="col-lg-6 col-md-6 col-sm-12">
        	<h2 class="Section1_Quote">Find the right job or internship for you</h2>
        </div>

        <div class="col-lg-6 col-md-6 col-sm-12">
        	<p id="Course_Section">Suggested Courses
        	<div >
        	<%for(int i=0;i<map.size();i++) {%>
        		<a href="Search.jsp?Course=<%out.print(map.get(i));%>&Course_Place=null" class="btn btn-basic"id="Subject"><%out.print(map.get(i));%></a>
        	<% }%>	
        	</div>

        	<a href="#" id="Show_More">Show more...</a>
        	
        </div>

		</div>
		
	</div>
</section>
<!-----Ending Another Section 1----->

<!--Begining of Slider-->


 <div class="container-fluid">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" style="">
      <div class="item active">
        <img src="img/Slider/1_WSCBhrH82fK1oztwf9cosA.jpg" alt="TeamDevil1" style="width:100%;height:300px;">
      </div>

      <div class="item">
        <img src="img/Slider/teamdevil4.jpg" alt="TeamDevil2" style="width:100%;height:300px;">
      </div>
    
      <div class="item">
        <img src="img/Slider/1_WSCBhrH82fK1oztwf9cosA.jpg" alt="Teachers3" style="width:100%;height:300px;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

</div>
<!--Ending of Slider-->
<!--Begining Section 4---->

<div class="container-fluid jumbotron"style="margin-top:2%;padding-left:2%;">

<div class="row" style="margin-top:2%;">

<div class="col-lg-6 col-md-6 col-sm-12">


<video  width="100%" height="100%" controls poster ="<%out.print(poster);%>">
  <source src="<%out.print(video);%>.mp4" type="video/mp4">
  <source src="<%out.print(video);%>.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>


<p>
Please Check it out.
<a href="https://www.youtube.com/embed/Qdz5n1Xe5Qo" target="_blank">What we are...</a>.
</p>


</div>	

<div class="col-lg-6 col-md-6 col-sm-12">

	<h1 style="margin:5%;color:red;">Find your community</h1>
	<h2 style="margin-left:5%;">No matter your profession, <br>we're in it together</h2>
</div>
</div>	
</div>
<!--Ending Section 5---->

<!---- Begining of Subscribe option-->

<div  id="contact_img" class="container-fluid" style="margin-top:2%;">
<div class="row ">
	
	<div class="col-lg-6 col-md-6 col-sm-12" style="margin-top: 2%;margin-left: 5%;margin-right:2%;color:white;" >
		<h2>Get in Touch</h2>
		 ipsum dolor sit amet, consectetur adipisicing elit,ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		 tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		 quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		 consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		 cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		 proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	</div>
				<div class="col-lg-5 col-md-5 col-sm-12" style="margin-top: 8%;">
					<form >

						<input type="text" placeholder="Name" class="form-control" id="Subscribe_Option">
						<input type="email" placeholder="Email" class="form-control" id="Subscribe_Option">
				
						<select class="form-control" id="Subscribe_Option">
							<option style="border-radius:20px 20px 20px 20px;">Interest</option>
						</select>
					
						<input type="Submit" id="Subscribe_Button"class="form-control" value="Subscribe" >
					</form>
				</div>
	
      </div>

</div>

<!----Ending of Subscribe option-->
<hr style="margin-top: 5px;margin-bottom: 5px;">

<!--Begining of Footer-->
<div id="Footer_Portion">

</div>
<!--Ending of Footer-->


<%
}	
catch(Exception e)
{
System.out.println("Exception");
}
%>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
  
  $(document).ready(function(){
	 
	  $.ajax({
		  type:'get',
		  url:'Backend.jsp',
		  data: { Operation : "Footer"
			  
		  },
		  success:function(data,status){
			  $('#Footer_Portion').html(data);
	
			  }
	  });
	 
  });
  
  
  function JoinNow()
  {
	  var Name=document.getElementById("Join_Name").value;
	  var Email=document.getElementById("Join_Email").value;
	  //  alert(Email);
	alert("Name="+Name);
	alert("Email="+Email);
	  $.ajax({

		  	type:'get',
		  	url:'Backend.jsp',
		  	data: { Operation : "JoinNow",JoinName :Name,JoinEmail :Email
		  	},
		  	success:function(data,status){
		  	alert("Successfully");
		  	window.location.assign("http://127.0.0.1:8082/DOS/Coching/Profile.jsp?Profile=Tutor1");
	
			  }
	  });
	
	
  }
  
  </script>

</body>
</html>