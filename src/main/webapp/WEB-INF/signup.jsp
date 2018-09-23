<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/index.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body  style="background-color: transparent;">
	<div>
		<h3 style="color:Black">Sign Up</h3>
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
</body>
</html>