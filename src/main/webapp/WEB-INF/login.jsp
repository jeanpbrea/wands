<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body style="background-color: transparent;">
<div class= "container">
	<div class="col" style="background-color:white">
    			<h3 style="color:black" >Login</h3>
   		 		<p><c:out value="${error}" /></p>
   		 		<form method="POST" action="/login" modelAttribute="user">
        			<p>
            			<label type="email" for="email">Email</label>
            			<input type="text" id="email" name="emaillogin"/>
        			</p>
        			<p>
            			<label for="password">Password</label>
            			<input type="password" id="password" name="passwordlogin"/>
        			</p>
        			<input type="submit" value="Login!"/>
    			</form>  
			</div>
		</div>
</body>
</html>