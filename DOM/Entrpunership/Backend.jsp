<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>	
  
    <%@page import="java.lang.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:declaration>
String first_Name;
String last_Name;
String former_Name;
String headline;
String country;
String city;
String web_url;
String company;
String phone;
String home;
String address;
String month;
String day;
String Industry;
String Add_Education_School;
String Add_Education_Degree;;
String Add_Education_Feild;
String Add_Education_Start_Year;
String Add_Education_End_Year;
String Add_Education_Grade;
String Add_Education_Description;
</jsp:declaration>
<%
System.out.println(Industry);
try
{	//System.out.println("Add New Skill"+request.getParameter("Add_New_Skill"));
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Entrpunership","root","sarthak");
	PreparedStatement pst;
	ResultSet rst;
	String Id=(String)session.getAttribute("Id");
	System.out.println("Update Function  Enter");
	String readrecord=(String)request.getParameter("readrecord");
	
	
	if("Edit".equals(request.getParameter("Operation")))
	{
		first_Name=request.getParameter("firstname");
		last_Name=request.getParameter("lastname");
		former_Name=request.getParameter("formername");
		headline=request.getParameter("headline");
		country=request.getParameter("country");
		city=request.getParameter("city");
		web_url=request.getParameter("Web_Url");
		company=request.getParameter("company");
		phone=request.getParameter("Phone");
		home=request.getParameter("Phonehome");
		address=request.getParameter("address");
		month=request.getParameter("month");
		day=request.getParameter("day");
		Industry=request.getParameter("Industry");
	
	System.out.println(country);
	
	String Query="Update profile set Mobile ='"+phone+"',Address='"+address+"',First_Name='"+first_Name+"',Last_Name='"+last_Name+"',Former_Name='"+former_Name+"',Headline='"+headline+"',Country='"+country+"',City='"+city+"',Industry='"+Industry+"',Website_URL='"+web_url+"',Company='"+company+"',Birthday_Month='"+month+"',Birthday_Day='"+day+"' where Id='"+Id+"' ";
	          pst=conn.prepareStatement(Query);
            pst.execute();
  
	System.out.println("Update SuccessFully");
	}
	
	else if("AddNewSkill".equals(request.getParameter("Operation")))
	{   System.out.println("Skill Working");
		String Query="INSERT INTO skills(Id,Skill)VALUES('"+Id+"','"+request.getParameter("Add_New_Skill")+"')";
		pst=conn.prepareStatement(Query);
		pst.execute();
		System.out.println("Session = "+session.getAttribute("Id"));
		
	}
	else if("Summary".equals(request.getParameter("Operation")))
	{

		String Query="Update profile set About_Summary='"+request.getParameter("Summary")+"' where Id='"+Id+"' ";
		          pst=conn.prepareStatement(Query);
	            pst.execute();
	  
		System.out.println("Update SuccessFully");
			
	}
	else if("Education_Edit".equals(request.getParameter("Operation")))
	{
		Add_Education_School=request.getParameter("Add_Education_School");
		Add_Education_Degree=request.getParameter("Add_Education_Degree");
		Add_Education_Feild=request.getParameter("Add_Education_Feild");
		Add_Education_Start_Year=request.getParameter("Add_Education_Start_Year");
		Add_Education_End_Year=request.getParameter("Add_Education_End_Year");
		Add_Education_Grade=request.getParameter("Add_Education_Grade");
		Add_Education_Description=request.getParameter("Add_Education_Description");



		String Query="INSERT Into education(Id,Institute,Degree,Field_of_study,Start_Year,End_Year,Grade,Description)VALUES('"+Id+"','"+Add_Education_School+"','"+Add_Education_Degree+"','"+Add_Education_Feild+"','"+Add_Education_Start_Year+"','"+Add_Education_End_Year+"','"+Add_Education_Grade+"','"+Add_Education_Description+"')";
		        pst=conn.prepareStatement(Query);
	            pst.execute();
	  
		System.out.println("Education Function SuccessFully");
			
	}
	else if("Education_Update".equals(request.getParameter("Operation")))
	{	System.out.println("Update Function  Enter");
		String Update_Education_School=request.getParameter("Update_Education_School");
		String Update_Education_Degree=request.getParameter("Update_Education_Degree");
		String Update_Education_Feild=request.getParameter("Update_Education_Feild");
		String Update_Education_Start_Year=request.getParameter("Update_Education_Start_Year");
		String Update_Education_End_Year=request.getParameter("Update_Education_End_Year");
		String Update_Education_Grade=request.getParameter("Update_Education_Grade");
		String Update_Education_Description=request.getParameter("Update_Education_Description");
		String Query="Update education set Institute='"+Update_Education_School+"',Degree='"+Update_Education_Degree+"',Field_of_study='"+Update_Education_Feild+"',Start_Year='"+Update_Education_Start_Year+"',End_Year='"+Update_Education_End_Year+"',Grade='"+Update_Education_Grade+"',Description='"+Update_Education_Description+"' where Roll='"+request.getParameter("Roll")+"' and Id='"+Id+"' ";
		        pst=conn.prepareStatement(Query);
	            pst.execute();
	  
		System.out.println("Education Update Function SuccessFully");
			
	}
	else if("Delete".equals(request.getParameter("Operation")))
	{
		System.out.println("Result = "+request.getParameter("Operation"));
		String sql="DELETE FROM skills WHERE Roll='"+request.getParameter("Delete")+"'";
	      //conn=DriverManager.getConnection("jdbc:mysql://localhost/user","root","");
	      pst =conn.prepareStatement(sql);
	      //pst.setString(1,ticket.getText());
	      pst.executeUpdate();
	}
	else if("Add_Subject".equals(request.getParameter("Operation")))
	{
		System.out.println("Workinnggggggggggggggggggggggggggggggggggggggggggggggggggggggg");
		
		String Sql="Select * from skills where ID='"+Id+"' ";
		pst=conn.prepareStatement(Sql);
		rst=pst.executeQuery(Sql);
		%><table class="table table-border table-striped"><tr>
		<th></th>
		</tr>
		
				<%
				while(rst.next())
				{     System.out.print(rst.getString("Skill"));
					%><tr><td><strong><a ><%out.print(rst.getString("Skill"));
					%></a></strong></td>
			
					
					</tr><%
	             }
	
	}
	else
	{
		String SQL="Select * from skills where ID='"+Id+"' ";
		pst=conn.prepareStatement(SQL);
		rst=pst.executeQuery(SQL);
		
			%><table class="table table-border table-striped"><tr>
			<th></th>
			<th class="push_right"></th>
			</tr>
			
					<%
					while(rst.next())
					{
						%><tr><td> <%out.print(rst.getString("Skill"));
						%></td>
						<td class="push-right" onclick="Delete(<%out.print(rst.getString("Roll"));%>)">Delete</td>
						
						</tr><%
		}
		
	}
	}
catch(Exception e)
{
	System.out.println("Exception ");
}


%>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	  
	  //window.location.replace("Profiles.jsp");
})
</script>
</body>
</html>