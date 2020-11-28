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
<title>Insert title here</title>
</head>
<body>
<jsp:declaration>
String v;
String Ip ,a0="",a1="",a3="";
Connection conn;
ResultSet rst;
PreparedStatement pst;
String roll;
 double d;
String s1;
String name2;
String mobile2;
String gender2;
String age2;
String aadhar2;
String acno3;
String name3;
String rupees3;

</jsp:declaration>
<jsp:scriptlet>
 v=(String)request.getParameter("text");
 name2=request.getParameter("name1");
 mobile2=request.getParameter("mobile1");
 gender2=request.getParameter("gender1");
 age2=request.getParameter("age1");
 aadhar2=request.getParameter("aadhar1");
 acno3=s1=(String)request.getParameter("acno2");
 name3=request.getParameter("name2");
 rupees3=request.getParameter("rupees2");
</jsp:scriptlet>
<%


	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:8080/Bank","root","sarthak");
	
		
	}catch(Exception e)
	{
		
	}
	


public void genroll()
{
    try
{
    String qry="SELECT Account_No FROM employee ORDER BY Account_No DESC LIMIT 1 ";
    pst=conn.prepareStatement(qry);
    rst=pst.executeQuery();
    if(rst.next())
    {
        String rl=rst.getString("Account_No");
        int ln=rl.length();
        String stxl=rl.substring(0,2);
        String snum=rl.substring(2,ln);
        int n=Integer.parseInt(snum);
        n++;
        snum=Integer.toString(n);
        roll=stxl+snum;
        
        
    }
    else
    {
        roll="TJ1201";
    }
    
}
catch(Exception e)
{
    
}
    }




if(request.getParameter("ok1")!=null)
{System.out.println("access");
try
{

	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:8080/Bank","root","sarthak");
	genroll();
 	String sql="Insert into employee(Name,Mobile,gender,Age,Aadhar,Account_No,Balance)Values('"+name2+"','"+mobile2+"','"+gender2+"','"+age2+"','"+aadhar2+"','"+roll+"','"+0+"')";
 	System.out.println("okkkkk");
 	pst=conn.prepareStatement(sql);
 	pst.execute();
 	%>	
 <h1>OPEN ACCOUNT</h1>
 	<cemter>
 	<h2>Successfully your Account Number=</h2><%out.println(roll);%>
 	</center>
 	
 	<%
}
catch(Exception e)
{
	System.out.println("Not Done");
	%><h1><center>Not Done</center></h1><%
}
}
else if(request.getParameter("ok2")!=null)
{System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
	s1=acno3;
	System.out.println(s1);
	String s2=name3;
	String s3=mobile2;
	String s4=aadhar2;
	
	String s5=rupees3;

	Double a=Double.parseDouble(s5);
	
	try
	{ Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:8080/Bank","root","sarthak");
		String sql="Select * from employee where Account_No='"+s1+"' AND Name='"+s2+"' AND Mobile='"+s3+"' AND Aadhar='"+s4+"' ";
      System.out.println("accccccccccccccesssss");
		pst=conn.prepareStatement(sql);
      rst=  pst.executeQuery();
      if(rst.next())
      {
     d=rst.getDouble("Balance");
   d=d+a;
   
%>
    <h1><center>
   Your Balance Is=<%out.println(d); %>
     </center></h1>
  <% 
   modify();
    
      }
      else
      {
    	  %><h1><center>
    	  Please Fill Correct Information
          </center></h1>
          <%
      }
	
}
	catch(Exception e)
	{
		System.out.println("yaaaaaaaaaaa");
	}
}
else if(request.getParameter("ok3")!=null)
{System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
	s1=acno3;
	System.out.println(s1);
	String s2=name3;
	String s3=mobile2;
	String s4=aadhar2;
	
	String s5=rupees3;

	Double a=Double.parseDouble(s5);
	
	try
	{ Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:8080/Bank","root","sarthak");
		String sql="Select * from employee where Account_No='"+s1+"' AND Name='"+s2+"' AND Mobile='"+s3+"' AND Aadhar='"+s4+"' ";
      System.out.println("accccccccccccccesssss");
		pst=conn.prepareStatement(sql);
      rst=  pst.executeQuery();
      if(rst.next())
      {
     d=rst.getDouble("Balance");
   if(d<a)
   {
	   %><h1><center>
	Your Balance is not Sufficient
   </center></h1>
   <%
     
   }
   else
	   {
	   d=d-a;
	   %><h1><center>
         Your Balance=<%out.println(d);%>
         <%
	   modify();
	   }
   
      }
      else
      {   %><h1><center>
           Please Fill Correct Information
           <%
      }
	
}
	catch(Exception e)
	{
		System.out.println("yaaaaaaaaaaa");
	}
}
else if(request.getParameter("submit5")!=null)
{String acno=acno3;
	try{
		String sql="select * from employee where Account_No='"+acno+"'";
		pst=conn.prepareStatement(sql);
		 rst=pst.executeQuery();
		 if(rst.next())
		 {  %><h1><center><br><%
			
			 String s1=rst.getString("Name");
			
			 %><br>Account Number=<% out.println(acno);%>
			 <br>name = <% out.println(s1); %>
			 <%
			 String s2=rst.getString("Mobile");
			 String s3=rst.getString("Aadhar");
			 String s4=rst.getString("Age");
			 String s5=rst.getString("gender");
			 String s6=rst.getString("Balance");
			 %>
			 <br>Moblie=<%out.println(s2); %>
			 <br>Aadhar Number=<%out.println(s3); %>
			 <br>Age=<%out.println(s4); %>
			 <br>Gender=<%out.println(s5); %>
			 <br>Balance=<%out.println(s6);%>
			 <%
		 }
		 else {
			%><h1><center>Your Information is Incorrect</center></h1><%
		 }
	}
	catch(Exception e)
	{
		%><h1><center>Technical Problem</center></h1><%
	}
}

}

public void modify()
{
try
{
 String q="update employee set Balance='"+d+"' where Account_No='"+s1+"'";
 pst=conn.prepareStatement(q);
 pst.execute();
  
}
catch(Exception e)
{
	System.out.println("Unsucessfully");
}
}



%>

</body>
</html>