<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">

    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
.Background_Images
{
	background-size: cover;
	height:400px;
    padding: 5%;
}
</style>
</head>
<body style="margin:0px;padding:0px;background-color:grey;">

<!-- Begining Of Header -->
<header style="background-color:red;width:100%;height:100px;border-radius:0% 0% 50% 50%; padding:0px;" class="container-fluid">
<h1 style="color:white;margin:0px;padding-left:10px;padding-top:5px;">Tutor</h1>
</header>
<!-- Ending Of Header -->

<!-- Begining Of Custom Color -->
<section class="container" style="background-color:white;margin-top:5%;padding:5% 5%;">
<form action="ColorPicker.jsp">
<h4 style="font-weight:bolder;">Custom Color Background</h4>
<center><input type="color" name="colorpick" style="width:20%;height:50px;">
<input type="submit" name="Submit">
</center>
</form>
</section>

<!-- Ending Of Custom Color -->

<!-- Begining of Website Default Images -->
<section class="container" style="margin-top:5%;padding:5% 5%;background-color:white;">
<div style="background: url('img/1510Lteachers.jpg') no-repeat  center center;" class="Background_Images">
    <center><Button class="btn btn-danger" style="padding:10px 25px;	margin-top:20%;">Save</Button></center>
 </div>
 <a>More images</a>
<details >

<div style="margin-top:2%;">

<div class="Background_Images" style="background: url('img/Award.jpg') no-repeat fixed center center;">
<center><Button class="btn btn-danger" style="padding:10px 25px;	margin-top:20%;">Save</Button></center>
</div>

<div class="Background_Images" style="background: url('img/Award.jpg') no-repeat fixed center center;margin-top:2%;">
<center><Button class="btn btn-Success" style="padding:10px 25px;	margin-top:20%;">Save</Button></center>
</div>


</div>


<summary style="outline:none;">
</summary>
</details>
</section>
<!-- Ending of Website Default Images -->
	

<!-- Begining Of Custom Images Option -->

<section>

<div class="container" style="background-color:white;margin-top:5%;padding:5% 5%;margin-bottom:5%;">
<h4 style="font-weight:bolder;">Custom Background Images</h4>
<center>
<FORM ENCTYPE="multipart/form-data" ACTION="uploadFile.jsp" METHOD=POST>
<INPUT NAME="file" TYPE="file" class="btn btn-danger" id="contentType" >
<input type="submit" value="Send File" class="btn btn-default" style="margin-top:10px;">
</form>
</center>
</div>
</section>

<!-- Ending Of Custom Images Option -->
</body>
</html>