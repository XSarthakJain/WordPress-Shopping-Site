<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Insert title here</title>
   <script src="https://apis.google.com/js/platform.js" async defer></script>
   <meta name="google-signin-client_id" content="59461226047-tl1lect0qan71q7inp6an2rg12gnqi91.apps.googleusercontent.com">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
body
{
	background-color:#05368B;
	 color:white;
	 
}
</style>

<body>
   <jsp:declaration>
      int v;
	</jsp:declaration>
<jsp:scriptlet>
 v=0;
</jsp:scriptlet>
<div style="width:100%;height:100vh;margin-top:5%;">
<div class="container" style="">
<center><img  style="color:red;border:2px solid grey;border-radius:50%;padding:20px;background-color:gray;"class="glyphicon glyphicon-log-in" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAgVBMVEX///8zMzMWFhbq6uo3NzcvLy8jIyMdHR0kJCQsLCzt7e0fHx8nJycqKioREREaGhrk5OTT09Ourq5zc3PKysqTk5OHh4dqamq5ublbW1v19fULCwugoKCBgYGoqKh7e3tRUVHc3NxFRUU+Pj5GRkZWVla/v7+Pj49NTU1iYmJtbW26/wy1AAAEbElEQVR4nO3ciXqiMBQF4BpNWIKACIpLUetS2/d/wJGqHdupEhLlks75n+CeL5CNkKcnAAAAAAAAAAAAAAAAAAAAAAAAAABoq6nvd31/Sl3GY/j5aNsLRMQiEfS2o9ynLui+VtkmFAHvnPFAhvtsRV3W3SQbdpHub0q2T6hLu4vEk//GO4WU3P6M6VpeiXfkvAyoSzSzYNfa77Md2Yi6SAOrXlCRr+SuY+pCdeWVDXhuxpS6VD3zUClfKbSyw5kz5YB2RizqBDxEzKkLritVf0RPES0bNWKnZsDDFMeumeqLWi96ydtSF11HJmoHPExvCuqy1cUzjYCdDrPnOZ14Wgn7Q+rCVaX1BoqLRrRlxbis380cee/UpasZ6DZhpzPrUhevZNHXThhk1MWrmOqMFGc96upV5LcX9bdFNszdDB5SSx7T2jPSS3xDXX61WL8nLc2o66+2M3kNDy9i+wf9uWuUULR/JWzU0XQ67pw6QKU3vVn3Wb/9u6db3Unpkdf+9YX2tPuUcEIdoJJhG/L272Vorn4/E7a/Dd/NEnpj6gCVXlU+xlzXf6YOUKkwG/EtGA9Ts1mb3FEHqOTX3c7/ilnwLdFs1saoy1dgNDG1YrfNaPkkbPiOaLQT5VixsT/UH/MtGO9LBjvCUfvHig8b3ck3t2K79GAXaSZ02r+FcbLXa0S+pi5c2UBvXhNadHBoobPA6Nsw2p9NdeY10qrT0RrPqU3PaGletz91bPgm88Wi3uRNtH8X8R/jOhHdN+pydYzVFxnCyoBPT8+qE1TW/u2nK4pQZXLDQ4uOe323WlfvvIl1+z8Z3jKa3V4terNX6hJNxW/sekaPje04I3RbOvnpp6DD++eyNxsOl6iIs5dQfG1JT4T7+W9ov09xMvacSIqSjCQf5r8q3ok/2OVJkuS7lRU7agAAAAAAAPAYUz8epKVB/Msu4YnTJBsu17y8fceRUjrlLTx8vRxmSWrBGa+b/LRY7CPmiMDj3/eiOPcC4bBovyhSO5f8g2LMHcftV95t0ncdpzMu7Np1G2QTGbl1Dg55biQmmR0p/Xwoox/3RytTBpEYtv2GrLhYMmFy0NuT0bZo7T5jt9iErtm/CCXuhvukjS25Gx+GAON4p5DCGbbs3MJ0zh2zvxC+86Je0Z5pQXckzQ7o/4gL8dqOhzVehGa/WFwXsBF9r+MvmNnR9cqMxM/qPHpkvo+MpEe/057JmW5Vku5avmfF+9hMcUbzrT/uPaADvUJsCHrV3dUbLR/BCxp/Ugu9i5L0zRo+A56Z3Zygo9lr+WrdGHgvTbZiThGwyVPEK7NfDPU19ldUr8le9JK3bCag1oV69+E00tv4NC/hkdtEwuxRayUVsolGbG6u9oMmbllKdX9Mu4/w8d8BSB/SRn4UNrxhx1QDN/SsqQbDowbuPumRBmziL0zihA3crIiESIiESIiESIiESIiESIiESHgPMmSUQvnwhF1qD08IAAAAAAAAAAAAAAAAAAAAAAAAAPBf+wM2Xkjybq57twAAAABJRU5ErkJggg==" id="myImg" style=""></center>
<h1 style="text-align:center;">Tutor</h1>
<p style="text-align:center;">Never Satisfied</p>



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


</script>

<center>
   <div class="g-signin2" data-onsuccess="onSignIn" id="myP" style="margin-top:20px;width:250px;background-color:Red;border:2px solid red;"></div>

      <img id=""><br>
      <p id="name"></p>
      <div id="status">
   </div>
  </center> 
   </div>
</div>   
<div id="status">
</div>
   <script type="text/javascript">
  
   function onSignIn(googleUser) {
			 
       var profile = googleUser.getBasicProfile();
       var imagurl=profile.getImageUrl();
       var name=profile.getName();
       var email=profile.getEmail();
       alert(email);
       var a=getUrlParameter("Sub");
      window.location.replace("http://localhost:8082/DOS/Coching/User_Rating.jsp?text="+name+"&values="+email+"&img="+imagurl+"&Sub="+a);
      document.getElementById("myImg").src = imagurl;
      document.getElementById("name").innerHTML = name;
      document.getElementById("myP").style.visibility = "hidden";
      
     // document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp?email='+email+'&name='+name+'/>Continue with Google login</a></p>'
   }
   </script>
  
   <%
   System.out.println("okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");
   %>   
</body>
</html>
 
