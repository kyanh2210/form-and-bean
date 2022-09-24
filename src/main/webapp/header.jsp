<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="header">
 <h1>My Website</h1>
 <p>Logo should be inserted here</p>
</div>

<div class = "topnav">
<a href="#">Home</a>
<a href="#">Products</a>
<a href="#">About us</a>
<a id= "log"href="#" style = "float:right">Login</a>
</div>
<div id="loginform" style="background-color:#1d2e4a;border-radius:10px;display:none;float:right;width:750px" >
<div  style="float:left;width:50%">
<jsp:include page="login.jsp"></jsp:include>
</div>
<div class="text-center" style="color:white;padding-top:150px; ">
<h1 style="">Welcome Back!</h1>
<p >To keep connected with us<br> please login with your personal <br>info</p>
</div>
</div>
<div style="clear:both;content:"";"></div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

$("#log").click(function(){
	$("#loginform").toggle();
})

</script>
</body>
</html>