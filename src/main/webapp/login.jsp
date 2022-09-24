<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body><div style="background-color:#fcfcfc;border-radius:5px">

<%if(session.getAttribute("error")!=null){
	String a=(String)session.getAttribute("error");
	out.println("<div style='color:red;'>Invalidsyntax</div>");
} %>
<img alt="login" src="avatar-mulher.png"style="height:300px;width:300px;border-radius:50%;display:block;margin-left:auto;margin-right:auto;">
<script type="text/javascript">
function check(){
    var u = document.getElementById("username").value;
    var p = document.getElementById("password").value;
    if(u==""&&p=="") {
    	document.getElementById("checkname").innerHTML="Please enter your Username";
    	document.getElementById("checkpass").innerHTML="Please enter you Password";
        return false;
    }
    if(u==""){
    	document.getElementById("checkname").innerHTML="Please enter your Username";
    	document.getElementById("checkpass").innerHTML="";
        return false;
    }
    if(p=="") {
    	document.getElementById("checkpass").innerHTML="Please enter you Password";
    	document.getElementById("checkname").innerHTML="";
        return false;
    }
    return true;
}
</script>
<%! String a="";
	String b="";
%>
<% 
Cookie[] cook = request.getCookies();
	if(cook!=null){
		for(int i=0;i<cook.length;i++){
			if(cook[i].getName().equals("user")){
				a=cook[i].getValue();
			}
			if(cook[i].getName().equals("pass")){
				b=cook[i].getValue();
			}
		}
	}
%>
 <div class="text-center"><h1>Sign in</h1></div>
<form action = "controller" method = "GET" onsubmit="return check()">
 <div class ="input">
<label for="name"><b>Username</b></label>
<br>
<input id ="username"name ="username"class="in"type ="text"placeholder = "Enter Username" value=<%=a %>><br>
<div style="color:red;font-size:x-small ;" id="checkname"></div>
<label for="pass"><b>Password</b></label><br>
<input id="password"name="password"class="in"type ="password" placeholder="Enter Password" value=<%=b %>><br>
<div style="color:red; font-size:x-small; "id="checkpass"></div>
<input id= "log"style="position: relative;left: 40%;border-radius:5px;width:20%;background-color: #ff4538;"class="in" type="submit"value="Login">
<br>
<input type="checkbox" name= "remember" checked value=1><label for ="remember">Remember me</label>
</div>
</form>
</div>
</body>
</html>