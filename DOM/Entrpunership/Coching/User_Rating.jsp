<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    
</head>
<style>
body
{
	margin:0px;
	padding:0px;
}
</style>
<body style="">


<%
 String name=(String)request.getParameter("name");
 String email=(String)request.getParameter("email");
 String imag=(String)request.getParameter("img");
 String TutorId=(String)session.getAttribute("TutorId");
// String Subject=(String)request.getParameter("Sub");




 try
 {
	 if(session.getAttribute("TutorId")==null)
	 {
	 response.sendRedirect("Index.jsp");
	 }

	 else{
 %>

<!-- Begining Of Header -->

<nav class="navbar navbar  navbar-fixed-top" style="background-color:Dodgerblue;">
	<div class="container-fluid">
     		<div class="nevbar-header">
<img src="<%out.println(imag);%>" class="navbar-brand" style="width:100px;height:100px;">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#NavMenu" style="margin-right:0px;margin-bottom:35px; background-color:black;"/>
 				<span class="icon-bar" style=""></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 				<span class="icon-bar"></span>
 			</button>
		</div>
		<div class="nav nabbar-nav navbar-right"Style="margin-top:10px;">
			
		</div>
		<div class="collapse navbar-collapse" id="NavMenu">
  		<ul class="nev navbar-nav">
			<li style="margin-top:25px; margin-left:15px;list-style:none;"title="Home"><a href="#" style="text-decoration:none;">Home</a></li>
		    <li style="margin-top:25px; margin-left:15px;list-style:none;"title="Logout"><a href="https://accounts.google.com/Logout?hl=en-GB&continue=https://mail.google.com/mail&service=mail&timeStmp=1534599964&secTok=.AG5fkS9o8bENh_jsqD5SXUTsrkCsNziaeg"style="text-decoration:none;">Logout</a></li>
		</ul>
		</div>
	</div>
</nav>
  
 

<!-- Ending Of Header -->



<!-- Begining of Star Rating -->
<div style="margin-top:15%;">
<center>
<img src="img/CochingLogo/DefaultImage.png" style="width:15%;min-width:15em;border:2px solid gray;">
<figcaption style="">Logo Name</figcaption>
</center>
<center><br/>
<%
for(int i=1;i<=5;i++)
{
	%>
		<span class="glyphicon glyphicon-star" style="color:gray;font-size:2.5em;" onclick="Rating(<%= i%>,'<%= TutorId%>','<%= email %>)" id="Star<%=i %>"></span>
	<%
}
%>
</center>
</div>
<!-- Ending of Star Rating -->
<%}}
 catch(Exception e)
 {
 	System.out.println("Exceptione");
 }
 %>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script type="text/Javascript">

function Rating(a,Tutor,email)
{

	var Subject=ParseURLParameter("Sub");	
	var i;
	for(i=5;i>=a;i--){
		document.getElementById("Star"+i).style.color="gray";
		}
	for(i=1;i<=a;i++){
		
		document.getElementById("Star"+i).style.color="yellow";
		
		}
	
	$.ajax({
		  url:"Backend.jsp",
		  type:'post',
		  data: { Operation:"Rating",RatingValue :a,TutorId :Tutor,Subject :Subject,Email :email},
		  success:function(data,status){
			  alert("you give the "+a +"Star");
		  }

});
	
	alert("Sarthak JAIN you give the "+a +"Star");

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