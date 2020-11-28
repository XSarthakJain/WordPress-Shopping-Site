<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Insert title here</title>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="59461226047-hkuv8l4ca33khava6a8fe3jh9u4c0j92.apps.googleusercontent.com">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
body
{
background-image:url('https://speechfoodie.com/gallery/335/img/www.freebiesgallery.com/wp-content/uploads/2013/08/blurred-background.jpg');
background-size:cover;
	backgeround-position:center center;
	background-repeat:no-repeat;
	height:100vh;
	width:100%;
	margin-top:-20px;
	padding-right:0px;
	margin-left:0px;
}
</style>
<body>
   <jsp:declaration>
      int v;
</jsp:declaration>
<jsp:scriptlet>
 v=0;
</jsp:scriptlet>
   <fieldset style="background-color:white;margin-left:30%;margin-right:30%;margin-top:15%;padding-top:50px;">
<legend style="width:80px;height:80px;border-radius:50%;background-color:white;margin-left:40%;"><img src="http://www.stickpng.com/assets/images/585e4bf3cb11b227491c339a.png" id="myImg" style="width:80px;height:80px;border-radius:50%;"></legend>
<center style="">
<script>
function getUrlParameter(sParam)
{var sPageUrl=window.location.search.substring(1);
var sURLVariables=sPageUrl.split('&');
for(var i=0;i< sURLVariables.length;i++)
	{
	var sParameterName= sURLVariables[i].split('=');
	if( sURLVariables[0]=sParam)
		return sParameterName[1];
	}
}
var a=getUrlParameter("Data");

</script>


   <div class="g-signin2" data-onsuccess="onSignIn" id="myP" style="margin-top:20px;width:250px;background-color:Red;border:2px solid red;"></div>

      <img id=""><br>
      <p id="name"></p>
      <div id="status">
   </div>
   </center>
   </fieldset>
   
<div id="status">
</div>
   <script type="text/javascript">
  
   function onSignIn(googleUser) {
	 
       var profile = googleUser.getBasicProfile();
       var imagurl=profile.getImageUrl();
       var name=profile.getName();
       var email=profile.getEmail();
       alert(email);
     
      window.location.replace("http://node28367-filmyraddar.mj.milesweb.cloud/DOS/success.jsp?text="+name+"&values="+email+"&img="+imagurl+"&Movie="+a);
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      
     // document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp?email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
   </script>
  
   <%
   System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
   /*
   try
   {
   String s0;
   s0=(String)request.getParameter("email");
   System.out.println(s0);
   if(!s0.isEmpty() || s0!=null)
   {
	   
	   System.out.println("value of s0="+s0);
   }
   }
   catch(Exception e)
   {
	   
   }
  */
   %>   
</body>
</html>