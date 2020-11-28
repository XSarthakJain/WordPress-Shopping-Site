<%@ page  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="java.util.*" %>
    <%@page import="java.lang.*" %>
    <%@page import="java.net.*" %>
    <!DOCTYPE html>
<html>
<meta charset="utf-8"/>
	<meta name="viewport" content="width-device-width, initial-state=1/">
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="style.css">
<head>
	<title></title>
</head>
<body class="bdy">
	<div class="container" style="margin-top:10px;">
		<div style="background:white;">
		    <%				System.out.println("Yesssssssss");
		      try
		    {					System.out.println("Yeppppesssssssss");
		      int i=0;

		    		Class.forName("com.mysql.jdbc.Driver");
		    		System.out.println("Yesssssssss");
		    		Connection conn=DriverManager.getConnection("jdbc:mysql://node28367-filmyraddar.mj.milesweb.cloud/dos","root","OPGfks90219");
		    		PreparedStatement p6,p7;
					ResultSet result,result1;
					String q="select distinct Section from ques  ";
					p6=conn.prepareStatement(q);
					result=p6.executeQuery(q);
					System.out.println("Yesssssssss");
					while(result.next())
					{  %>
					    <h1> Section <%out.print(result.getString("Section"));%></h1>
					   <%
					String q1="select * from ques where Section='"+result.getString("Section")+"' ";
					p7=conn.prepareStatement(q1);
					result1=p7.executeQuery(q1);
					while(result1.next())
					{
						%>
						  <h4><%out.println(result1.getString("Question"));%></h4>
						  <input type="radio"name="Ques<%out.print(i);%>"value="Sec-1"><%out.println(result1.getString("Answer1"));%>
		                  <input type="radio"name="Ques<%out.print(i);%>"value="Sec-1"><%out.print(result1.getString("Answer2")); %>
						<%
						i++;
					}
					}
					%>
					<br><br>
					<form>
					<input type="Submit"name="Resume"value="Resume1" style="color:White;
 					width:15%;
 					height:5%;
 					cursor:pointer;
 					border-radius:5px;
 					background-color:red;">
					
					
					<input type="Submit"name="Submit"value="Submit" style="color:White;
 					width:15%;
 					height:5%;
 					cursor:pointer;
 					border-radius:5px;
 					background-color:red;">
					</form>
					<%
					String s5=(String)request.getParameter("Resume");
					String s6=(String)request.getParameter("Submit");
					System.out.println(s5);
					System.out.println(s6);
					
					/*String rst1=(String)request.getParameter("values");
					if(rst1.equals("grant"))
							{ System.out.println("Working...........");
						PreparedStatement p8;
						String n="sarthak JAIN",p="123";
			 			String s11="Insert Into dos_user where Name='"+n+"' and Password='"+p+"' ";//(Name,Password,Question,Answer,Section)VALUES("Sarthak JAIN,"123",'"+v+"','"+Ip+"','"+x+"','"+y+"')";
						 p8=conn.prepareStatement(s11);
						 p8.execute();
							}
							System.out.println(rst1);
							*/
		      }
		    catch(Exception e)
		    {
		    	System.out.println(e);
		    }
		    %>
		        
	    </div>
	</div>
<script language="Javascript">
		  var value="";
		  function Resume()
		  { value="grant";
		  alert("Okkkkkkk");
		  window.location.replace("Second.jsp?values="+value);
		  
		  }
							/*	  var c=document.getElementById("Copy").value;
			 							alert(value);
			 								 window.location.replace("http://node28367-filmyraddar.mj.milesweb.cloud/DOS/Third.jsp?text="+c+"&values="+value);*/
		  
		  </script>
</body>
</html>