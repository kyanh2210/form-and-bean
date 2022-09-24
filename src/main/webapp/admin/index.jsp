<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
html, body {
  height: 100%;
  margin: 0;
}
.full-height {
  height: 100%;
 
}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style= "background: #1A2034;">
<div class="full-height" style="background-image:url('hinhtp2.jpg');opacity:0.5;border-right: 2px solid  black;float:left;border-bottom: 2px solid  black; width:20%; max-width:250px">
<p class="text-center"style="color:red ;border-bottom:white solid 1px"><b>TEAM</b></p>
<div style="background-color:violet; border-radius:3px; color:white;padding-left:15px;">
Dashboard</div>
<div style="padding-left:15px;color:white">Staff Manager</div>
</div>
<div class="full-height" style="float: left;width:80%">
<div style="position:absolute;right:15px">
<a href=<%=response.encodeUrl("http://localhost:8080/PRJ321x-A1/controller") %> style="color:white">Log out</a>
</div>
<%! String a="";%>
<% 
Cookie[] cook = request.getCookies();
	if(cook!=null){
		for(int i=0;i<cook.length;i++){
			if(cook[i].getName().equals("user")){
				a=cook[i].getValue().replaceAll("((@.*)|[^a-zA-Z])+", " ").trim();
			}
		}
	}
%>

<img alt="hinh" src="nha.jpg" style="width:100%">
<div style="max-width:845px;margin-left:10px">
<div style="color:white;background-color:#802F9F; border-radius:5px; padding-left:5px;margin:5px 15px 0px 15px ">Members of team</div>
<table class="table" style="color:white ;background-color:#20293F">
<thead>
<tr>
<th scope="col"> ID</th>
<th scope="col">Name</th>
<th scope="col">StudentID</th>
<th scope="col">Class</th>
<th scope="col">Mail</th>
</tr>
</thead>
<tbody>
<tr>
 <td>1</td>
 <td>Member 1</td>
 <td>Member Code 1</td>
 <td> Class 1</td>
<td><%= getServletContext().getInitParameter("username") %></td>
 </tr>
</tbody>
</table>
<div style="position:absolute; color:white;">
	<h1>Welcome Back<%=" "+a %></h1>
</div>
</div>
</div>

</body>
</html>