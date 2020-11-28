<%@ page session="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>	
    <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.body
{
margin:0px 0px 0px 0px;
padding:0px 0px 0px 0px;

}
.input
{
padding-left:10px;
width:90%;
height:45px;
border-radius:5px 5px 5px 5px;
margin:8px;
}
</style>
</head>
<body style="background:#6666ff;">
<jsp:declaration>
String email;
String password;
String roll;
</jsp:declaration>
<%
email=(String)request.getParameter("Email");
password=(String)request.getParameter("password");
%>
<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Entrpunership","root","sarthak");
	PreparedStatement pst;
	ResultSet rst;
	if(email.length()>1 || password.length()>1)
	{	//System.out.println("More then 1");
		//System.out.println("Email = "+email+"\nPassword = "+password);
		
		String sql="Select * from accounts where Email='"+email+"'";
		pst=conn.prepareStatement(sql);
		rst=pst.executeQuery(sql);
		if(rst.next())
		{
			out.println("Please Insert Valide Email");
		}
		else
		{	
		
						  			
			
      		String qry="SELECT Id FROM accounts ORDER BY Id DESC LIMIT 1 ";
      		pst=conn.prepareStatement(qry);
      		rst=pst.executeQuery(qry);
      		if(rst.next())
      			{
          			String rl=rst.getString("Id");
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
      
				String Query="INSERT INTO accounts(Email,Password,Id)VALUES('"+email+"','"+password+"','"+roll+"')";
				pst=conn.prepareStatement(Query);
        	    pst.execute();
            	out.println("Your Account has been created");
            	HttpSession session=request.getSession();
            	System.out.println("Id = "+roll);
            	session.setAttribute("Id",roll);
            	String Qry="INSERT INTO profile(Id)VALUES('"+roll+"')";
				pst=conn.prepareStatement(Qry);
        	    pst.execute();
            	
            	
	            %>
    	        <a href="Profiles.jsp"> <Button>Log In</Button></a>
        	    <%
				
		}
	}
}
catch(Exception e)
{
	System.out.println("Roll = "+roll);
		System.out.println("Something Went Wrong");

	System.out.println("Else Part");
}
%>
<div style="width:60%;height:550px;background-image:linear-gradient(red,purple);position:absolute;top:18%;left:30%;margin-left:-10%;margin-right:5px;">
<form action="Create_Account.jsp"method="post">
<br>
<br>
<h1 style="margin:40px;">Sign In</h1>
<br>
<br>

<center>

<input type="Email"name="Email"placeholder="Email"class="input"required>
<br><br>
<input type="password"name="password"placeholder="Password"class="input"required>
<br><br><br>
<input type="Submit"value="Log In"class="input"style="background-color:red;color:white;">
</form>

</div>
</center>



</body>
</html>