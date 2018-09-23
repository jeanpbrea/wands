<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Wand Creator Login and Registration</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="css/index.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	</head>
	<body style="background-color: transparent;">
	<div class="container">
	<div class="row">
		<h1 style="color:white; font-size:100px; text-align: center; font:georgia;">Welcome to Ollivander's Wand Workshop</h1>
	</div>
		<div class="row">
			<div class="col">
				<h3 style="color:white">Register</h3>
    				<p><form:errors path="user.*"/></p>
    			<form:form  method="POST" action="/registration" modelAttribute="user">
        			<p>
            			<form:label path="name">Name:</form:label>
            			<form:input path="name"/>
        			</p>
        			<p>
            			<form:label path="email">Email:</form:label>
            			<form:input type="email" path="email"/>
        			</p>
        			<p>
            			<form:label path="password">Password:</form:label>
            			<form:password path="password"/>
        				</p>
        			<p>
            			<form:label path="passwordConfirmation">Confirm Password:</form:label>
            			<form:password path="passwordConfirmation"/>
        			</p>
        			<input type="submit" value="Register"/>
    			</form:form>
    		</div>


			<div class="col">
    			<h3 style="color:white" >Login</h3>
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
	</div>
	</body>
</html>