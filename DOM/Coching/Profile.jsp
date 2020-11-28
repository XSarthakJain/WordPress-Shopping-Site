<%@ page session="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*" %>	
    <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />



	
	<!-- Font Awesome Icon -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Custom stlylesheet -->
	
	<link rel="icon" type="image/png" href="https://www.shareicon.net/data/128x128/2015/09/24/106774_camera_512x512.png"/>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    


</head>
<body>



<%
try
{
	
	HttpSession session=request.getSession();
	
	//session.setAttribute("TutorId",request.getParameter("Profile"));
	
	
	String Profile="Nothing";
	Profile=request.getParameter("Profile");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tutor","root","sarthak");
	PreparedStatement pst;
	ResultSet rst;
	String Id= "null";
	Id=(String)session.getAttribute("Id");
	System.out.println("Profile = "+Profile);
	if(Profile!=null || Id!=null)
	{
		System.out.println("Working Successfully");
	}

%>

<!-- Begining Nav -->
	<nav id="nav" class="navbar" style="background-color: #283E4A;padding:10px;">
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

					
				</div>

				<!--  Main navigation  -->
				<ul class="main-nav nav navbar-nav navbar-right">
				    
					<input type="text" id="Icon"style="width:100%;height:3em;border-radius:5px;padding-left:10px;"placeholder="Search">
				</ul>
				
				<!-- /Main navigation -->

			</div>
		</nav>
		<!-- /Nav -->

<!-- Ending Nav -->

<!--Begining Main Containt -->

<div class="container" >
<div id="Section1">
</div>

<div id="Section2">
</div>

<div id="Section3">
</div>

<div id="Section4">
</div>

</div>

<!-- Ending Main Containt -->


<!--Begining of Footer-->
<div id="Footer_Portion">

</div>
<!--Ending of Footer-->

<div id="back-to-top"></div>
	<!-- /Back to top -->

<%
}
catch(Exception e)
{
	System.out.println("Exception in Profile.JSP");
}
%>

<!-- -----------------Begining of Delete Highlight------------------ -->

					<div class="modal fade" id="Delete_Highlight" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">Delete Highlight</h4>				          					
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
					  

					<!-- -----------------End Delete Headline------- -->
					

<!-- -----------------Begining of Delete Achivement------------------ -->

					<div class="modal fade" id="Delete_Achivement" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">Delete Achivement</h4>				          					
					        			</div>
					        		<div class="modal-body">
					          			
					          			<div id="readrecord3">
														          				
          								</div>
					        		</div>
					        		
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>
					  

					<!-- -----------------End Delete Achivement------- -->


					<!-- -----------------Begining of Delete Course------------------ -->

					<div class="modal fade" id="Delete_Course" role="dialog">
					    	<div class="modal-dialog">    
					    
					      	<!-- Modal content-->
					      		<div class="modal-content">
					        			<div class="modal-header">
					          				<button type="button" class="close" data-dismiss="modal">&times;</button>
					          					<h4 class="modal-title">Delete Course</h4>				          					
					        			</div>
					        		<div class="modal-body">
					          			
					          			<div id="readrecord4">
														          				
          								</div>
					        		</div>
					        		
					        		<div class="modal-footer">
					          			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					        		</div>
					      		</div>
					      
					    	</div>
					  </div>
					  

					<!-- -----------------End Delete Course------- -->
					
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
  
  var Profile=ParseURLParameter("Profile");
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
	
  
 $(document).ready(function(){
	 
	
	alert(Profile);
	readRecords();  
	readRecords3();
	readRecords4();
	Section1();
	Section2();
	Section3();
	Section4();
	
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

 function Section4()
 {
	  $.ajax({
		  type:'post',
		  url:'Backend.jsp',
		  data: { Operation : "Section4",Profile :Profile
			  
		  },
		  success:function(data,status){
			  $('#Section4').html(data);
	
			  }
	  });
	 
 }

 
 function Section3()
 {
	   $.ajax({
			  type:'post',
			  url:'Backend.jsp',
			  data: { Operation : "Section3",Profile :Profile
				  
			  },
			  success:function(data,status){
				  $('#Section3').html(data);
		
				  }
		  });
	 
 }
  
 function Section2()
 {
	 $.ajax({
		  type:'post',
		  url:'Backend.jsp',
		  data: { Operation : "Section2",Profile :Profile
			  
		  },
		  success:function(data,status){
			  $('#Section2').html(data);
	
			  }
	  });
	
	 	  	    
	
 }

 function Section1_Model()
 {
	 alert("Okkkkkkkkkk");
 }

 
 
 function BackendSection()
 {
	var Coching_Name=document.getElementById("Section1_CochingName").value;
	var Coching_Phone=document.getElementById("Section1_Phone").value;
	var Coching_Website=document.getElementById("Section1_Website").value;
	var Coching_Headline=document.getElementById("Section1_Headline").value;
	var Coching_Address=document.getElementById("Section1_Address").value;
	alert(Coching_Phone);
	  $.ajax({
			 
		  url:"Backend.jsp",
		  type:'get',
  		  data: {Coching_Name :Coching_Name,Phone :Coching_Phone,Coching_Website :Coching_Website,Coching_Headline :Coching_Headline,Coching_Address :Coching_Address,Profile :Profile,Operation :"Backend_Section1"
			  },
			  success:function(data,status){				  
				  Section1();
			  }
	  });
  

	
 }
 function Section1()
 {
	 $.ajax({
		  type:'post',
		  url:'Backend.jsp',
		  data: { Operation : "Section1",Profile :Profile
			  
		  },
		  success:function(data,status){
			  $('#Section1').html(data);
	
			  }
	  });
	
 }
 
 function BackendSection2()
 {
	 var Add_New_Highlight=document.getElementById("Section2_Headline").value;
	 alert(Add_New_Highlight);
	 
	 $.ajax({
		  type:'get',
		  url:'Backend.jsp',
		  data: { Operation : "Section2_Add",Profile :Profile,Add_New_Highlight :Add_New_Highlight},
		  success:function(data,status){
			  Section2();
			  readRecords();
		  }

  });
	 
 }
 
 
 function BackendSection2_Delete(Del)
	{
		alert(Del);
		
		$.ajax({
	  		  url:"Backend.jsp",
	  		  type:'post',
			  data: { Operation : "Section2_Deletion",Profile :Profile,Delete :Del},
			  success:function(data,status){
				  readRecords();
				  Section2();
				  alert("okkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
			  }

	  });
	}
 	
 function readRecords()
 {
	  var readrecord="readrecord";
	  $.ajax({
		  url:"Backend.jsp",
		  type:"post",
		  data:{readrecord:Profile,Operation:"Update" },
		  success:function(data,status){
			  $('#readrecord').html(data);
			  
			  
		  }
	  });
	  
 }

 
 function BackendSection3()
 {
	 var Add_New_Achivement=document.getElementById("Section3_Achivement").value;
	 var Add_New_Achivement_URL=document.getElementById("Section3_Achivement_URL").value;
	 
	 alert(Add_New_Achivement);
	 
	 $.ajax({
		  type:'get',
		  url:'Backend.jsp',
		  data: { Operation : "Section3_Add",Profile :Profile,Add_New_Achivement :Add_New_Achivement,Add_New_Achivement_URL :Add_New_Achivement_URL},
		  success:function(data,status){
			  
			  Section3();
			  alert("BackendSection3");
			  readRecords3();
		  }

  });
	 
 }
	
 function BackendSection3_Delete(Del)
	{
		alert(Del);
		
		$.ajax({
	  		  url:"Backend.jsp",
	  		  type:'post',
			  data: { Operation : "Section3_Deletion",Profile :Profile,Delete3 :Del},
			  success:function(data,status){
				  readRecords3();
				  Section3();
				  alert("okkkkkkkkkkkkkkkkkkkkkkkkkkkkk Done................................");
			  }

	  });
	}
	
function readRecords3()
{
	  var readrecord3="readrecord3";
	  $.ajax({
		  url:"Backend.jsp",
		  type:"post",
		  data:{readrecord3:Profile,Operation:"Update3" },
		  success:function(data,status){
			  $('#readrecord3').html(data);
			  
			  
		  }
	  });
	  
}


function BackendSection4()
{
	 var Add_New_Course=document.getElementById("Section4_Course").value;
	 var Type_Course=document.getElementById("Combo_Section4").value;
	 var PromoCode_Course=document.getElementById("Section4_PromoCode").value;
	 var Fee_Course=document.getElementById("Section4_Fee").value;
	 
	 alert(Add_New_Course);
	 
	 $.ajax({
		  type:'get',
		  url:'Backend.jsp',
		  data: { Operation : "Section4_Add",Profile :Profile,Add_New_Course :Add_New_Course,Type_Course :Type_Course,PromoCode_Course :PromoCode_Course,Fee_Course :Fee_Course},
		  success:function(data,status){
			  
			  Section4();
			  alert("BackendSection4");
			  readRecords4();
		  }

 });
	 
}
	
function BackendSection4_Delete(Del)
	{
		alert(Del);
		
		$.ajax({
	  		  url:"Backend.jsp",
	  		  type:'post',
			  data: { Operation : "Section4_Deletion",Profile :Profile,Delete4 :Del},
			  success:function(data,status){
				  readRecords4();
				  Section4();
				  alert("okkkkkkkkkkkkkkkkkkkkkkkkkkkkk Done................................");
			  }

	  });
	}
	
function readRecords4()
{
	  var readrecord4="readrecord4";
	  $.ajax({
		  url:"Backend.jsp",
		  type:"post",
		  data:{readrecord4:Profile,Operation:"Update4" },
		  success:function(data,status){
			  $('#readrecord4').html(data);
			  
			  
		  }
	  });
	  
}

function Promo()
{
	var v=document.getElementById("Section4_PromoCode").value;
	var result=v.slice(0,5);
	if(result=="Tutor"){
		document.getElementById("Promo_Check").innerHTML=v;
		document.getElementById("Section4_PromoCode").value=v;
	}
		else
		{
			document.getElementById("Promo_Check").innerHTML="Tutor"+v;
			document.getElementById("Section4_PromoCode").value="Tutor"+v;
			
		}
		
}

function RatingSection()
{
	//document.getElementById("Rating_Count").innerHTML="97834278976";
}

function five(v)
{
	alert(v);
}


  </script>

</body>
</html>