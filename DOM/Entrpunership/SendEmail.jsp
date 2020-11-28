<%@ page session="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="javax.mail.*" %>
    <%@page import="javax.mail.internet.*" %>
    <%@page import="javax.activation.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String to = "utkarskjain@gmail.com";//change accordingly  
String from = "sarthakjain31797@gmail.com";//change accordingly  
String host = "localhost";//or IP address  

//Get the session object  
Properties properties = System.getProperties();  
properties.setProperty("mail.smtp.host", host);  
Session session = Session.getDefaultInstance(properties);  

//compose the message  
try{  
   MimeMessage message = new MimeMessage(session);  
   message.setFrom(new InternetAddress(from));  
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
   message.setSubject("Ping");  
   message.setText("Hello, this is example of sending email  ");  

   // Send message  
   Transport.send(message);  
   System.out.println("message sent successfully....");  

}
catch (MessagingException mex) {mex.printStackTrace();}  



%>


</body>
</html>