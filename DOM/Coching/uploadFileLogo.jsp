<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.sql.*,java.util.zip.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

try{
System.out.println("Resulttttttttttttttttttttttttttttttttttt=============="+session.getAttribute("TutorId"));
if(session.getAttribute("TutorId")==null)
{
response.sendRedirect("Index.jsp");
}

else
{  String TutorId=(String)session.getAttribute("TutorId");
String saveFile="";
String contentType = request.getContentType();
System.out.println("Content Type"+contentType);
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
System.out.println("Save File ================================== "+saveFile);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File("C:/Users/Utkarsh/eclipse-workspace/DOS/WebContent/Coching/img/InstituteLogo/"+saveFile);
//File ff1 = new File(");
//ff.mkdir();

 //ff = new File("C:/Users/Utkarsh/eclipse-workspace/DOS/WebContent/Coching/img/InstituteLogo/"+TutorId+"/"+saveFile);
 System.out.println("Addressss ="+ff);
String ff1="img/InstituteLogo/"+saveFile;
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
%><br><table border="2"><tr><td><b>You have successfully upload the file:</b>
<%out.println(saveFile);%></td></tr></table>
<% out.print(ff);
Connection connection = null;
String connectionURL = "jdbc:mysql://localhost:3306/Tutor";
PreparedStatement psmnt = null;


	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tutor","root","sarthak");
	PreparedStatement pst;
	String sql="Update profile set Logo_Image ='"+ff1+"' where Id='"+TutorId+"' ";
	pst=conn.prepareStatement(sql);
	int s=pst.executeUpdate();

if(s>0){
System.out.println("Uploaded successfully !");
response.sendRedirect("Profile.jsp?Profile="+TutorId);
}
else{
System.out.println("Error!");
}

}
}
}
catch(Exception e){
    e.printStackTrace();
}

%>

</body>
</html>