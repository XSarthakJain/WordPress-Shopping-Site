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
<title>Insert title here</title>
</head>
<body>
<%
 String name=(String)request.getParameter("text");
 String email=(String)request.getParameter("values");
 String imag=(String)request.getParameter("img");
 String Film=(String)request.getParameter("Movie");
  %>
  
  
  <nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
     		<div class="nevbar-header">
<img src="<%out.println(imag);%>" class="navbar-brand" style="width:100px;height:100px;">
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
			<li style="margin-top:25px; margin-left:15px;list-style:none;"title="Home"><a href="#" style="text-decoration:none;">Home</a></li>
		    <li style="margin-top:25px; margin-left:15px;list-style:none;"title="Theater"><a href="https://accounts.google.com/Logout?hl=en-GB&continue=https://mail.google.com/mail&service=mail&timeStmp=1534599964&secTok=.AG5fkS9o8bENh_jsqD5SXUTsrkCsNziaeg"style="text-decoration:none;">Logout</a></li>
		</ul>
		</div>
	</div>
</nav>
  
  
  <div class="container">
 <div class="row">
 <h4>Welcome <%out.println(name);%></h4>
<p><%out.println(email);%>
</p>
 </div>
 <div class="row jumbotron"style="padding-top:5px;padding-bottom:5px;margin-top:25px;">
 <h3>Reminder</h3>
 </div>
 <%
 
int flag=0;
 if(request.getParameter("Movie")!=null)
 {
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/Filmy","root","OPGfks90219");
	 Statement smt=conn.createStatement();
	 PreparedStatement pst;
	 ResultSet rst;
	
	 String sql="Select * from identity where Email_id='"+email+"' and Reminder='"+Film+"' ";
	 pst=conn.prepareStatement(sql);
		rst=pst.executeQuery(sql);
		
		while(rst.next())
		{
//System.out.println("Movie Already Avalible");		
			flag=1;
			
		
		}
		
		
 }
 catch(Exception e)
 {
	 
 } 
 
 } 
 if(flag==0)
 {
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/Filmy","root","OPGfks90219");
	 Statement smt=conn.createStatement();
	 PreparedStatement pst;
	 ResultSet rst;
	
	 String sql="insert into identity(Email_Id,Reminder)Values('"+email+"','"+Film+"')";
	 pst=conn.prepareStatement(sql);
	 pst.execute();
 }
 catch(Exception e)
 {
	 
 }
 }
 
 
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/Filmy","root","OPGfks90219");
	 Statement smt=conn.createStatement();
	 PreparedStatement pst;
	 ResultSet rst;
	
	 String sql="Select * from identity where Email_id='"+email+"' ";
	 pst=conn.prepareStatement(sql);
		rst=pst.executeQuery(sql);
		%><div class="container"><%
		while(rst.next())
		{
			%>
			<div class="row jumbotron"style="padding-top:5px;padding-bottom:5px;margin-top:15px;">
			<div class="col-sm-4">
			<img src="<%out.println(imag);%>" style="width:50px;">
			</div>
			<div class="col-sm-6">
			 <div>
			 <h4><%out.println(rst.getString("Reminder"));%></h4>
			 </div>
			 </div>
			 <div class=col-sm-2">
			 <%String n=rst.getString("Reminder");%>
			 <form>
			<a href="#" class="btn btn-info btn-lg" onclick="fun(this.form,'<%=n%>')">
			        <span class="glyphicon glyphicon-trash"  onclick="fun(this.form,'<%=n%>')"></span> Trash 
        </a>
       </form>
			 </div>
			 </div>
			 <%
			try
			 {
			 String v0="";
		 		v0=(String)request.getParameter("value");
		 		
		 		if("Like".equals(v0))
		 		{System.out.println("v0==="+v0);
		 			Class.forName("com.mysql.jdbc.Driver");
		 			 Connection co=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/Filmy","root","OPGfks90219");
		 			 Statement s=conn.createStatement();
		 			 PreparedStatement p;
		 			 ResultSet r;
		 			 String sq="delete from identity where Email_id='"+email+"' AND Reminder='"+Film+"' ";
		 		     p=conn.prepareStatement(sq);
		 		     p.executeUpdate();   
		 		    System.out.println("Delete Successfully");
		 			String aa=request.getParameter("text");
		 			String ii=request.getParameter("img");		 					
		 			response.sendRedirect("http://node28367-filmyraddar.mj.milesweb.cloud/DOS/success.jsp?text="+aa+"&values="+email+"&img="+ii+"&Movie=null&value="+"0");
		 			
		 		System.out.println("v0==="+v0);
		 		
		 		}
			 }
			 catch(Exception e)
			 {
				 
			 }
		
		}
		%>
		</div>
		<%
		
		
 }
 catch(Exception e)
 {
	 
 } 
 

 
 %>
 </div>



<script language="Javascript">



var b=getUlParameter("values");
var c=getUlParameter("img");
var d=getUlParameter("Movie");
var z=getUlParameter("text");

/*
function getUrlParameter(sParam)
{var sPageUrl=window.location.search.substring(1);
alert(sPageUrl);
var sURLVariables=sPageUrl.split('&');
for(var i=1;i< sURLVariables.length;i++)
	{
	var sParameterName= sURLVariables[i].split('=');
	alert(sParameterName);
	if( sURLVariables[0]=sParam)
		{alert("CHECKING="+sURLVariables[1]);
		return sParameterName[1];
		}
	}
}*/
function getUlParameter(name)
{
	if(name=(new RegExp('[?&]'+encodeURIComponent(name)+'=([^&]*)')).exec(location.search))
		{
	//	alert("Alert="+decodeURIComponent(name[1]));
return decodeURIComponent(name[1]);
		}
}
/*
 function getUrParameter(sParam)
{var sPageUrl=window.location.search.substring(1);
alert(sPageUrl);
var sURLVariables=sPageUrl.split('&');
for(var i=a.length;i< sURLVariables.length;i++)
	{
	var sParameterName= sURLVariables[i].split('=');
	if( sURLVariables[0]=sParam)
		return sParameterName[1];
	}
}

function getrlParameter(sParam)
{var sPageUrl=window.location.search.substring(1);
alert(sPageUrl);
var sURLVariables=sPageUrl.split('&');
for(var i=1;i< sURLVariables.length;i++)
	{
	var sParameterName= sURLVariables[i].split('=');
	if( sURLVariables[0]=sParam)
		return sParameterName[1];
	}
}*/
		  var value="";
		  function fun(g,a)
		  { value="Like";
			 
			 //alert("value of a="+a);
			 window.location.replace("http://node28367-filmyraddar.mj.milesweb.cloud/DOS/success.jsp?text="+z+"&values="+b+"&img="+c+"&Movie="+a+"&value="+value);
			}
		 
		  
		 	
		  </scrt>
</body>
</html>