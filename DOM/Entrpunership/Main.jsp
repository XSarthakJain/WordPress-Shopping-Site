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
<link rel="stylesheet" href="Style1.css">
<body style="height:100%;">
<div class="wrapper">
<nav class="navbar navbar-inverse navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
     		<div class="nevbar-header">
			<a href="#" class="navbar-brand" title="FilmyDuniya" >Hindustan</a>
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
<br><br>
<div class="container">
 <form action="Main.jsp">
	     <center><input type="text"name="search"placeholder="Search "size="20px solid red" style="margin-top:55px;margin-bottom:10px;padding-top:15px;padding-bottom:5px;width:60%;padding-left:15px;height:45px;border-radius:5px;" />
	     <input type="submit"name="values"style="margin-left:-80px;background-color:skyblue;border-radius:5px;width:60px;"value="1"/></center>
	     <div class="jumbotron" style="padding-top:0px;padding-bottom:10px;">
	     </form>
	     </div>
	    
<%
try
{
String s1=null;
s1=(String)request.getParameter("values");
if(s1.equals("1"))
		{
	      System.out.println(s1);
	      String r=(String)request.getParameter("search");
	      %>
	      <h4 style="margin-top:20px;">Your Search Result <%out.print(r); %></h4>
	      <div class="container">
	      <%
	    Class.forName("com.mysql.jdbc.Driver");
	  	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Entrpunership","root","sarthak");
	  	PreparedStatement pst;
	  	ResultSet rst;
	  	System.out.println("Yessssssssssssssssssssssssssssss");
	  	String sql=" select * from verification where Username='"+r+"' ";
	  	pst=conn.prepareStatement(sql);
	  	rst=pst.executeQuery(sql);
	  	while(rst.next())
	  	{
	  		String pic=rst.getString("pic");
	  		System.out.println(pic);
	  	     %>
	  	     <div class="row jumbotron">
	     <div class="col-sm-8 ">
	     <img src=<%out.println(pic);%>style="cursor:pointer;width:20%;height:20%;border-radius:50%;padding-top:5px;padding-bottom:8px;margin-top:-25px;margin-bottom:-55px;">
	     </div>
	     <div class="col-sm-4">
	     <a href=<%out.println("http://localhost:8080/DOS/Entrpunership/Profile.jsp?Id="+rst.getString("id"));%>><h4 style="margin-top:20%;"><%out.println(r); %></h4></a>
	     </div>
	     </div>
	     </div>
	     
	  	     <%	
	  	
	  	} 
	      
	      
	      
	      
	      %>
	     
	     <%
	     
	      
		}

else if(s1.equals("2"))
{ %><h2 id="usr"><%out.println("Welcome "+request.getParameter("username"));%></h2><%
  System.out.println(s1);
String s0=request.getParameter("username");;
//response.sendRedirect("http://localhost:8080/DOS/Entrpunership/Main.jsp?username="+s0+"&values="+2+"&Pass="+"0");/*&img="+ii+"&Movie=null&value="+"0");*/
  
}
}
catch(Exception e)
{
	
}
%>

 
</div>

</div>
<footer class="navbar navbar-fixed-bottom">

<div class="row">
<div style="background:red;"class="col-sm-3" onclick="fun(1)"><p style="color:white;">Search</p></div>
<div class="col-sm-3" style="background:red;"onclick="fun2(2)">
<p style="Color:white;">Social</p>
</div>
<div class="col-sm-3"style="background:red;">
<p style="Color:white;">Chat</p>
</div>
<div class="col-sm-3" style="background:red;">
<p style="color:white;">Setting</p>
</div>
</div>
</footer>

<script language="Javascript">
function fun(s)
{ 
	
	var url=window.location.search;
	window.location.replace("http://localhost:8080/DOS/Entrpunership/Main.jsp"+url+"&values="+s);
	alert(url);
}







function fun2(s)
{  /*alert(r);
	var FullURL=window.location.search.substring(1);
	var ParameterArray=FullURL.split('?');
	var j=0;
	
	alert(ParameterArray[0]);
	
	
	var x=$('http://localhost:8080/DOS/Entrpunership/Main.jsp?username=sarthak').attr('<username>');
	alert(x);
	var up=new URLParser();
	var urlObj=up.Parse('http://localhost:8080/DOS/Entrpunership/Main.jsp?username=sarthak%20&%20Password=JAIN%20&%20Subject%20=%20Science&values=1');
	alert(urlObj.params['username']);
	*/
	
	
	
	var user="<%= request.getAttribute("username") %>";
    alert(user);
	var url=window.location.search;
window.location.replace("http://localhost:8080/DOS/Entrpunership/Main.jsp"+url+"&values="+s);
	alert(s);
	}
</script>
</body>
</html>